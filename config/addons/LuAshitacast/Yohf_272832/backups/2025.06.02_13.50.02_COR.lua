local profile = {};
local sets = {
    ['CorTp'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Iskur Gorget',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Reiki Yotai',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+4', [2] = '"Dbl.Atk."+1', [3] = 'DEX+2' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
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