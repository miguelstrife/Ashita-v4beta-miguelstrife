local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Yataghan',
        Sub = 'Yataghan',
        Head = 'Homam Zucchetto',
        Neck = 'Ashura Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bone Earring',
        Body = 'Homam Corazza',
        Hands = 'Crow Bracers',
        Ring1 = 'Windurstian Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Swift Belt',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',
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