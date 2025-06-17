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
    ['PupPet'] = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Range = 'Animator P +1',
        Ammo = 'Automat. Oil +3',
        Head = 'Heyoka Cap +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Rimeice Earring',
        Body = { Name = 'Pitre Tobe +1', AugTrial=5316 },
        Hands = 'Tali\'ah Gages +2',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: "Regen"+5', [2] = 'Pet: R.Acc.+20', [3] = 'Pet: R.Atk.+20', [4] = 'Pet: Haste+10', [5] = 'Accuracy+20', [6] = 'Attack+20', [7] = 'Pet: Acc.+20', [8] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash +1',
        Legs = 'Heyoka Subligar +1',
        Feet = { Name = 'Naga Kyahan', AugPath='A' },
    },
    ['Sped'] = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Range = 'Animator P +1',
        Ammo = 'Automat. Oil +3',
        Head = 'Heyoka Cap +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Rimeice Earring',
        Body = { Name = 'Pitre Tobe +1', AugTrial=5316 },
        Hands = 'Tali\'ah Gages +2',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: "Regen"+5', [2] = 'Pet: R.Acc.+20', [3] = 'Pet: R.Atk.+20', [4] = 'Pet: Haste+10', [5] = 'Accuracy+20', [6] = 'Attack+20', [7] = 'Pet: Acc.+20', [8] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash +1',
        Legs = 'Heyoka Subligar +1',
        Feet = 'Hermes\' Sandals',
    },
    ['Speed'] = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Range = 'Animator P +1',
        Ammo = 'Automat. Oil +3',
        Head = 'Heyoka Cap +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Rimeice Earring',
        Body = { Name = 'Pitre Tobe +1', AugTrial=5316 },
        Hands = 'Tali\'ah Gages +2',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: "Regen"+5', [2] = 'Pet: R.Acc.+20', [3] = 'Pet: R.Atk.+20', [4] = 'Pet: Haste+10', [5] = 'Accuracy+20', [6] = 'Attack+20', [7] = 'Pet: Acc.+20', [8] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash +1',
        Legs = 'Heyoka Subligar +1',
        Feet = 'Hermes\' Sandals',
    },
    ['PupTP'] = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Range = 'Animator P +1',
        Ammo = 'Automat. Oil +3',
        Head = 'Heyoka Cap +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Tali\'ah Manteel +2',
        Hands = { Name = 'Ryuo Tekko', AugPath='D' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: "Regen"+5', [2] = 'Pet: R.Acc.+20', [3] = 'Pet: R.Atk.+20', [4] = 'Pet: Haste+10', [5] = 'Accuracy+20', [6] = 'Attack+20', [7] = 'Pet: Acc.+20', [8] = 'Pet: Atk.+20' } },
        Waist = 'Moonbow Belt',
        Legs = 'Heyoka Subligar +1',
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