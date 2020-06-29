#include <a_npc.inc>

#include "./checkcorrects.pwn"



// TODO: Отключить ненужные функции обратных вызовов (произодительность).
public OnClientMessage(color, text[])
{
    // Можно отключить.
    color = checkcorrect_clientmsg_color(color);
    checkcorrect_clientmsg_text(text);
}

public OnPlayerDeath(playerid)
{
    // Можно отключить.
    playerid = checkcorrect_playerid(playerid);
}

public OnPlayerStreamIn(playerid)
{
    // Можно отключить.
    playerid = checkcorrect_playerid(playerid);
}

public OnPlayerStreamOut(playerid)
{
    // Можно отключить.
    playerid = checkcorrect_playerid(playerid);
}

public OnPlayerText(playerid, text[])
{
    // Можно отключить.
    playerid = checkcorrect_playerid(playerid);
    checkcorrect_chattext(text);
}

public OnRecordingPlaybackEnd()
{
    // Пусто...
}

public OnVehicleStreamIn(vehicleid)
{
    // Можно отключить.
    vehicleid = checkcorrect_vehicleid(vehicleid);
}

public OnVehicleStreamOut(vehicleid)
{
    // Можно отключить.
    vehicleid = checkcorrect_vehicleid(vehicleid);
}
