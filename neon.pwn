#include <a_samp>

#pragma tabsize 0
#define neondialog 8131

public OnFilterScriptInit()
{
	return 1;
		#define COLOR_YELLOW 0xFFFF00AA
		#define COLOR_BLUE 0x1229FAFF
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp(cmdtext, "/neon", true)==0)
	if (!IsPlayerInAnyVehicle(playerid)){
      SendClientMessage(playerid,0xF50000FF,"{00FF27}[SYSTEM] {D500FF}| {FF2700}[ERROR] | You need a car for this");
     return 1;
     } else {
	if(IsPlayerInAnyVehicle(playerid))
	{
    ShowPlayerDialog(playerid, neondialog, DIALOG_STYLE_LIST, "Neon Menu", "{0A00FF}blue\n{FF0027}Red\n{00FF01}Green\n{DCFF00}Yellow\n{0A00FF}blue {FAFAFA}[Right]\n{0A00FF}blue {FAFAFA}[left]\n{FF0027}Red {FAFAFA}[Right]\n{FF0027}Red {FAFAFA}[left]\n{00FF01}Green {FAFAFA}[Right]\n{00FF01}Green {FAFAFA}[left]\n{DCFF00}Yellow {FAFAFA}[Right]\n{DCFF00}Yellow {FAFAFA}[left]\nRemove Neon", "Select", "Cancel");
	}
	return 1;
	}
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{

    if(dialogid == neondialog)
	{
		if(response)
		{
		 if (listitem == 0)
			{
			    SetPVarInt(playerid, "Status", 1);
                SetPVarInt(playerid, "neon1", CreateObject(18648,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "neon1"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                SetPVarInt(playerid, "neon", CreateObject(18648,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "neon"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {0040FF}This was Done");
   			}
               if (listitem == 1)
			   {
				SetPVarInt(playerid, "Status", 1);
	            SetPVarInt(playerid, "neon3", CreateObject(18647,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon3"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SetPVarInt(playerid, "neon2", CreateObject(18647,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon2"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {FF3100}This was Done");
            }
            if (listitem == 2)
			{
		        SetPVarInt(playerid, "Status", 1);
	            SetPVarInt(playerid, "neon5", CreateObject(18649,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon5"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SetPVarInt(playerid, "neon4", CreateObject(18649,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon4"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {00FF19}This was Done");
	         }
	        if (listitem == 3)
			{
		   	 SetPVarInt(playerid, "Status", 1);
		        SetPVarInt(playerid, "neon5", CreateObject(18649,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon5"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SetPVarInt(playerid, "neon9", CreateObject(18651,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon9"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
		        SetPVarInt(playerid, "neon4", CreateObject(18649,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon4"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SetPVarInt(playerid, "neon8", CreateObject(18651,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon8"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {DCFF00}This was Done");
            }
            if (listitem == 4)
			{
			    SetPVarInt(playerid, "Status", 1);
                SetPVarInt(playerid, "neon1", CreateObject(18648,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "neon1"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {0040FF}This was Done");
   			}
			if (listitem == 5)
			{
			    SetPVarInt(playerid, "Status", 1);
                SetPVarInt(playerid, "neon", CreateObject(18648,0,0,0,0,0,0));
                AttachObjectToVehicle(GetPVarInt(playerid, "neon"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
                SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {0040FF}This was Done");
   			}
			if (listitem == 6)
			{
				SetPVarInt(playerid, "Status", 1);
	            SetPVarInt(playerid, "neon3", CreateObject(18647,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon3"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {FF3100}This was Done");
            }
           if (listitem == 7)
			{
				SetPVarInt(playerid, "Status", 1);
	            SetPVarInt(playerid, "neon2", CreateObject(18647,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon2"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {FF3100}This was Done");
            }
            if (listitem == 8)
			{
		        SetPVarInt(playerid, "Status", 1);
	            SetPVarInt(playerid, "neon5", CreateObject(18649,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon5"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {00FF19}This was Done");
            }
            if (listitem == 9)
			{
		   	    SetPVarInt(playerid, "Status", 1);
	               SetPVarInt(playerid, "neon4", CreateObject(18649,0,0,0,0,0,0));
	               AttachObjectToVehicle(GetPVarInt(playerid, "neon4"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	               SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {00FF19}This was Done");
	         }
	        if (listitem == 10)
			{
		   	 SetPVarInt(playerid, "Status", 1);
		        SetPVarInt(playerid, "neon5", CreateObject(18649,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon5"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SetPVarInt(playerid, "neon9", CreateObject(18651,0,0,0,0,0,0));
	            AttachObjectToVehicle(GetPVarInt(playerid, "neon9"), GetPlayerVehicleID(playerid), 0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {FFBE00}This was Done");
            }
            if (listitem == 11)
			{
		   	    SetPVarInt(playerid, "Status", 1);
		           SetPVarInt(playerid, "neon4", CreateObject(18649,0,0,0,0,0,0));
	               AttachObjectToVehicle(GetPVarInt(playerid, "neon4"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	               SetPVarInt(playerid, "neon8", CreateObject(18651,0,0,0,0,0,0));
	               AttachObjectToVehicle(GetPVarInt(playerid, "neon8"), GetPlayerVehicleID(playerid), -0.8, 0.0, -0.70, 0.0, 0.0, 0.0);
	               SendClientMessage(playerid, 0xFFFFFFAA, "{00FF0E}[SYSTEM] {D500FF}| {FFBE00}This was Done");
             }
			   if (listitem == 12) {
            DestroyObject(GetPVarInt(playerid, "neon")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon1"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon2"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon3"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon4"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon5"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon6"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon7"));
			DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon8"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon9")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon10"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon11"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon12"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon13")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon14")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon15"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon16")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon17")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon18")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon19"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon20"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon21"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon22")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon23"));
			DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon24")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon25")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon26"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon27"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon28")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon29"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon30")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon31"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon32")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon33"));
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon34")); 
            DeletePVar(playerid, "Status"); DestroyObject(GetPVarInt(playerid, "neon35"));
            SendClientMessage(playerid, 0xFFFFFFAA, "{00FF3D}[SYSTEM] {D500FF}| {E3FF00}Neon {0900FF}has {FF6F00}been {FF0002}Removed");
	 	    }
		}
	}
    return 0;
}
