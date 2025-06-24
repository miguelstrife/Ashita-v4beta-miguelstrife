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
    ['Preshot'] = {
        Main = { Name = 'Perun +1', AugPath='A' },
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Amini Caban +2',
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = '"Snapshot"+10' },
        Waist = 'Yemaya Belt',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='D' },
        Feet = 'Meg. Jam. +2',
    },
    ['Midshot'] = {
        Main = { Name = 'Perun +1', AugPath='A' },
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Arcadian Beret +3', AugTrial=5460 },
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Orion Jerkin +3',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='C' },
        Ring1 = 'Dingir Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = '"Store TP"+10', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'K. Kachina Belt +1',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='C' },
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