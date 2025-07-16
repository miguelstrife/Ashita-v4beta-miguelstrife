local profile = {};
toolset = gFunc.LoadFile('common\\toolset.lua'); -- Load the my toolset module
local sets = {
    ['Idle'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Happo Shuriken',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = { Name = 'Ninja Nodowa +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Ken. Samue +1',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+30', [4] = 'DEX+20' } },
        Waist = 'Reiki Yotai',
        Legs = 'Ken. Hakama +1',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
    ['NinTp'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Happo Shuriken',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = { Name = 'Ninja Nodowa +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Ken. Samue +1',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+30', [4] = 'DEX+20' } },
        Waist = 'Reiki Yotai',
        Legs = 'Ken. Hakama +1',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
    ['Metsu'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Cheruski Needle',
        Head = 'Ken. Jinpachi +1',
        Neck = { Name = 'Ninja Nodowa +2', AugPath='A' },
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ishvara Earring',
        Body = 'Ken. Samue +1',
        Hands = 'Ken. Tekko +1',
        Ring1 = 'Apate Ring',
        Ring2 = 'Karieyh Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+30', [4] = 'DEX+20' } },
        Waist = 'Windbuffet Belt +1',
        Legs = 'Jokushu Haidate',
        Feet = { Name = 'Ryuo Sune-Ate +1', AugPath='D' },
    },
    ['MAB'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Seething Bomblet',
        Head = { Name = 'Herculean Helm', Augment = { [1] = 'STR+14', [2] = 'Mag. Acc.+1', [3] = '"Mag. Atk. Bns."+22', [4] = 'Enmity-3' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = 'Ken. Samue +1',
        Hands = 'Ken. Tekko +1',
        Ring1 = 'Arvina Ringlet +1',
        Ring2 = 'Karieyh Ring',
        Back = 'Yokaze Mantle',
        Waist = 'Eschan Stone',
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Mag. Atk. Bns."+17', [2] = 'Mag. Acc.+17', [3] = 'Weapon skill damage +2%', [4] = 'Accuracy+3', [5] = 'Attack+3', [6] = 'Pet: Mag. Acc.+19' } },
    },
    ['MABDark'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Seething Bomblet',
        Head = 'Pixie Hairpin +1',
        Neck = 'Fotia Gorget',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = 'Ken. Samue +1',
        Hands = 'Ken. Tekko +1',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Archon Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+30', [4] = 'DEX+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Mag. Atk. Bns."+17', [2] = 'Mag. Acc.+17', [3] = 'Weapon skill damage +2%', [4] = 'Accuracy+3', [5] = 'Attack+3', [6] = 'Pet: Mag. Acc.+19' } },
    },
    ['NinEva'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Seething Bomblet',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = { Name = 'Ninja Nodowa +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Emet Harness +1',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = 'Yokaze Mantle',
        Waist = 'Windbuffet Belt +1',
        Legs = 'Mummu Kecks +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
    ['Shun'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Cheruski Needle',
        Head = 'Ken. Jinpachi +1',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ishvara Earring',
        Body = 'Ken. Samue +1',
        Hands = 'Ken. Tekko +1',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+30', [4] = 'DEX+20' } },
        Waist = 'Windbuffet Belt +1',
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
    ['NinFastCast'] = {
        Main = { Name = 'Kikoku', AugPath='A' },
        Sub = 'Yagyu Darkblade',
        Ammo = 'Sapience Orb',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Magoraga Beads',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Ken. Samue +1',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Lebeche Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+30', [4] = 'DEX+20' } },
        Waist = 'Swift Belt',
        Legs = 'Jokushu Haidate',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
};

local Settings = {
    ExpRings = false
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
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.NinTp);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.NinFastCast);
end

profile.HandleMidcast = function()
    gFunc.EquipSet(sets.NinFastCast);
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.Name == 'Blade: Metsu') then
        gFunc.EquipSet(sets.Metsu);
    elseif (action.Name == 'Blade: Shun') then
        gFunc.EquipSet(sets.Shun);
    elseif (action.Name == 'Blade: Hi') then
        gFunc.EquipSet(sets.MAB);
    elseif (action.Name == 'Blade: Ku') then
        gFunc.EquipSet(sets.MABDark);
    else
        gFunc.EquipSet(sets.NinTp);
    end
end

return profile;