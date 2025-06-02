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
    ['Tp'] = {
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
    ['Refresh'] = {
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
    ['Sublimation'] = {
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
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    UseRefreshIdle = true
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    if (args[1] == 'idlerefresh') then
        if (Settings.UseRefreshIdle == true) then
            Settings.UseRefreshIdle = false;
        else
            Settings.UseRefreshIdle = true;
        end
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    else 
        if (Settings.UseRefreshIdle == true) then
            gFunc.EquipSet(sets.Refresh);
        else
            gFunc.EquipSet(sets.Idle);
        end
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if string.match(action.Name, 'Sublimation') then
        gFuncEquipSet(sets.Sublimation);
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
end

return profile;