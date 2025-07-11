--[[
* statustimers - Copyright (c) 2022 Heals
*
* This file is part of statustimers for Ashita.
*
* statustimers is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* statustimers is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with statustimers.  If not, see <https://www.gnu.org/licenses/>.
--]]

-------------------------------------------------------------------------------
-- imports
-------------------------------------------------------------------------------
local d3d8 = require('d3d8');
local ffi = require('ffi');
local compat = require('compat');
local helpers = require('helpers');
-------------------------------------------------------------------------------
-- local state
-------------------------------------------------------------------------------
local d3d8_device = d3d8.get_device();
local game_menu_ptr = nil;
local event_system_ptr = nil;
local interface_hidden_ptr = nil;
-------------------------------------------------------------------------------
-- local constants
-------------------------------------------------------------------------------
local icon_cache = T{
};

-- this table implements overrides for certain icons to handle
-- local buffs_table = nil;
local id_overrides = T{
};

local MENU_NAME_BUFF     = 'menu    buff    ';
local MENU_NAME_MAP      = 'menu    map';
local MENU_NAME_LOGMAXED = 'menu    fulllog';

-------------------------------------------------------------------------------
-- local functions
-------------------------------------------------------------------------------

-- load a dummy icon placeholder for a missing status and return a texture pointer
---@return ffi.cdata* texture_ptr the loaded texture object or nil on error
local function load_dummy_icon()
    local icon_path = ('%s\\addons\\%s\\ladybug.png'):fmt(AshitaCore:GetInstallPath(), 'statustimers');
    local dx_texture_ptr = ffi.new('IDirect3DTexture8*[1]');

    if (ffi.C.D3DXCreateTextureFromFileA(d3d8_device, icon_path, dx_texture_ptr) == ffi.C.S_OK) then
        return d3d8.gc_safe_release(ffi.cast('IDirect3DTexture8*', dx_texture_ptr[0]));
    end

    return nil;
end

-- load a status icon from the games own resources and return a texture pointer
---@param status_id number the status id to load the icon for
---@return ffi.cdata* texture_ptr the loaded texture object or nil on error
local function load_status_icon_from_resource(status_id)
    if (status_id == nil or status_id < 0 or status_id > 0x3FF) then
        print(('attempting to display status effect "%d" which is out of range 0...1023 - crashing.'):fmt(status_id));
        return nil;
    end

    local id_key = ("_%d"):fmt(status_id);
    if (id_overrides:haskey(id_key)) then
        status_id = id_overrides[id_key];
    end

    local icon = AshitaCore:GetResourceManager():GetStatusIconByIndex(status_id);
    if (icon ~= nil) then
        local dx_texture_ptr = ffi.new('IDirect3DTexture8*[1]');
        if (ffi.C.D3DXCreateTextureFromFileInMemoryEx(d3d8_device, icon.Bitmap, compat.icon_size(icon), 0xFFFFFFFF, 0xFFFFFFFF, 1, 0, ffi.C.D3DFMT_A8R8G8B8, ffi.C.D3DPOOL_MANAGED, ffi.C.D3DX_DEFAULT, ffi.C.D3DX_DEFAULT, 0xFF000000, nil, nil, dx_texture_ptr) == ffi.C.S_OK) then
            return d3d8.gc_safe_release(ffi.cast('IDirect3DTexture8*', dx_texture_ptr[0]));
        end
    end
    return load_dummy_icon();
end

