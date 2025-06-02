local profile = {};
local sets = {
    ['CorTp'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Iskur Gorget',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Reiki Yotai',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+4', [2] = '"Dbl.Atk."+1', [3] = 'DEX+2' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
    ['CorMAB'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Herculean Helm', Augment = { [1] = 'STR+14', [2] = 'Mag. Acc.+1', [3] = '"Mag. Atk. Bns."+22', [4] = 'Enmity-3' } },
        Neck = { Name = 'Comm. Charm +2', AugPath='A' },
        Ear1 = 'Novio Earring',
        Ear2 = 'Friomisi Earring',
        Body = { Name = 'Lanun Frac +3', AugTrial=5488 },
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Dingir Ring',
        Ring2 = 'Arvina Ringlet +1',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+20', [4] = 'Mag. Acc.+20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = '"Mag. Atk. Bns."+20', [2] = '"Conserve MP"+4', [3] = 'Mag. Acc.+20', [4] = 'Crit. hit damage +2%' } },
        Feet = { Name = 'Lanun Bottes +3', AugTrial=5554 },
    },
    ['CorAGIWS'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Lanun Tricorne +3', AugTrial=5466 },
        Neck = { Name = 'Comm. Charm +2', AugPath='A' },
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Lanun Frac +3', AugTrial=5488 },
        Hands = 'Mummu Wrists +2',
        Ring1 = 'Karieyh Ring',
        Ring2 = { Name = 'Cacoethic Ring +1', AugPath='A' },
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+20', [4] = 'Mag. Acc.+20' } },
        Waist = 'Svelt. Gouriz +1',
        Legs = 'Mummu Kecks +2',
        Feet = 'Mummu Gamash. +2',
    },
    ['CorLastStand'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Fomalhaut', AugPath='A' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Lanun Tricorne +3', AugTrial=5466 },
        Neck = 'Fotia Gorget',
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuirie +2',
        Hands = 'Chasseur\'s Gants +2',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Dingir Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+20', [4] = 'Mag. Acc.+20' } },
        Waist = 'Fotia Belt',
        Legs = { Name = 'Lanun Trews +2', AugTrial=5422 },
        Feet = { Name = 'Lanun Bottes +3', AugTrial=5554 },
    },
    ['CorRoll'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Compensator', AugPath='D' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Lanun Tricorne +3', AugTrial=5466 },
        Neck = 'Fotia Gorget',
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Lanun Frac +3', AugTrial=5488 },
        Hands = 'Chasseur\'s Gants +2',
        Ring1 = 'Barataria Ring',
        Ring2 = 'Luzaf\'s Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+20', [4] = 'Mag. Acc.+20' } },
        Waist = 'Windbuffet Belt +1',
        Legs = { Name = 'Desultor Tassets', Augment = { [1] = '"Phantom Roll" ability delay -5', [2] = 'Phys. dmg. taken -4%' } },
        Feet = { Name = 'Lanun Bottes +3', AugTrial=5554 },
    },
    ['CorLeadenSalute'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Compensator', AugPath='D' },
        Ammo = 'Chrono Bullet',
        Head = 'Pixie Hairpin +1',
        Neck = { Name = 'Comm. Charm +2', AugPath='A' },
        Ear1 = 'Novio Earring',
        Ear2 = 'Friomisi Earring',
        Body = { Name = 'Lanun Frac +3', AugTrial=5488 },
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Dingir Ring',
        Ring2 = 'Archon Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+20', [4] = 'Mag. Acc.+20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = '"Mag. Atk. Bns."+20', [2] = '"Conserve MP"+4', [3] = 'Mag. Acc.+20', [4] = 'Crit. hit damage +2%' } },
        Feet = { Name = 'Lanun Bottes +3', AugTrial=5554 },
    },
    ['CorWild'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Compensator', AugPath='D' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Herculean Helm', Augment = { [1] = 'STR+14', [2] = 'Mag. Acc.+1', [3] = '"Mag. Atk. Bns."+22', [4] = 'Enmity-3' } },
        Neck = { Name = 'Comm. Charm +2', AugPath='A' },
        Ear1 = 'Novio Earring',
        Ear2 = 'Friomisi Earring',
        Body = { Name = 'Lanun Frac +3', AugTrial=5488 },
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Dingir Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+20', [4] = 'Mag. Acc.+20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = '"Mag. Atk. Bns."+20', [2] = '"Conserve MP"+4', [3] = 'Mag. Acc.+20', [4] = 'Crit. hit damage +2%' } },
        Feet = { Name = 'Lanun Bottes +3', AugTrial=5554 },
    },
    ['CorEvis'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Compensator', AugPath='D' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Mache Earring +1',
        Body = 'Mummu Jacket +2',
        Hands = 'Mummu Wrists +2',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Windbuffet Belt +1',
        Legs = 'Mummu Kecks +2',
        Feet = 'Mummu Gamash. +2',
    },
    ['CorSpeed'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Compensator', AugPath='D' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Iskur Gorget',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='A' },
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Reiki Yotai',
        Legs = { Name = 'Carmine Cuisses +1', AugPath='D' },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Triple Atk."+3', [2] = 'Accuracy+15', [3] = 'Attack+12', [4] = 'DEX+2' } },
    },
    ['CorMidshot'] = {
        Main = { Name = 'Rostam', AugPath='B' },
        Sub = 'Tauret',
        Range = { Name = 'Compensator', AugPath='D' },
        Ammo = 'Chrono Bullet',
        Head = { Name = 'Lanun Tricorne +3', AugTrial=5466 },
        Neck = 'Iskur Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Dedition Earring',
        Body = { Name = 'Lanun Frac +3', AugTrial=5488 },
        Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' },
        Ring1 = 'Dingir Ring',
        Ring2 = { Name = 'Cacoethic Ring +1', AugPath='A' },
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+20', [4] = 'Mag. Acc.+20' } },
        Waist = 'Yemaya Belt',
        Legs = { Name = 'Adhemar Kecks +1', AugPath='C' },
        Feet = { Name = 'Lanun Bottes +3', AugTrial=5554 },
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