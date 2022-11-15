TriggerEvent('chat:addSuggestion', '/fix', 'Fix your vehicle!')

RegisterNetEvent("trap:fix")
AddEventHandler("trap:fix", function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed) then
		local vehicle = GetVehiclePedIsIn(playerPed)
		SetVehicleEngineHealth(vehicle, 9999)
		SetVehiclePetrolTankHealth(vehicle, 9999)
		SetVehicleFixed(vehicle)
		notification("~g~Kendaraan anda telah diperbaiki.")
	else
		notification("~r~Anda tidak berada di dalam kendaraan.")
	end
end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end