-- load a status icon from a theme pack and return a texture pointer
---@param theme string path to the theme's root directory
---@param status_id number the status id to load the icon for
---@return ffi.cdata* texture_ptr the loaded texture object or nil on error
local function load_status_icon_from_theme(theme, status_id)
    if (status_id == nil or status_id < 0 or status_id > 0x3FF) then
        print(('attempting to display status effect "%d" which is out of range 0...1023 - crashing.'):fmt(status_id));
        return nil;
    end

    local icon_path = nil;
    local supports_alpha = false;
    T{'.png', '.jpg', '.jpeg', '.bmp'}:forieach(function(ext, _)
        if (icon_path ~= nil) then
            return;
        end

        supports_alpha = ext == '.png';
        icon_path = ('%s\\addons\\%s\\themes\\%s\\%d'):append(ext):fmt(AshitaCore:GetInstallPath(), 'statustimers', theme, status_id);
        local handle = io.open(icon_path, 'r');
        if (handle ~= nil) then
            handle.close();
        else
            icon_path = nil;
        end
    end);

    if (icon_path == nil) then
        -- fallback to internal icon resources
        return load_status_icon_from_resource(status_id);
    end

    local dx_texture_ptr = ffi.new('IDirect3DTexture8*[1]');
    if (supports_alpha) then
        -- use the native transaparency
        if (ffi.C.D3DXCreateTextureFromFileA(d3d8_device, icon_path, dx_texture_ptr) == ffi.C.S_OK) then
            return d3d8.gc_safe_release(ffi.cast('IDirect3DTexture8*', dx_texture_ptr[0]));
        end
    else
        -- use black as colour-key for transparency
        if (ffi.C.D3DXCreateTextureFromFileExA(d3d8_device, icon_path, 0xFFFFFFFF, 0xFFFFFFFF, 1, 0, ffi.C.D3DFMT_A8R8G8B8, ffi.C.D3DPOOL_MANAGED, ffi.C.D3DX_DEFAULT, ffi.C.D3DX_DEFAULT, 0xFF000000, nil, nil, dx_texture_ptr) == ffi.C.S_OK) then
            return d3d8.gc_safe_release(ffi.cast('IDirect3DTexture8*', dx_texture_ptr[0]));
        end
    end

    return load_dummy_icon();
end
-------------------------------------------------------------------------------
-- exported functions
-------------------------------------------------------------------------------
local module = {};

-- return an image pointer for a status_id for use with imgui.Image
---@param status_id number the status id number of the requested icon
---@return number texture_ptr_id a number representing the texture_ptr or nil
module.get_icon_image = function(status_id)
    if (not icon_cache:haskey(status_id)) then
        local tex_ptr = load_status_icon_from_resource(status_id);
        if (tex_ptr == nil) then
            return nil;
        end
        icon_cache[status_id] = tex_ptr;
    end
    return tonumber(ffi.cast("uint32_t", icon_cache[status_id]));
end

-- return an image pointer for a status_id for use with imgui.Image
---@param theme string the name of the theme directory
---@param status_id number the status id number of the requested icon
---@return number texture_ptr_id a number representing the texture_ptr or nil
module.get_icon_from_theme = function(theme, status_id)
    if (not icon_cache:haskey(status_id)) then
        local tex_ptr = load_status_icon_from_theme(theme, status_id);
        if (tex_ptr == nil) then
            return nil;
        end
        icon_cache[status_id] = tex_ptr;
    end
    return tonumber(ffi.cast("uint32_t", icon_cache[status_id]));
end

