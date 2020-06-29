#include "./checkcorrects.pwn"



public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    playerid = checkcorrect_playerid(playerid);
    // TODO: Объединённые проверки (для контекста)?
    dialogid = checkcorrect_dialogid(dialogid);
    response = checkcorrect_response(response);
    listitem = checkcorrect_listitem(listitem);
    checkcorrect_inputtext(inputtext);
    return 1;
}
