	#define hideOnUse true
	#define showWindow true

	GMS_fnc_nextAnimation = {
		_hostage = _this;
		_hostage switchMove "";
		//uisleep 0.1;
		_animations = _hostage getVariable["GMSAnimations",[""]];
		//diag_log format["_fnc_nextAnimation: _hostage = %1 and _animations = %2",_hostage,_animations];
		_hostage switchMove (selectRandom _animations);
	};
	
	GMS_EH_onAnimationDone = {
		//diag_log format["GMS_EH_onAnimationDone: _this = %1",_this];
		private _hostage = _this select 0;
		if (alive _hostage) then 
		{
			//diag_log format["GMS_EH_onAnimationDone: _animations = %1",_hostage getVariable["GMSAnimations",[""]]];
			_hostage call GMS_fnc_nextAnimation;
		} else {
			_hostage removeAllEventHandlers "AnimDone";
		};
	};
	
	GMS_fnc_freeHostage = {
		//diag_log format["fn_freeHostage: _this = %1",_this];
		private _hostage = _this select 0;
		if (_hostage getVariable["blck_unguarded",0] isEqualTo 1) then
		{
			_hostage setVariable["blck_AIState",1,true];
			private _msg = "Thank you For freeing me. I must return home.";
			systemChat _msg;
			if (blck_modType isEqualTo "Epoch") then
			{
				[_msg,5] call Epoch_message;
			};
			if (blck_modType isEqualTo "Exile") then
			{
				["InfoTitleAndText", ["The Hostage Says", _msg]] call ExileClient_gui_toaster_addTemplateToast;
			};			
		} else {
			private _msg = "I am afraid, please kill more of the enemy!";
			systemChat _msg;
			if (blck_modType isEqualTo "Epoch") then
			{
				[_msg,5] call Epoch_message;
			};
			if (blck_modType isEqualTo "Exile") then
			{
				["InfoTitleAndText", ["The Hostage Says", _msg]] call ExileClient_gui_toaster_addTemplateToast;
			};
		};
		//diag_log _msg;
	};

	GMS_fnc_addHostageActions = {
		private _hostage = _this;
		//private _handle = _hostage addAction ["Free Hostage",{_this call GMS_fnc_freeHostage}]; //,[],1,showWindow,hideOnUse,(alive _hostage)];
		private _handle = _hostage addAction ["Free Hostage",{_this call GMS_fnc_freeHostage},[],1,showWindow,hideOnUse];  //,"",{alive _target}]; //,"", (alive _target)];		
	};
	
	GMS_fnc_addAssetAnimations = {
		private _asset = _this;
		_asset addEventHandler ["AnimDone", {_this call GMS_EH_onAnimationDone}];
		_asset call GMS_fnc_nextAnimation;
		//diag_log format["_fnc_addAssetAnimations: Animation and event handler added for asset %1",_asset];
	};
	
	GMS_fnc_initHostage = {
		private _hostage = _this;
		_hostage call GMS_fnc_addHostageActions;
		_hostage call GMS_fnc_addAssetAnimations;
		//diag_log format["_fnc_initHostage: hostage %1 initialized",_hostage];
	};
	
	GMS_fnc_arrestLeader = {
		//diag_log format["GMS_fnc_arrestLeader: _this = %1",_this];
		private _leader = _this select 0;
		if (_leader getVariable["blck_unguarded",0] isEqualTo 1) then
		{
			_leader setVariable["blck_AIState",1,true];
			private _msg = "I surrender.";
			systemChat _msg;
			if (blck_modType isEqualTo "Epoch") then
			{
				[_msg,5] call Epoch_message;
			};
			if (blck_modType isEqualTo "Exile") then
			{
				["InfoTitleAndText", ["The Leader Says", _msg]] call ExileClient_gui_toaster_addTemplateToast;
			};			
		} else {
			private _msg = "I will resist arrest until all of my men are down!";
			systemChat _msg;
			if (blck_modType isEqualTo "Epoch") then
			{
				[_msg,5] call Epoch_message;
			};
			if (blck_modType isEqualTo "Exile") then
			{
				["InfoTitleAndText", ["The Leader Says", _msg]] call ExileClient_gui_toaster_addTemplateToast;
			};
		};
		//_leader setVariable["blck_AIState",1,true];
		//private _msg = "_fnc_arrestLeader: <Leader Arrested>";
		//systemChat _msg;
		//hint _msg;
		//diag_log _msg;	
	};
	
	GMS_fnc_addLeaderActions = {
		private _leader = _this;
		private _handle = _leader addAction ["Under Arrest",{_this call GMS_fnc_arrestLeader},[],1,showWindow,hideOnUse];  //,"",{alive _target}]; //,"", (alive _target)];			
	};
	
	GMS_fnc_initLeader = {
		private _leader = _this;
		_leader call GMS_fnc_addLeaderActions;
		_leader call GMS_fnc_addAssetAnimations;
		//diag_log format["_fnc_initLeader: Leader %1 initialized",_leader];		
	};
	
