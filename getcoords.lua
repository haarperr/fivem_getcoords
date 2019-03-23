function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end

RegisterCommand("getcoords", function()
    x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
		
    roundx = tonumber(string.format("%.2f", x))
    roundy = tonumber(string.format("%.2f", y))
	roundz = tonumber(string.format("%.2f", z))
	notify("~r~X~s~: "..roundx.. " ~r~Y~s~: "..roundy.." ~r~Z~s~: "..roundz)
end)
