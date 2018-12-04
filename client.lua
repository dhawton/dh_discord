Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(516530860938231810) --Discord app id
		SetDiscordRichPresenceAsset('bcirp_large') --Big picture asset name
		SetDiscordRichPresenceAssetText('Buearu of Criminal Investigations RP Community') --Big picture hover text
		SetDiscordRichPresenceAssetSmall('pepper2')
		Citizen.Wait(600000) --How often should this script check for updated assets? (in MS)
	end
end)
--No Need to mess with anything pass this point!
Citizen.CreateThread(function()
    while true do
		players = {}
		for i = 0, 31 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end
        SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/32")
		Citizen.Wait(10000)
	end
end)