if !(isServer) then
{
	//diag_log "[blckeagls] initializing client variables";
	blck_MarkerPeristTime = 300;  
	blck_useHint = false;
	blck_useSystemChat = true;
	blck_useTitleText = false;
	blck_useDynamic = true;
	blck_useToast = false;  // Exile only
	blck_aiKilluseSystemChat = true;
	blck_aiKilluseDynamic = false;
	blck_aiKilluseTitleText = false;
	blck_processingMsg = -1;
	blck_processingKill = -1;
	blck_message = "";

	fn_killScoreNotification = {
		params["_bonus","_distanceBonus","_killStreak"];
		//diag_log format["fn_killScoreNotification::  --  >> _bonus = %1 | _distanceBonus = %2 | _killStreak = %3",_bonus,_distanceBonus,_killStreak];
		_msg2 = format["<t color ='#7CFC00' size = '1.4' align='right'>AI Killed</t><br/>"];
		if (typeName _bonus isEqualTo "SCALAR") then // add message for the bonus
		{
			if (_bonus > 0) then 
			{
				_msg2 = _msg2 + format["<t color = '#7CFC00' size ='1.4' align='right'>Bonus <t color = '#ffffff'>+%1<br/>",_bonus];
			};
		};
		if (typeName _distanceBonus isEqualTo "SCALAR") then // Add message for distance bonus
		{
			if (_distanceBonus > 0) then
			{
				_msg2 = _msg2 + format["<t color = '#7CFC00' size = '1.4' align = 'right'>Dist Bonus<t color = '#ffffff'> +%1<br/>",_distanceBonus];
			};
		};
		if (typeName _killStreak isEqualTo "SCALAR") then
		{
			if (_killStreak > 0) then
			{
				_msg2 = _msg2 + format["<t color = '#7CFC00' size = '1.4' align = 'right'>Killstreak <t color = '#ffffff'>%1X<br/>",_killStreak];
			};
		};
		[parseText _msg2,[0.0823437 * safezoneW + safezoneX,0.379 * safezoneH + safezoneY,0.0812109 * safezoneW,0.253 * safezoneH], nil, 7, 0.3, 0] spawn BIS_fnc_textTiles;	
	};
	
	fn_dynamicWarning = {
			private["_text","_screentime","_xcoord","_ycoord"];
			params["_mission","_message"];
			
			waitUntil {blck_processingMsg < 0};
			blck_processingMsg = 1;
			_screentime = 7;
			_text = format[
				"<t align='left' size='1.0' color='#B22222'>%1</t><br/><br/>
				<t align='left' size='0.6' color='#F0F0F0'>%2</t><br/>",
				_mission,_message
				];
			_ycoord = [safezoneY + safezoneH - 0.8,0.7];
			_xcoord = [safezoneX + safezoneW - 0.5,0.35];
			[_text,_xcoord,_ycoord,_screentime,0.5] spawn BIS_fnc_dynamicText;
			uiSleep 3;  // 3 second delay before the next message
			blck_processingMsg = -1;	
	};
	fn_missionWarning = {
		params["_event","_message","_mission"];

		if (blck_useSystemChat) then {systemChat format["%1",_message];};
		if (blck_useHint) then {
			hint parseText format[
			"<t align='center' size='2.0' color='#B22222'>%1</t><br/>
			<t size='1.5' color='#B22222'>______________</t><br/><br/>
			<t size='1.5' color='#ffff00'>%2</t><br/>
			<t size='1.5' color='#F0F0F0'>______________</t><br/><br/>
			<t size='1.5' color='#F0F0F0'>Any loot you find is yours as payment for eliminating the threat!</t>",_mission,_message
			];	
		};
		if (blck_useDynamic) then {
			[_mission,_message] call fn_dynamicWarning;
		};		
		if (blck_useTitleText) then {
			[_message] spawn {
				params["_msg"];
				titleText [_msg, "PLAIN DOWN",5];uiSleep 5; titleText ["", "PLAIN DOWN",5]
			};
		};
		if (blck_useToast) then
		{
			["InfoTitleAndText", [_mission, _message]] call ExileClient_gui_toaster_addTemplateToast;
		};		
		//diag_log format["_fn_missionNotification ====]  Paremeters _event %1  _message %2 _mission %3",_event,_message,_mission];
	};	
	fn_dynamicNotification = {
			private["_text","_screentime","_xcoord","_ycoord"];
			params["_mission","_message"];
			
			waitUntil {blck_processingMsg < 0};
			blck_processingMsg = 1;
			_screentime = 7;
			_text = format[
				"<t align='left' size='0.8' color='#4CC417'>%1</t><br/><br/>
				<t align='left' size='0.6' color='#F0F0F0'>%2</t><br/>",
				_mission,_message
				];
			_ycoord = [safezoneY + safezoneH - 0.8,0.7];
			_xcoord = [safezoneX + safezoneW - 0.5,0.35];
			[_text,_xcoord,_ycoord,_screentime,0.5] spawn BIS_fnc_dynamicText;
			uiSleep 3;  // 3 second delay before the next message
			blck_processingMsg = -1;
	};
	
	//diag_log "[blckeagls] initializing client functions";
	fn_missionNotification = {
		params["_event","_message","_mission"];

		if (blck_useSystemChat) then {systemChat format["%1",_message];};
		if (blck_useHint) then {
			hint parseText format[
			"<t align='center' size='2.0' color='#f29420'>%1</t><br/>
			<t size='1.5' color='#01DF01'>______________</t><br/><br/>
			<t size='1.5' color='#ffff00'>%2</t><br/>
			<t size='1.5' color='#01DF01'>______________</t><br/><br/>
			<t size='1.5' color='#FFFFFF'>Any loot you find is yours as payment for eliminating the threat!</t>",_mission,_message
			];	
		};
		if (blck_useDynamic) then {
			[_mission,_message] call fn_dynamicNotification;
		};		
		if (blck_useTitleText) then {
			[_message] spawn {
				params["_msg"];
				titleText [_msg, "PLAIN DOWN",5];uiSleep 5; titleText ["", "PLAIN DOWN",5]
			};
		};
		if (blck_useToast) then
		{
			["InfoTitleAndText", [_mission, _message]] call ExileClient_gui_toaster_addTemplateToast;
		};		
		//diag_log format["_fn_missionNotification ====]  Paremeters _event %1  _message %2 _mission %3",_event,_message,_mission];
	};

	fn_AI_KilledNotification = {
		private["_message","_text","_screentime","_xcoord","_ycoord"];
		_message = _this select 0;
		//diag_log format["_fn_AI_KilledNotification ====]  Paremeters _event %1  _message %2 _mission %3",_message];
		if (blck_aiKilluseSystemChat) then {systemChat format["%1",_message];};
		if (blck_aiKilluseTitleText) then {titleText [_message, "PLAIN DOWN",5];uiSleep 5; titleText ["", "PLAIN DOWN",5]};
		if (blck_aiKilluseDynamic) then {
			//diag_log format["blckClient.sqf:: dynamic messaging called for mission %2 with message of %1",_message];
			waitUntil{blck_processingKill < 0};
			blck_processingKill = 1;
			_text = format["<t align='left' size='0.5' color='#4CC417'>%1</t>",_message];
			_xcoord = [safezoneX,0.8];
			_ycoord = [safezoneY + safezoneH - 0.5,0.2];
			_screentime = 5;
			["   "+ _text,_xcoord,_ycoord,_screentime] spawn BIS_fnc_dynamicText;		
			uiSleep 3;
			blck_processingKill = -1;
		};
	};
	
	fn_handleMessage = {
		//private["_event","_msg","_mission"];
		//diag_log format["fn_handleMessage ====]  Paremeters = _this = %1",_this];
		params["_event","_message",["_mission",""]];

		//diag_log format["blck_Message ====]  Paremeters _event %1  _message %2 paramter #3 %3",_event,_message,_mission];
		//diag_log format["blck_Message ====] _message isEqualTo  %1",_message];
		
		switch (_event) do 
		{
			case "start": 
					{
						playSound "UAV_05";
						//diag_log "switch start";
						//_mission = _this select 1 select 2;
						[_event,_message,_mission] spawn fn_missionNotification;
					};
			case "end": 
					{
						playSound "UAV_03";
						//diag_log "switch end";
						//_mission = _this select 1 select 2;
						[_event,_message,_mission] spawn fn_missionNotification;
					};
			case "aikilled": 
					{
						//diag_log "switch aikilled";
						[_message] spawn fn_AI_KilledNotification;
					};
			case "DLS":
					{
						if ( (player distance _mission) < 1000) then {playsound "AddItemOK"; hint _message;systemChat _message};
					};	
			case "reinforcements":
					{
						if ( (player distance _mission) < 1000) then {playsound "AddItemOK"; ["Alert",_message] call fn_dynamicNotification;};
						//diag_log "---->>>>  Reinforcements Spotted";
					};
			case "IED":
					{
						[1] call BIS_fnc_Earthquake;
						//["IED","Bandits targeted your vehicle with an IED"] call fn_dynamicNotification;
						  ["Bandits targeted your vehicle with an IED.", 5] call Epoch_message;
						for "_i" from 1 to 3 do {playSound "BattlefieldExplosions3_3D";uiSleep 0.3;};
					};
			case "showScore":
					{
						[_message select 0, _message select 1, _message select 2] call fn_killScoreNotification;
					};
			case "warning":
					{
						[_event,_message,_mission] spawn fn_missionWarning;						
					};
		};

	};
	diag_log "blck client loaded";	
	
};