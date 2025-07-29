require('common');

local settings = T{ };
settings["profiles"] = T{ };
settings["profiles"][1] = T{ };
settings["profiles"][1]["trusts"] = T{ };
settings["lastProfileLoaded"] = 1;
settings["profiles"][1]["name"] = "Classic PT";
settings["profiles"][1]["trusts"][1] = "Shantotto II";
settings["profiles"][1]["trusts"][2] = "Valaineral";
settings["profiles"][1]["trusts"][3] = "Joachim";
settings["profiles"][1]["trusts"][4] = "Apururu (UC)";
settings["profiles"][1]["trusts"][5] = "Semih Lafihna";

return settings;
