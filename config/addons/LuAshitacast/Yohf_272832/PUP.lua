local profile = {};
local sets = {
    ['Idle'] = {
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
    ['PupWS'] = {
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
    ['PupPetTp'] = {
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
    ['Speed'] = {
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
    ['PupMasterTP'] = {
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
    ['PupRegen'] = {
        Ammo = 'Automat. Oil +3',
        Head = 'Heyoka Cap +1',
        Neck = 'Empath Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Tali\'ah Manteel +2',
        Hands = { Name = 'Ryuo Tekko', AugPath='D' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: "Regen"+5', [2] = 'Pet: R.Acc.+20', [3] = 'Pet: R.Atk.+20', [4] = 'Pet: Haste+10', [5] = 'Accuracy+20', [6] = 'Attack+20', [7] = 'Pet: Acc.+20', [8] = 'Pet: Atk.+20' } },
        Waist = 'Moonbow Belt',
        Legs = 'Heyoka Subligar +1',
        Feet = 'Hermes\' Sandals',
    },
    ['PupRepair'] = {
        Main = 'Nibiru Sainti',
        Ammo = 'Automat. Oil +3',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    UsePetTp = false,
    UseRegen = false
};

local ResetVariables = function()
    Settings.UsePetTp = false;
    Settings.UseRegen = false;
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    local argument = args[1];
    if (argument == 'usePetTp') then
        if (Settings.UsePetTp == true) then
            Settings.UsePetTp = false;
        else
            ResetVariables();
            Settings.UsePetTp = true;
        end
    elseif(argument == 'useRegen') then
        if (Settings.UseRegen == true) then
            Settings.UseRegen = false;
        else
            ResetVariables();
            Settings.UseRegen = true;
        end
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();
    local pet = gData.GetPet();
    
    if(Settings.UseRegen == true and player.Status ~= 'Engaged') then
        gFunc.EquipSet(sets.PupRegen);
    elseif(Settings.UsePetTp == true and pet.Status == 'Engaged') then
        gFunc.EquipSet(sets.PupPetTp);
    elseif (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.PupMasterTP);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Type == 'Ability') then
        if (action.Name == 'Repair') then
            gFunc.EquipSet(sets.PupRepair);
        elseif (action.Name == 'Overdrive') then
            gFunc.EquipSet(sets.PupPetTp);
        end
    end
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
    local action = gData.GetAction();
    if (action.ActionType == 'Weaponskill') then
        gFunc.EquipSet(sets.PupWS);
    end
end

return profile;