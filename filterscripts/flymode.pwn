enum noclipenum
{
	cameramode,
	flyobject,
	mode,
	lrold,
	udold,
	lastmove,
	Float:accelmul,

    Float:accelrate,
    Float:maxspeed,
    bool:accel
}
new noclipdata[MAX_PLAYERS][noclipenum];

new bool:FlyMode[MAX_PLAYERS];

#define InFlyMode(%0) FlyMode[%0]

#define MOVE_SPEED              100.0
#define ACCEL_RATE              0.03
#define ACCEL_MODE              true

#define CAMERA_MODE_NONE    	0
#define CAMERA_MODE_FLY     	1

#define MOVE_FORWARD    		1
#define MOVE_BACK       		2
#define MOVE_LEFT       		3
#define MOVE_RIGHT      		4
#define MOVE_FORWARD_LEFT       5
#define MOVE_FORWARD_RIGHT      6
#define MOVE_BACK_LEFT          7
#define MOVE_BACK_RIGHT         8



public OnPlayerConnect(playerid)
{
    noclipdata[playerid][cameramode] 	= CAMERA_MODE_NONE;
	noclipdata[playerid][lrold]	   	 	= 0;
	noclipdata[playerid][udold]   		= 0;
	noclipdata[playerid][mode]   		= 0;
	noclipdata[playerid][lastmove]   	= 0;
	noclipdata[playerid][accelmul]   	= 0.0;
	noclipdata[playerid][accel]   	    = ACCEL_MODE;
	noclipdata[playerid][accelrate]   	= ACCEL_RATE;
	noclipdata[playerid][maxspeed]   	= MOVE_SPEED;
	FlyMode[playerid] = false;
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(strcmp(cmd, "/flymode", true) == 0)
	{
	    if(PlayerInfo[playerid][pAdmin] == 0) return true;
		if(FlyMode[playerid])
		{
		    new Float:x, Float:y, Float:z;
			GetPlayerCameraPos(playerid, x, y, z);

			SetTimerEx("DelaySetPos", 100, false, "ifff", playerid, x, y, z);

			FlyMode[playerid] = false;
			CancelEdit(playerid);
			TogglePlayerSpectating(playerid, false);

			DestroyPlayerObject(playerid, noclipdata[playerid][flyobject]);
			noclipdata[playerid][cameramode] = CAMERA_MODE_NONE;
			return true;
		}
		else
		{
			new Float:X, Float:Y, Float:Z;
			GetPlayerPos(playerid, X, Y, Z);
			noclipdata[playerid][flyobject] = CreatePlayerObject(playerid, 19300, X, Y, Z, 0.0, 0.0, 0.0);

			TogglePlayerSpectating(playerid, true);
			AttachCameraToPlayerObject(playerid, noclipdata[playerid][flyobject]);

			FlyMode[playerid] = true;
			noclipdata[playerid][cameramode] = CAMERA_MODE_FLY;
			return true;
		}
	}
	if(strcmp(cmdtext, "/savecam", true, 8) == 0)
    {
        static const
        fmt_str0[] = "SetPlayerCameraPos(playerid, %f, %f, %f);\n",
        fmt_str1[] = "SetPlayerCameraLookAt(playerid, %f, %f, %f);\n";
        const
        fmt_size0 = sizeof(fmt_str0) + (-2 + 11) * 3,
        fmt_size1 = sizeof(fmt_str1) + (-2 + 11) * 3;
        #if fmt_size0 > fmt_size1
        #define final_size fmt_size0
        #else
        #define final_size fmt_size1
        #endif
        new
        str[final_size],
        File: cam_file = fopen("CamCoords.ini", io_append),
        Float: cam_pos_axis_x,
        Float: cam_pos_axis_y,
        Float: cam_pos_axis_z,
        Float: cam_pos_vec_axis_x,
        Float: cam_pos_vec_axis_y,
        Float: cam_pos_vec_axis_z;
        #undef final_size
        GetPlayerCameraPos(playerid, cam_pos_axis_x, cam_pos_axis_y, cam_pos_axis_z);
        GetPlayerCameraFrontVector(playerid, cam_pos_vec_axis_x, cam_pos_vec_axis_y, cam_pos_vec_axis_z);
        format(str, sizeof(str), fmt_str0, cam_pos_axis_x, cam_pos_axis_y, cam_pos_axis_z);
        fwrite(cam_file, str);
        format(str, sizeof(str), fmt_str1, cam_pos_axis_x + 5.0 * cam_pos_vec_axis_x, cam_pos_axis_y + 5.0 * cam_pos_vec_axis_y, cam_pos_axis_z + 5.0 * cam_pos_vec_axis_z);
        fwrite(cam_file, str);
        return fclose(cam_file);
    }
}

public OnPlayerUpdate(playerid)
{
    if(noclipdata[playerid][cameramode] == CAMERA_MODE_FLY)
	{
		new keys,ud,lr;
		GetPlayerKeys(playerid,keys,ud,lr);


		if(noclipdata[playerid][mode] && (GetTickCount() - noclipdata[playerid][lastmove] > 100))
		{
		    // If the last move was > 100ms ago, process moving the object the players camera is attached to
		    MoveCamera(playerid);
		}

		// Is the players current key state different than their last keystate?
		if(noclipdata[playerid][udold] != ud || noclipdata[playerid][lrold] != lr)
		{
			if((noclipdata[playerid][udold] != 0 || noclipdata[playerid][lrold] != 0) && ud == 0 && lr == 0)
			{   // All keys have been released, stop the object the camera is attached to and reset the acceleration multiplier
				StopPlayerObject(playerid, noclipdata[playerid][flyobject]);
				noclipdata[playerid][mode]      = 0;
				noclipdata[playerid][accelmul]  = 0.0;
			}
			else
			{   // Indicates a new key has been pressed

			    // Get the direction the player wants to move as indicated by the keys
				noclipdata[playerid][mode] = GetMoveDirectionFromKeys(ud, lr);

				// Process moving the object the players camera is attached to
				MoveCamera(playerid);
			}
		}
		noclipdata[playerid][udold] = ud; noclipdata[playerid][lrold] = lr; // Store current keys pressed for comparison next update
	}
	return 1;
}

