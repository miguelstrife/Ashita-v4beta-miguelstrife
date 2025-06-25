local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Nashira Turban',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Nashira Manteel',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Windurstian Ring',
        Ring2 = 'Balrahn\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Tarutaru Sash',
        Legs = 'Nashira Seraweels',
        Feet = 'Herald\'s Gaiters',
    },
    ['RefreshIdle'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Ixion Cloak',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Windurstian Ring',
        Ring2 = 'Balrahn\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Tarutaru Sash',
        Legs = 'Nashira Seraweels',
        Feet = 'Herald\'s Gaiters',
    },
    ['Engaged'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Nashira Turban',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Nashira Manteel',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Windurstian Ring',
        Ring2 = 'Balrahn\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Tarutaru Sash',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows',
    },
    ['Resting'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Nashira Turban',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Nashira Manteel',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Windurstian Ring',
        Ring2 = 'Balrahn\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Tarutaru Sash',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows',
    },
    ['SpeedWindurst'] = {
        Body = 'Federation Aketon',
        Feet = 'Herald\'s Gaiters',
    },
    ['ExpRings'] = {
        Ring1 = 'Echad Ring',
        Ring2 = 'Emperor Band',
    },
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

local Settings = {
    RefreshIdle = false,
    ExpRings = false
};

local ResetVariables = function()
    for key, value in pairs(Settings) do
        Settings[key] = false;
    end
end

local SendMessageToChatBoxHelper = function(message)
    AshitaCore:GetChatManager():QueueCommand(1, '/echo ' .. message);
end

local CommandHandlerHelper = function(table, key)
    local property = table[key];
    if (property == true) then
        AshitaCore:GetChatManager():QueueCommand(1, '/echo ===== [' .. key .. '] is now disabled. =====');
        table[key] = false;
    else
        -- This is to have only one set triggered at a time.
        ResetVariables();
        table[key] = true;
        AshitaCore:GetChatManager():QueueCommand(1, '/echo ===== [' .. key .. '] is now enabled. =====');
    end
end

local CompareStringsIgnoreCase = function(str1, str2)
    return str1:lower() == str2:lower();
end

local ShowSettings = function()
    local message = '===== LuAshitaCast Settings =====\n';
    for key, value in pairs(Settings) do
        message = message .. key .. ': ' .. tostring(value) .. '\n';
    end
    SendMessageToChatBoxHelper(message);
end

profile.HandleCommand = function(args)
    -- Arguments should be EXACTLY equal to Settings keys. (e.g. UseMelee, UseExpRings)
    local argument = args[1];
    if(Settings[argument] ~= nil) then
        CommandHandlerHelper(Settings, argument);
    elseif(argument == 'ShowSettings') then
        ShowSettings();
    end   
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Engaged);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (string.match(environment.Area, 'Windurst ') and not string.match(environment.Area, '[S]')) then
        gFunc.EquipSet(sets.SpeedWindurst)
    else if (Settings.UseRefreshIdle == true) then
            gFunc.EquipSet(sets.Refresh);
        elseif (Settings.UseExpRings == true) then
            gFunc.EquipSet(sets.ExpRings);
        else
            gFunc.EquipSet(sets.Idle);
        end
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.Engaged);
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;