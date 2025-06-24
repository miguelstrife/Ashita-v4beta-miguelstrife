local profile = {};
local sets = {
    ['Idle'] = {
        Main = { Name = 'Perun +1', AugPath='A' },
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = 'Malignance Chapeau',
        Neck = 'Warder\'s Charm',
        Ear1 = 'Odnowa Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuirie +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Fortified Ring',
        Ring2 = 'Warden\'s Ring',
        Back = 'Archon Cape',
        Waist = 'K. Kachina Belt +1',
        Legs = { Name = 'Carmine Cuisses +1', AugPath='D' },
        Feet = 'Malignance Boots',
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