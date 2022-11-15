RegisterCommand("fix", function(source, args, rawCommand)
	if source ~= 0 then
		CancelEvent();
	    	TriggerClientEvent("trap:fix", source)
	  	end
	end)
