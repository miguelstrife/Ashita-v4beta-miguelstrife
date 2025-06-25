local toolset = T{}

toolset.ResetVariables = function(settings)
    for key, value in pairs(settings) do
        settings[key] = false;
    end
end

toolset.SendMessageToChatBoxHelper = function(message)
    AshitaCore:GetChatManager():QueueCommand(1, '/echo ' .. message);
end

toolset.CommandHandlerHelper = function(table, key)
    local property = table[key];
    if (property == true) then
        AshitaCore:GetChatManager():QueueCommand(1, '/echo ===== [' .. key .. '] is now disabled. =====');
        table[key] = false;
    else
        -- This is to have only one set triggered at a time.
        toolset.ResetVariables(table);
        table[key] = true;
        AshitaCore:GetChatManager():QueueCommand(1, '/echo ===== [' .. key .. '] is now enabled. =====');
    end
end

toolset.CompareStringsIgnoreCase = function(str1, str2)
    return str1:lower() == str2:lower();
end

toolset.ShowSettings = function(settings)
    local message = '===== LuAshitaCast Settings =====\n';
    for key, value in pairs(settings) do
        message = message .. key .. ': ' .. tostring(value) .. '\n';
    end
    toolset.SendMessageToChatBoxHelper(message);
end

return toolset;