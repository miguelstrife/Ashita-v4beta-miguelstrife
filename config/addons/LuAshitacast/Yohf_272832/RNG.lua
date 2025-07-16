local profile = {};
toolset = gFunc.LoadFile('common\\toolset.lua'); -- Load the my toolset module
local sets = {
    ['Idle'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Malignance Chapeau',
        Neck = 'Warder\'s Charm',
        Ear1 = 'Odnowa Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuirie +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Fortified Ring',
        Ring2 = 'Warden\'s Ring',
        Back = 'Archon Cape',
        Waist = 'K. Kachina Belt +1',
        Legs = { Name = 'Carmine Cuisses +1', AugPath='D' },
        Feet = 'Malignance Boots',
    },
    ['Preshot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Amini Caban +2',
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = '"Snapshot"+10' },
        Waist = 'Yemaya Belt',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='D' },
        Feet = 'Meg. Jam. +2',
    },
    ['Midshot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = { Name = 'Arcadian Beret +3', AugTrial=5460 },
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Orion Jerkin +3',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='C' },
        Ring1 = 'Dingir Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = '"Store TP"+10', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'K. Kachina Belt +1',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='C' },
        Feet = 'Malignance Boots',
    },
    ['Melee'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Iskur Gorget',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = 'Blithe Mantle',
        Waist = 'Windbuffet Belt +1',
        Legs = { Name = 'Carmine Cuisses +1', AugPath='D' },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
    ['DoubleShot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = { Name = 'Arcadian Beret +3', AugTrial=5460 },
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Dedition Earring',
        Body = { Name = 'Arc. Jerkin +3', AugTrial=5482 },
        Hands = 'Oshosi Gloves +1',
        Ring1 = 'Dingir Ring',
        Ring2 = { Name = 'Cacoethic Ring +1', AugPath='A' },
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = '"Store TP"+10', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'K. Kachina Belt +1',
        Legs = 'Oshosi Trousers',
        Feet = 'Oshosi Leggings',
    },
    ['BarrageSet'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = { Name = 'Arcadian Beret +3', AugTrial=5460 },
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Arc. Jerkin +3', AugTrial=5482 },
        Hands = 'Orion Bracers +2',
        Ring1 = 'Dingir Ring',
        Ring2 = { Name = 'Cacoethic Ring +1', AugPath='A' },
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = '"Store TP"+10', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'K. Kachina Belt +1',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='C' },
        Feet = 'Orion Socks +2',
    },
    ['Sharpshot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = { Name = 'Arcadian Beret +3', AugTrial=5460 },
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Arc. Jerkin +3', AugTrial=5482 },
        Hands = 'Orion Bracers +2',
        Ring1 = 'Dingir Ring',
        Ring2 = { Name = 'Cacoethic Ring +1', AugPath='A' },
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = '"Store TP"+10', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'K. Kachina Belt +1',
        Legs = 'Orion Braccae +1',
        Feet = 'Orion Socks +2',
    },
    ['VelocityShot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Amini Caban +2',
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = '"Snapshot"+10' },
        Waist = 'Yemaya Belt',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='D' },
        Feet = 'Meg. Jam. +2',
    },
    ['DecoyShot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Amini Caban +2',
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = '"Snapshot"+10' },
        Waist = 'Yemaya Belt',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='D' },
        Feet = 'Meg. Jam. +2',
    },
    ['LastStand'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = 'Amini Caban +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Dingir Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'Fotia Belt',
        Legs = { Name = 'Arc. Braccae +3', AugTrial=5526 },
        Feet = { Name = 'Adhe. Gamashes +1', AugPath='C' },
    },
    ['Wildfire'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Novio Earring',
        Body = { Name = 'Cohort Cloak +1', AugPath='A' },
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Dingir Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Arc. Braccae +3', AugTrial=5526 },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Mag. Atk. Bns."+17', [2] = 'Mag. Acc.+17', [3] = 'Weapon skill damage +2%', [4] = 'Accuracy+3', [5] = 'Attack+3', [6] = 'Pet: Mag. Acc.+19' } },
    },
    ['Coronach'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = 'Amini Caban +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Dingir Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'Fotia Belt',
        Legs = { Name = 'Arc. Braccae +3', AugTrial=5526 },
        Feet = 'Meg. Jam. +2',
    },
    ['Trueflight'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Novio Earring',
        Body = { Name = 'Cohort Cloak +1', AugPath='A' },
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Dingir Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Magic Damage+20', [2] = 'AGI+20', [3] = 'Mag. Acc.+20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Arc. Braccae +3', AugTrial=5526 },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Mag. Atk. Bns."+17', [2] = 'Mag. Acc.+17', [3] = 'Weapon skill damage +2%', [4] = 'Accuracy+3', [5] = 'Attack+3', [6] = 'Pet: Mag. Acc.+19' } },
    },
    ['Snipershot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Amini Caban +2',
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = '"Snapshot"+10' },
        Waist = 'Yemaya Belt',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='D' },
        Feet = 'Meg. Jam. +2',
    },
    ['NumbingShot'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Dedition Earring',
        Body = 'Amini Caban +2',
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = '"Snapshot"+10' },
        Waist = 'Yemaya Belt',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='D' },
        Feet = 'Meg. Jam. +2',
    },
    ['SavageBlade'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = { Name = 'Scout\'s Gorget +2', AugPath='A' },
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuirie +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Apate Ring',
        Ring2 = 'Karieyh Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = { Name = 'Arc. Braccae +3', AugTrial=5526 },
        Feet = 'Meg. Jam. +2',
    },
    ['EmpyrealArrow'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = 'Fotia Gorget',
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuirie +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Apate Ring',
        Ring2 = 'Meghanada Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'Ponente Sash',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='C' },
        Feet = { Name = 'Adhe. Gamashes +1', AugPath='C' },
    },
    ['ArchingArrow'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = 'Fotia Gorget',
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuirie +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Meghanada Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'Ponente Sash',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='C' },
        Feet = { Name = 'Adhe. Gamashes +1', AugPath='C' },
    },
    ['ApexArrow'] = {
        -- Main = { Name = 'Perun +1', AugPath='A' },
        -- Range = { Name = 'Fomalhaut', AugPath='A' },
        -- Ammo = 'Chrono Bullet',
        Head = 'Orion Beret +3',
        Neck = 'Fotia Gorget',
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuirie +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Meghanada Ring',
        Back = { Name = 'Belenus\'s Cape', Augment = { [1] = 'Rng.Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+30', [4] = 'Rng.Atk.+20' } },
        Waist = 'Ponente Sash',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='C' },
        Feet = { Name = 'Adhe. Gamashes +1', AugPath='C' },
    },
    ['Scavenge'] = {
        Feet = 'Orion Socks +2',
    },
    ['Shadowbind'] = {
        Hands = 'Orion Bracers +2',
    },
    ['BountyShot'] = {
        Hands = 'Orion Bracers +2',
    },
    ['ExpRings'] = {
        Ring1 = 'Echad Ring',
        Ring2 = 'Emperor Band',
    },
};

