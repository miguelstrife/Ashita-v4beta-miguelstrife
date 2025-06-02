local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Scholar\'s M.board',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Scholar\'s Gown',
        Hands = 'Scholar\'s Bracers',
        Ring1 = 'Aquilo\'s Ring',
        Ring2 = 'Aquilo\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Argute Belt',
        Legs = 'Scholar\'s Pants',
        Feet = 'Scholar\'s Loafers',
    },
    ['Resting'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Ixion Cloak',
        Hands = 'Scholar\'s Bracers',
        Ring1 = 'Aquilo\'s Ring',
        Ring2 = 'Aquilo\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Argute Belt',
        Legs = 'Scholar\'s Pants',
        Feet = 'Scholar\'s Loafers',
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