-- return a list of all sub directories of statustimers\themes\
---@return table theme_paths
module.get_theme_paths = function()
    local path = ('%s\\addons\\%s\\themes\\'):fmt(AshitaCore:GetInstallPath(), 'statustimers');
    local directories = ashita.fs.get_directory(path);
    if (directories ~= nil) then
        directories[#directories+1] = '-default-';
        return directories;
    end
    return T{'-default-'};
end

-- return index of the currently active theme in module.get_theme_paths()
---@return number theme_index
module.get_theme_index = function(theme)
    local paths = module.get_theme_paths();
    for i = 1,#paths,1 do
        if (paths[i] == theme) then
            return i;
        end
    end
    return nil;
end

-- reset the icon cache and release all resources
module.clear_cache = function()
    icon_cache = T{};
end;

-- check if the given status_id can be cancelled by the user
---@param status_id number the status id to check
---@return boolean can_cancel true if the status can be cancelled
module.status_can_be_cancelled = function(status_id)
    if (status_id ~= nil and status_id > 0 and status_id < 0x400 and status_id ~= 255) then
        return AshitaCore:GetResourceManager():GetStatusIconByIndex(status_id).CanCancel ~= 0;
    end
    return false;
end

-- check if the given status_id forces the timer to be hidden
---@param status_id number the status id to check
---@return boolean force_hide true if the timer should be hidden
module.status_timer_hidden = function(status_id)
    if (status_id ~= nil and status_id > 0 and status_id < 0x400 and status_id ~= 255) then
        return AshitaCore:GetResourceManager():GetStatusIconByIndex(status_id).HideTimer ~= 0;
    end
    return true;
end

-- check if the given status_id has visual aid enabled
---@param status_id number the status id to check
---@return boolean has_visual_aid true if the id should render the visual aid swatch
module.status_has_visual_aid = function(status_id, settings)
    if (not settings.visual_aid.enabled) then
        return false;
    end

    local included = settings.visual_aid.filters.ids:hasvalue(status_id);
    local whitelist = settings.visual_aid.filters.mode == 'whitelist';

    if (whitelist and included) then
        -- whitelist mode and in the list
        return true;
    elseif (not whitelist and not included) then
        -- blacklist mode and not in the list
        return true;
    end
    -- random bonkers event and not sure..
    return false;
end

-- return the name for a status index from the resource table
---@param status_id number the status id to look up
---@return string
module.get_status_name = function(status_id)
    return AshitaCore:GetResourceManager():GetString(compat.buffs_table(), status_id);
end

-- return the menu target index.
---@return number|nil the index of the menu target or nil
module.get_menu_target_index = function()
    local ptr = game_menu_ptr;
    if (ptr == 0) then
        return nil;
    end

    ptr = ashita.memory.read_uint32(ptr);
    ptr = ashita.memory.read_uint32(ptr);

    return ashita.memory.read_uint32(ptr + 0x4C);
end

-- return the menu name.
---@return string|nil the name of the current menu or nil
module.get_menu_name = function()
    local ptr = game_menu_ptr;
    if (ptr == 0) then
        return nil;
    end

    ptr = ashita.memory.read_uint32(ptr);
    ptr = ashita.memory.read_uint32(ptr);
    if (ptr == 0) then
        return nil;
    end

    local menu_header_ptr = ptr + 4;
    local menu_header = ashita.memory.read_uint32(menu_header_ptr);

    local menu_name_ptr = menu_header + 0x46;
    local menu_name = ashita.memory.read_string(menu_name_ptr, 16);
    return string.gsub(menu_name, '\x00', '');
end

-- shorthand to check if the current menu is MENU_NAME_BUFF
--@return boolean
module.get_menu_is_buff_menu = function()
    return module.get_menu_name() == MENU_NAME_BUFF;
end

-- shorthand to check if the current menu is the game map
--@return boolean
module.get_menu_is_map = function()
    return string.match(module.get_menu_name() or '', MENU_NAME_MAP);
end 

-- shorthand to check if the log window is maximized
--@return boolean
module.get_log_maximized = function()
    return string.match(module.get_menu_name() or '', MENU_NAME_LOGMAXED);
end

--- return a boolean indicating the current state of the eventy system
--@return boolean
module.get_event_system_active = function()
    if (event_system_ptr == 0) then
        return false;
    end
    local ptr = ashita.memory.read_uint32(event_system_ptr + 1);
    if (ptr == 0) then
        return false;
    end
    return (ashita.memory.read_uint8(ptr) == 1);
end

--- return the state of the native game UI
--@return boolean
module.get_interface_hidden = function()
    if (interface_hidden_ptr == 0) then
        return false;
    end
    local ptr = ashita.memory.read_uint32(interface_hidden_ptr + 10);
    if (ptr == 0) then
        return false;
    end
    return (ashita.memory.read_uint8(ptr + 0xB4) == 1);
end

helpers.register_init('resources_init', function()
    game_menu_ptr = ashita.memory.find('FFXiMain.dll', 0, "8B480C85C974??8B510885D274??3B05", 16, 0);
    event_system_ptr = ashita.memory.find('FFXiMain.dll', 0, "A0????????84C0741AA1????????85C0741166A1????????663B05????????0F94C0C3", 0, 0);
    interface_hidden_ptr = ashita.memory.find('FFXiMain.dll', 0, "8B4424046A016A0050B9????????E8????????F6D81BC040C3", 0, 0);
    
    if (game_menu_ptr == 0 or event_system_ptr == 0 or interface_hidden_ptr == 0) then
        return false;
    end
    return true;
end);

helpers.register_cleanup('resources_cleanup', function()
    return true;
end);

return module;
