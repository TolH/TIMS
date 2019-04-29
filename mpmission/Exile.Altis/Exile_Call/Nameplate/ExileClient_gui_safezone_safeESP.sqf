/**
 * ExileClient_gui_safezone_safeESP
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *		isPlayer     if (isPlayer _x) then
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_espRenderRange", "_drone", "_distance1", "_alpha1", "_clr1", "_crew1", "_pos1", "_font1", "_name1"];
_espRenderRange = _this;
_drone = getConnectedUAV player;
if (!(isNull _drone) && {((UAVControl _drone) select 0) isEqualTo player} && {!(((UAVControl _drone) select 1) isEqualTo "")}) exitWith {};
if (!isNull cameraOn) then
{
	{
		if (!isNull _x) then
		{
			if (isPlayer _x) then
			{
				if !(isObjectHidden _x) then 
				{
					_font1 = "RobotoCondensedBold";
					_distance1 = cameraOn distance _x;
					_alpha1 = (1-(_distance1/_espRenderRange));
					_clr1 = [0,0.9,0,_alpha1];
					_crew1 = crew (vehicle _x);
					_name1 = '';
					{
						if(_forEachIndex == 0) then
						{
							_name1 = _name1 + format['%1 [%2m]',name _x, round(player distance _x)];
						}
						else
						{
							if (alive _x) then 
							{
								_name1 = _name1 + format['%1 [%2m]', name _x, round(player distance _x)];
							};
						};
					}forEach _crew1;
					_pos1 = _x modelToWorldVisual (_x selectionPosition "head");
					_pos1 set[2, (_pos1 select 2) + 1];
					drawIcon3D["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoPut_ca.paa", _clr1, _pos1, 0.70, 0.70, 0, _name1, 2, 0.032, _font1];
				};
			};
			//ALL I_Soldier_VR_F TEAM
			if (_x isKindOf "I_Soldier_VR_F") then
			{
				private _font2 = "RobotoCondensedBold";
				private _distance2 = cameraOn distance _x;
				private _alpha2 = (1-(_distance2/1000));
				private _clr2 = [0.1,0.9,0,_alpha2];
				private _crew2 = crew (vehicle _x);
				private _name2 = '';
				{
					if(_forEachIndex == 0) then
					{
						_name2 = '';
					}
					else
					{
						if (alive _x) then 
						{
							_name2 = '';
						};
					};
				}forEach _crew2;
				private _pos2 = _x modelToWorldVisual (_x selectionPosition "head");
				_pos2 set[2, (_pos2 select 2) + 0.50];
				drawIcon3D["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\face_ca.paa", _clr2, _pos2, 0.60, 0.60, 0, _name2, 2, 0.032, _font2];
			};
			//BONUS LOOT FROM VEHICLES
			if (typeOf _x == "Box_I_UAV_06_medical_F") then 
			{
				private _font3 = "RobotoCondensedBold";
				private _distance3 = cameraOn distance _x;
				private _alpha3 = (1-(_distance3/1000));
				private _clr3 = [0.1,0,0.9,_alpha3];
				private _crew3 = crew (vehicle _x);
				private _name3 = '';
				{
					if(_forEachIndex == 0) then
					{
						_name3 = '';
					}
					else
					{
						if (alive _x) then 
						{
							_name3 = '';
						};
					};
				}forEach _crew3;
				private _pos3 = _x modelToWorldVisual (_x selectionPosition "head");
				_pos3 set[2, (_pos3 select 2) + 0.50];
				drawIcon3D["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMisc_ca.paa", _clr3, _pos3, 0.60, 0.60, 0, _name3, 2, 0.032, _font3];
			};
			//RACING EVENTS ONLY SHOW FOR ACTUAL RACER
			if ((_x isKindOf "B_Soldier_VR_F") && (PLAYER_IS_RACING == 1) && (isObjectHidden _x)) then 
			{
				private _font4 = "RobotoCondensedBold";
				private _distance4 = cameraOn distance _x;
				private _alpha4 = (1-(_distance4/3000));
				private _clr4 = [1,1,1,_alpha4];//WHITE
				private _crew4 = crew (vehicle _x);
				private _name4 = '';
				if (RACETIMER > 60) then { _clr4 = [1,1,1,_alpha4]; }; //WHITE
				if (RACETIMER <= 60) then { _clr4 = [0.9,0.8,0.2,_alpha4]; }; //yellow
				if (RACETIMER < 30) then { _clr4 = [1,0.1,0.1,_alpha4]; }; //red
				{
					if(_forEachIndex == 0) then
					{
						_name4 = _name4 + format['[%1m]||[--%2--]', round(player distance _x), [(RACETIMER/3600),"HH:MM:SS"] call BIS_fnc_timetostring];
						//_name4 = '';
					}
					else
					{
						if (alive _x) then 
						{
							_name4 = _name4 + format['[%1m]||[-%2-]', round(player distance _x), [(RACETIMER/3600),"HH:MM:SS"] call BIS_fnc_timetostring];
							//_name4 = '';
						};
					};
				}forEach _crew4;
				private _pos4 = _x modelToWorldVisual (_x selectionPosition "head");
				_pos4 set[2, (_pos4 select 2) + 0.50];
				drawIcon3D["a3\ui_f\data\gui\Rsc\RscDisplayOptionsVideo\icon_performance.paa", _clr4, _pos4, 0.52, 0.52, 0, _name4, 2, 0.028, _font4];
			};
		};
	}forEach ((cameraOn nearEntities[['Exile_Unit_Player', 'I_Soldier_VR_F', 'Box_I_UAV_06_medical_F', 'B_Soldier_VR_F', 'LandVehicle', 'Ship', 'Air'], _espRenderRange]) - [cameraOn, vehicle cameraOn]);
};
true