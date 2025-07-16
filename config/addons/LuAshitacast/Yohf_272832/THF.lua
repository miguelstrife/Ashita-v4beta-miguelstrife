local profile = {};
toolset = gFunc.LoadFile('common\\toolset.lua'); -- Load the my toolset module
local sets = {
};

local Settings = {
    UseMelee = false,
    UseExpRings = false
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    toolset.ShowSettings(Settings);
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;