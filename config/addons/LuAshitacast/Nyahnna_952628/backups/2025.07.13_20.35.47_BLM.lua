local profile = {};
toolset = gFunc.LoadFile('common\\toolset.lua'); -- Load the my toolset module
local sets = {
    ['Idle'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Nashira Turban',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Nashira Manteel',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Aquilo\'s Ring',
        Ring2 = 'Balrahn\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Tarutaru Sash',
        Legs = 'Nashira Seraweels',
        Feet = 'Herald\'s Gaiters',
    },
    ['RefreshIdle'] = {
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
        Head = 'Teal Chapeau',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Teal Saio',
        Hands = 'Teal Cuffs',
        Ring1 = 'Aquilo\'s Ring',
        Ring2 = 'Balrahn\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Tarutaru Sash',
        Legs = 'Teal Slops',
        Feet = 'Teal Pigaches',
    },
    ['Resting'] = {
        Main = 'Iridal Staff',
        Sub = 'Vivid Strap',
        Head = 'Nashira Turban',
        Neck = 'Artemis\'s Medal',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Nashira Manteel',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Windurstian Ring',
        Ring2 = 'Balrahn\'s Ring',
        Back = 'Hecate\'s Cape',
        Waist = 'Tarutaru Sash',
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows',
    },
    ['SpeedWindurst'] = {
        Body = 'Federation Aketon',
        Feet = 'Herald\'s Gaiters',
    },
    ['ExpRings'] = {
        Ring1 = 'Echad Ring',
        Ring2 = 'Emperor Band',
    },
};

local Settings = {
    RefreshIdle = false,
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
    -- Arguments should be EXACTLY equal to Settings keys. (e.g. UseMelee, UseExpRings)
    local argument = args[1];
    if(Settings[argument] ~= nil) then
        toolset.CommandHandlerHelper(Settings, argument);
    elseif(argument == 'ShowSettings') then
        toolset.ShowSettings(Settings);
    end   
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Engaged);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (string.match(environment.Area, 'Windurst ') or string.match(environment.Area, ' Windurst') and not string.match(environment.Area, '[S]')) then
        gFunc.EquipSet(sets.SpeedWindurst)
    elseif (Settings.RefreshIdle == true) then
        gFunc.EquipSet(sets.RefreshIdle);
    elseif (Settings.ExpRings == true) then
        gFunc.EquipSet(sets.ExpRings);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.Engaged);
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;