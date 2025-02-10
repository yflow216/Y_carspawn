RegisterCommand('car', function(source, args)
    local vehicleName = args[1] or 'adder' -- Standardfahrzeug, falls keins angegeben wird

    RequestModel(vehicleName)

    while not HasModelLoaded(vehicleName) do
        Wait(500)
    end

    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)

    local vehicle = CreateVehicle(vehicleName, coords.x, coords.y, coords.z, GetEntityHeading(playerPed), true, false)
    SetPedIntoVehicle(playerPed, vehicle, -1)
end, false)
