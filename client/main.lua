

local isInvisible = false


Citizen.CreateThread(function()

	while true do
        -- get the current player
		local ped = GetPlayerPed(-1)
		
		-- get players hash
		local CurrentModel = GetHashKey(ped)
		
		-- get addin ped model hash
		local Addin1 = GetHashKey('ThePredator')
		local Addin2 = GetHashKey('PredatorFortnite')
		
		-- get built in peds hash
		local Regular1 = GetHashKey('u_m-y_imporage')
		local Regular2 = GetHashKey('s_m_moviealien_01')
		local Regular3 = GetHashKey('u_m_m_jesus_01')
		
		
            Citizen.Wait(0)
		
		-- check is E was pressed
			if IsControlJustReleased(0,38) then

				--check to see if player is the addon Ped
				if IsPedModel(ped,Addin1) == 1 or IsPedModel(ped,Addin2) == 1 then
					IsSpecialPed = true
				end
				
				--check to see if player is the built in Ped
				if IsPedModel(ped, Regular1) == 1 or IsPedModel(ped, Regular2) == 1 or IsPedModel(ped, Regular3) == 1 then
					IsSpecialPed = true
				end
				
								
				-- If player is the one of the special Peds make invisible
				if IsSpecialPed == true and isInvisible == false then
				
					SetEntityVisible(ped, false, 0)
					isInvisible = true

				else
				
				-- If player is not or if the player is but invisible make visible
					SetEntityVisible(ped, true, 0)
					isInvisible = false
				end

			end
		
	end
end)