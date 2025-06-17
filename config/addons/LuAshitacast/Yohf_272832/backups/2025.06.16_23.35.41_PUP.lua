local profile = {};
local sets = {
    ['PupWS'] = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Range = 'Animator P +1',
        Ammo = 'Automat. Oil +3',
        Head = 'Heyoka Cap +1',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ishvara Earring',
        Body = 'He. Harness +1',
        Hands = { Name = 'Ryuo Tekko', AugPath='D' },
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Apate Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: "Regen"+5', [2] = 'Pet: R.Acc.+20', [3] = 'Pet: R.Atk.+20', [4] = 'Pet: Haste+10', [5] = 'Accuracy+20', [6] = 'Attack+20', [7] = 'Pet: Acc.+20', [8] = 'Pet: Atk.+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Ryuo Sune-Ate +1', AugPath='D' },
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