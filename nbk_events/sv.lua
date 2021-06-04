function Say(souceid,str,saybywho)
    TriggerClientEvent("CreateSay",sourceid,str,saybywho)
end 

function Select(souceid,...)
    TriggerClientEvent("CreateSelection",sourceid,...)
end 


function StartEvent(eventid,souceid)
    this.Event[eventid](souceid)
end 

RegisterServerEvent("nbk_events:StartEvent")
AddEventHandler('nbk_events:StartEvent', function(eventid)
	local _source = source
	StartEvent(eventid,_source)
end)
