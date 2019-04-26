	_vehicle = vehicle player;
	_vel = velocity _vehicle; 
	_dir = direction _vehicle;
	_speed1 = 100;
	_vehicle setVelocity [ 
	 (_vel select 0) + (sin _dir * _speed1),
	 (_vel select 1) + (cos _dir * _speed1),
	 (_vel select 2)
	];
	_vehicle setvehicleammo 1;
	systemchat format ["-=REARMED!=-"];
	_vehicle setFuel 1;
	systemchat format ["-=REFUELED!=-"];
	_vehicle setDamage 0;
	systemchat format ["-=REPAIRED!=-"];
	systemchat format ["-=...!?=-"];
	_SmokerandomColor = selectRandom ["SmokeShellRed","SmokeShellBlue","SmokeShellGreen"];
	_smokeWing1 = "SmokeShellRed" createVehicle (position vehicle player);  _smokeWing1 attachto [vehicle player, [5,0,-1.2]];
	_smokeWing2 = "SmokeShellRed" createVehicle (position vehicle player);  _smokeWing2 attachto [vehicle player, [-5,0,-1.2]];
	_smokeEngine1 = _SmokerandomColor createVehicle (position vehicle player);  _smokeEngine1 attachto [vehicle player, [0,-3,-1]];
	uiSleep 0.25;
	_smokeWing3 = "SmokeShellRed" createVehicle (position vehicle player);  _smokeWing3 attachto [vehicle player, [5,0,-1.2]];
	_smokeWing4 = "SmokeShellRed" createVehicle (position vehicle player);  _smokeWing4 attachto [vehicle player, [-5,0,-1.2]];
	_smokeEngine2 = _SmokerandomColor createVehicle (position vehicle player);  _smokeEngine2 attachto [vehicle player, [0,-3,-1]];
	uiSleep 0.25;
	_smokeWing5 = "SmokeShellRed" createVehicle (position vehicle player);  _smokeWing5 attachto [vehicle player, [5,0,-1.2]];
	_smokeWing6 = "SmokeShellRed" createVehicle (position vehicle player);  _smokeWing6 attachto [vehicle player, [-5,0,-1.2]];
	_smokeEngine3 = _SmokerandomColor createVehicle (position vehicle player);  _smokeEngine3 attachto [vehicle player, [0,-3,-1]];
