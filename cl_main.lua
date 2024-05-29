Citizen.CreateThread(function()
    while (IsPedHogtied(PlayerPedId()) == 1) do
        local closestPlyID, closestPlyPed, closestPlyCoords = lib.getClosestPlayer(GetEntityCoords(PlayerPedId()), 25.0, false)

        if type(closestPlyCoords) ~= "nil" and #(closestPlyCoords - GetEntityCoords(PlayerPedId())) <= 25.0 then
            DisableControlAction(0, joaat("INPUT_CARRIABLE_BREAK_FREE"), true)
            DisableControlAction(0, joaat("INPUT_CARRIABLE_SUICIDE"), true)
        end

        DisableControlAction(0, joaat("INPUT_CARRIABLE_SUICIDE"), true)

        Citizen.Wait(0)
    end
end)