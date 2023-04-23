RegisterNetEvent("lrp:client:getEmotes")
AddEventHandler("lrp:client:getEmotes", function(cb)
    cb(DP.Emotes)
end)

RegisterNetEvent("lrp:client:playAnimation")
AddEventHandler("lrp:client:playAnimation", function(ped, animation)
    local emote = DP.Emotes[animation]

    if emote == nil then
        emote = DP.PropEmotes[animation] 
    end

    OnEmotePlay(emote, ped)
end)