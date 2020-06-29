#include "./checkcorrects.pwn"



public OnEnterExitModShop(playerid, enterexit, interiorid)
{
    if(enterexit == 0) // If enterexit is 0, this means they are exiting
    {
        SendClientMessage(playerid, COLOR_WHITE, "Nice car! You have been taxed $100.");
        GivePlayerMoney(playerid, -100);
    }
}
