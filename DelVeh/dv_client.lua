RegisterCommand(Config.DeleteVehicleComamnd, function(source, args, rawCommand)
    local playerPed = PlayerPedId()

    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if not DoesEntityExist(vehicle) then
        print("You are not in a vehicle, therefore we cannot delete one.")


        TriggerEvent('chat:addMessage', {
            color = Config.ErrorColor,
            multiline = true,
            args = {Config.DvChatName, Config.DvErrorMessage}
          })


    else
        DeleteEntity(vehicle)    
        print("Successfully deleted the vehicle the player was in.")

        TriggerEvent('chat:addMessage', {
            color = Config.SuccessColor,
            multiline = true,
            args = {Config.DvChatName, Config.DvSuccessMessage}
          })



    end
end)

RegisterCommand(Config.DeleteClosestVehicleCommand, function(source, args, rawCommand)
    local playerPed = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(playerPed, false))
    local radius = Config.DeleteRadius
    local flags = 70 
    
    local closestVehicle = GetClosestVehicle(x, y, z, radius, 0, flags)
    
    if DoesEntityExist(closestVehicle) then


        DeleteVehicle(closestVehicle)

        TriggerEvent('chat:addMessage', {
            color = Config.SuccessColor,
            multiline = true,
            args = {Config.DvChatName, Config.DvClosestSuccessMessage}
          })
        
    else
        print("There was no vehicle within the radius of " .. radius)
        
        TriggerEvent('chat:addMessage', {
            color = Config.ErrorColor,
            multiline = true,
            args = {Config.DvChatName, Config.DvClosestErrorMessage}
          })

    end
end)