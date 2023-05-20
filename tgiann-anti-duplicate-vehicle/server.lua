CreateThread(function()
	while true do
		local plateList = {}
		local allVeh = GetAllVehicles()
		for i=1, #allVeh do
			local plate = GetVehicleNumberPlateText(allVeh[i])
			local model = GetEntityModel(allVeh[i])
			if not plateList[plate] then 
				plateList[plate] = model
			elseif model == plateList[plate] then
				DeleteEntity(allVeh[i])
			end
		end
		Wait(5000)
	end
end)