local profile = {};
local sets = {
    ['Idle'] = {
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