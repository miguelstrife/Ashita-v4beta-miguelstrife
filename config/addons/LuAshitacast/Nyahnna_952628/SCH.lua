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
        Feet = 'Herald\'s Gaiters',
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
        Feet = 'Herald\'s Gaiters',
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
    ['SchLightArts'] = {
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
        Back = 'Dew Silk Cape',
        Waist = 'Argute Belt',
        Legs = 'Scholar\'s Pants',
        Feet = 'Scholar\'s Loafers',
    },
    ['SchDarkArts'] = {
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
    ['SpeedWindurst'] = {
        Body = 'Federation Aketon',
        Feet = 'Herald\'s Gaiters',
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
    local environment = gData.GetEnvironment();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (string.match(environment.Area, 'Windurst')) then
        gFunc.EquipSet(sets.SpeedWindurst)
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
    if (action.Name == 'Sublimation') then
        gFunc.EquipSet(sets.Sublimation);
    elseif (action.Name == 'Light Arts') then
        gFunc.EquipSet(sets.SchLightArts);
    elseif (action.Name == 'Dark Arts') then
        gFunc.EquipSet(sets.SchDarkArts);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    -- local action = gData.GetAction();
    --  gData.GetBuffCount(matchBuff)
    local spell = gData.GetAction();
    if (gData.GetBuffCount('Light Arts') > 0) or (gData.GetBuffCount('Addendum: Light') > 0)then
        gFunc.EquipSet(sets.SchLightArts);
    elseif (gData.GetBuffCount('Dark Arts') > 0) or (gData.GetBuffCount('Addendum: Black') > 0) then
        gFunc.EquipSet(sets.SchDarkArts);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;