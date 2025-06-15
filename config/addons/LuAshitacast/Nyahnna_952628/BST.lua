local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Double Axe',
        Sub = 'Nadziak',
        Head = 'Monster Helm',
        Neck = 'Beast Whistle',
        Ear1 = 'Bone Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Scorpion Harness',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Warp Ring',
        Legs = 'Beast Trousers',
        Feet = 'Beast Gaiters',
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