stock IsFlyMode(playerid) { return noclipdata[playerid][cameramode]; }

stock GetMoveDirectionFromKeys(ud, lr)
{
	new direction = 0;

    if(lr < 0)
	{
		if(ud < 0) 		direction = MOVE_FORWARD_LEFT; 	// Up & Left key pressed
		else if(ud > 0) direction = MOVE_BACK_LEFT; 	// Back & Left key pressed
		else            direction = MOVE_LEFT;          // Left key pressed
	}
	else if(lr > 0) 	// Right pressed
	{
		if(ud < 0)      direction = MOVE_FORWARD_RIGHT;  // Up & Right key pressed
		else if(ud > 0) direction = MOVE_BACK_RIGHT;     // Back & Right key pressed
		else			direction = MOVE_RIGHT;          // Right key pressed
	}
	else if(ud < 0) 	direction = MOVE_FORWARD; 	// Up key pressed
	else if(ud > 0) 	direction = MOVE_BACK;		// Down key pressed

	return direction;
}

//--------------------------------------------------

stock MoveCamera(playerid)
{
	new Float:FV[3], Float:CP12[3];
	//GetPlayerCameraPos(playerid, CP[0], CP[1], CP[2]);          // 	Cameras position in space
	GetPlayerObjectPos(playerid, noclipdata[playerid][flyobject], CP12[0], CP12[1], CP12[2]);          // 	Cameras position in space
    GetPlayerCameraFrontVector(playerid, FV[0], FV[1], FV[2]);  //  Where the camera is looking at

	// Increases the acceleration multiplier the longer the key is held
	if(noclipdata[playerid][accelmul] <= 1.0) noclipdata[playerid][accelmul] += noclipdata[playerid][accelrate];

	// Determine the speed to move the camera based on the acceleration multiplier
	new Float:speed = noclipdata[playerid][maxspeed] * (noclipdata[playerid][accel] ? noclipdata[playerid][accelmul] : 1.0);

	// Calculate the cameras next position based on their current position and the direction their camera is facing
	new Float:X, Float:Y, Float:Z;
	GetNextCameraPosition(noclipdata[playerid][mode], CP12, FV, X, Y, Z);
	MovePlayerObject(playerid, noclipdata[playerid][flyobject], X, Y, Z, speed);

	// Store the last time the camera was moved as now
	noclipdata[playerid][lastmove] = GetTickCount();
	return 1;
}

stock SetFlyModePos(playerid, Float:x, Float:y, Float:z)
{
    SetPlayerObjectPos(playerid, noclipdata[playerid][flyobject], x, y, z);
	noclipdata[playerid][lastmove] = GetTickCount();
	return 1;
}


//--------------------------------------------------

stock GetNextCameraPosition(move_mode, Float:CP12[3], Float:FV[3], &Float:X, &Float:Y, &Float:Z)
{
    // Calculate the cameras next position based on their current position and the direction their camera is facing
    #define OFFSET_X (FV[0]*6000.0)
	#define OFFSET_Y (FV[1]*6000.0)
	#define OFFSET_Z (FV[2]*6000.0)
	switch(move_mode)
	{
		case MOVE_FORWARD:
		{
			X = CP12[0]+OFFSET_X;
			Y = CP12[1]+OFFSET_Y;
			Z = CP12[2]+OFFSET_Z;
		}
		case MOVE_BACK:
		{
			X = CP12[0]-OFFSET_X;
			Y = CP12[1]-OFFSET_Y;
			Z = CP12[2]-OFFSET_Z;
		}
		case MOVE_LEFT:
		{
			X = CP12[0]-OFFSET_Y;
			Y = CP12[1]+OFFSET_X;
			Z = CP12[2];
		}
		case MOVE_RIGHT:
		{
			X = CP12[0]+OFFSET_Y;
			Y = CP12[1]-OFFSET_X;
			Z = CP12[2];
		}
		case MOVE_BACK_LEFT:
		{
			X = CP12[0]+(-OFFSET_X - OFFSET_Y);
 			Y = CP12[1]+(-OFFSET_Y + OFFSET_X);
		 	Z = CP12[2]-OFFSET_Z;
		}
		case MOVE_BACK_RIGHT:
		{
			X = CP12[0]+(-OFFSET_X + OFFSET_Y);
 			Y = CP12[1]+(-OFFSET_Y - OFFSET_X);
		 	Z = CP12[2]-OFFSET_Z;
		}
		case MOVE_FORWARD_LEFT:
		{
			X = CP12[0]+(OFFSET_X  - OFFSET_Y);
			Y = CP12[1]+(OFFSET_Y  + OFFSET_X);
			Z = CP12[2]+OFFSET_Z;
		}
		case MOVE_FORWARD_RIGHT:
		{
			X = CP12[0]+(OFFSET_X  + OFFSET_Y);
			Y = CP12[1]+(OFFSET_Y  - OFFSET_X);
			Z = CP12[2]+OFFSET_Z;
		}
	}
}

forward DelaySetPos(playerid, Float:x, Float:y, Float:z);
public DelaySetPos(playerid, Float:x, Float:y, Float:z) { SetPlayerPos(playerid, x, y, z); }