local Settings = {
    UseMelee = false,
    UseExpRings = false
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
    end   
end
    
profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();

    if (player.Status == 'Engaged' and Settings.UseMelee) then
        gFunc.EquipSet(sets.Melee);
    elseif (player.Status == 'Engaged' and not Settings.UseMelee) then
        gFunc.EquipSet(sets.Midshot);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (string.match(environment.Area, 'Windurst ')) then
        gFunc.EquipSet(sets.SpeedWindurst)
    elseif (Settings.UseExpRings == true) then
        gFunc.EquipSet(sets.ExpRings);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Double Shot') then
        gFunc.EquipSet(sets.DoubleShot);
    elseif(action.Name == 'Bounty Shot') then
        gFunc.EquipSet(sets.BountyShot);
    elseif(action.Name == 'Scavenge') then
        gFunc.EquipSet(sets.Scavenge);
    elseif(action.Name == 'Shadowbind') then
        gFunc.EquipSet(sets.Shadowbind);
    elseif(action.Name == 'Velocity Shot') then
        gFunc.EquipSet(sets.VelocityShot);
    elseif(action.Name == 'Decoy Shot') then
        gFunc.EquipSet(sets.DecoyShot);
    elseif(action.Name == 'Eagle Eye Shot') then
        gFunc.EquipSet(sets.Midshot);
    elseif(action.Name == 'Sharpshot') then
        gFunc.EquipSet(sets.Sharpshot);
    end 
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.Preshot);
end

profile.HandleMidshot = function()
    if (gData.GetBuffCount('Double Shot') > 0) then
        gFunc.EquipSet(sets.DoubleShot);
    elseif (gData.GetBuffCount('Barrage') > 0) then
        gFunc.EquipSet(sets.BarrageSet);
    else
        gFunc.EquipSet(sets.Midshot);
    end
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.Name == 'Last Stand') then
        gFunc.EquipSet(sets.LastStand);
    elseif (action.Name == 'Wildfire') then
        gFunc.EquipSet(sets.Wildfire);
    elseif (action.Name == 'Coronach') then
        gFunc.EquipSet(sets.Coronach);
    elseif (action.Name == 'Trueflight') then
        gFunc.EquipSet(sets.Trueflight);
    elseif (action.Name == 'Savage Blade') then
        gFunc.EquipSet(sets.SavageBlade);
    elseif (action.Name == 'Empyreal Arrow') then
        gFunc.EquipSet(sets.EmpyrealArrow);
    elseif (action.Name == 'Arching Arrow') then
        gFunc.EquipSet(sets.ArchingArrow);
    elseif (action.Name == 'Apex Arrow') then
        gFunc.EquipSet(sets.ApexArrow);
    else
        gFunc.EquipSet(sets.SavageBlade);
    end
end

return profile;