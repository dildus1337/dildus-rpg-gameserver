#include "./checkcorrects.pwn"



public OnActorStreamIn(actorid, forplayerid)
{
    actorid = checkcorrect_actorid(actorid);
    forplayerid = checkcorrect_forplayerid(forplayerid);
}

public OnActorStreamOut(actorid, forplayerid)
{
    actorid = checkcorrect_actorid(actorid);
    forplayerid = checkcorrect_forplayerid(forplayerid);
}
