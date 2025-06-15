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
        Ear2 = 'Magnetic Earring',
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
        Head = 'Scholar\'s M.board',
        Body = 'Argute Gown',       
    },
    ['SchLightArts'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Argute M.board',
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
        Head = 'Argute M.board',
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
    ['ExpRings'] = {
        Ring1 = 'Echad Ring',
        Ring2 = 'Emperor Band',
    },
    ['Adoulin119'] = {
        Main = 'Homestead Staff',
        Sub = 'Vivid Strap',
        Head = 'Weath. Corona +1',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Weather. Robe +1',
        Hands = 'Weath. Cuffs +1',
        Ring1 = 'Aquilo\'s Ring',
        Ring2 = 'Aquilo\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Argute Belt',
        Legs = 'Weath. Pants +1',
        Feet = 'Weath. Souliers +1',
    },
    ['Cure'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Weath. Corona +1',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Weather. Robe +1',
        Hands = 'Weath. Cuffs +1',
        Ring1 = 'Aquilo\'s Ring',
        Ring2 = 'Aquilo\'s Ring',
        Back = 'Dew Silk Cape',
        Waist = 'Argute Belt',
        Legs = 'Scholar\'s Pants',
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
    local argument = args[1];
    if (argument == 'idlerefresh') then
        if (Settings.UseRefreshIdle == true) then
            Settings.UseRefreshIdle = false;
        else
            Settings.UseRefreshIdle = true;
            Settings.UseExpRings = false;
        end
    elseif (argument == 'exprings') then
        if (Settings.UseExpRings == true) then
            Settings.UseExpRings = false;
        else
            Settings.UseExpRings = true;
            Settings.UseRefreshIdle = false;
        end
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Adoulin119);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (string.match(environment.Area, 'Windurst ')) then
        gFunc.EquipSet(sets.SpeedWindurst)
    elseif (gData.GetBuffCount('Sublimation: Activated') > 0) then
        gFunc.EquipSet(sets.Sublimation);
    else 
        if (Settings.UseRefreshIdle == true) then
            gFunc.EquipSet(sets.Refresh);
        elseif (Settings.UseExpRings == true) then
            gFunc.EquipSet(sets.ExpRings);
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
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
    elseif (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Dark);
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