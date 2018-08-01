 with uiNamespace do {  
  ctrlDelete (uiNamespace getVariable "AI_capture_radiotower_img");  
  ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_img");  
  PL_capture_radiotower_img = findDisplay 46 ctrlCreate ["RscStructuredText", -1];   
  PL_capture_radiotower_img ctrlSetScale 2;  
  PL_capture_radiotower_img ctrlSetPosition [0.91, 0.978, 1, 1]; 
  PL_capture_radiotower_img ctrlSetStructuredText parseText "<img image='\A3\weapons_f\items\data\ui\gear_gps_CA.paa'/> "; 
  PL_capture_radiotower_img ctrlCommit 0;   
 
  ctrlDelete (uiNamespace getVariable "AI_capture_radiotower_img2");
  ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_img2");
  PL_capture_radiotower_img2 = findDisplay 46 ctrlCreate ["RscStructuredText", -1];   
  PL_capture_radiotower_img2 ctrlSetScale 1.3;  
  PL_capture_radiotower_img2 ctrlSetPosition [0.988, 0.940, 1, 1];    
  PL_capture_radiotower_img2 ctrlSetStructuredText parseText "<img image='\A3\data_f\Flags\flag_nato_co.paa'/> "; 
  PL_capture_radiotower_img2 ctrlCommit 0;  
 
  ctrlDelete (uiNamespace getVariable "AI_capture_radiotower_progressBar");  
  ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_progressBar"); 
  PL_capture_radiotower_progressBar = findDisplay 46 ctrlCreate ["RscProgress", -1];  
  PL_capture_radiotower_progressBar ctrlSetTextColor [0.73, 0.24, 0.11, 1]; 
  PL_capture_radiotower_progressBar ctrlSetScale 1.4;  
  PL_capture_radiotower_progressBar ctrlSetPosition [1, 1.005 ,0.08 , 0.02];  
  PL_capture_radiotower_progressBar progressSetPosition 0;  
  PL_capture_radiotower_progressBar ctrlCommit 0;  
    
  ctrlDelete (uiNamespace getVariable "AI_capture_radiotower_progress_text");  
  ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_progress_text");  
  PL_capture_radiotower_progress_text = findDisplay 46 ctrlCreate ["RscStructuredText", -1];  
  PL_capture_radiotower_progress_text ctrlSetScale 1;  
  PL_capture_radiotower_progress_text ctrlSetPosition [0.995, 1];  
  PL_capture_radiotower_progress_text ctrlCommit 0;  
 }; 
 [ "TIMER", "onEachFrame", {  
   params[ "_start", "_end"];  
   _progress = linearConversion [_start, _end, time, 0, 1];  
   (uiNamespace getVariable "PL_capture_radiotower_progressBar") progressSetPosition _progress;  
   (uiNamespace getVariable "PL_capture_radiotower_progress_text") ctrlSetStructuredText parseText format["%1%2", round(100*_progress), "%"];  
    if (_progress > 1) then {  
    [ "TIMER", "onEachFrame" ] call BIS_fnc_removeStackedEventHandler;  
    ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_progressBar");  
    ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_progress_text");  
    ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_img");
	ctrlDelete (uiNamespace getVariable "PL_capture_radiotower_img2");
    };  
}, [time, time + 60]] call BIS_fnc_addStackedEventHandler;

private ["_towns", "_RandomTownPosition", "_marker1_Deactivated_POS", "_marker1", "_marker1POS", "_LoopStart", "_endLoop", "_TimeLeft"];
	_towns = nearestLocations [position player, ["NameVillage","NameCity","NameCityCapital"], 40000];
	_RandomTownPosition = position (_towns select (floor (random (count _towns))));
	_marker1_Deactivated_POS = [18495.582, 21007.387, -1.4075165];
	_marker1 = createMarker ["MARKER1", _RandomTownPosition];
	_marker1POS = getMarkerPos "MARKER1";
	FOG_TRIGGER setPos _marker1POS;
	"MARKER1" setMarkerShape "ELLIPSE";
	"MARKER1" setMarkerSize [600,600];
	"MARKER1" setMarkerColor "ColorRed";
	"MARKER1" setMarkerBrush "SolidFull";
	"MARKER1" setMarkerAlpha 0.70;
	_LoopStart = 1;
	_endLoop = 0;
	_TimeLeft = 60;
		while {_LoopStart isEqualTo 1} do 
		{
		  _TimeLeft = _TimeLeft -1;
		  uiSleep 1;
		  	if (_TimeLeft isEqualTo 54) then 
			{
				"MARKER1" setMarkerSize [540,540];
			};
		  	if (_TimeLeft isEqualTo 48) then 
			{
				"MARKER1" setMarkerSize [480,480];
			};
		  	if (_TimeLeft isEqualTo 42) then 
			{
				"MARKER1" setMarkerSize [420,420];
			};
		  	if (_TimeLeft isEqualTo 36) then 
			{
				"MARKER1" setMarkerSize [360,360];
			};
		  	if (_TimeLeft isEqualTo 30) then 
			{
				"MARKER1" setMarkerSize [300,300];
			};
		  	if (_TimeLeft isEqualTo 24) then 
			{
				"MARKER1" setMarkerSize [240,240];
			};
		  	if (_TimeLeft isEqualTo 18) then 
			{
				"MARKER1" setMarkerSize [180,180];
			};
		  	if (_TimeLeft isEqualTo 12) then 
			{
				"MARKER1" setMarkerSize [120,120];
			};
		  	if (_TimeLeft isEqualTo 6) then 
			{
				"MARKER1" setMarkerSize [60,60];
			};
		  	if (_TimeLeft isEqualTo 0) then 
			{
				"MARKER1" setMarkerSize [0,0];
				_endLoop = 1;
			};
		  	if (_endLoop isEqualTo 1) then 
			{
				_LoopStart = 0;
			};
		};
deleteMarker "MARKER1";
FOG_TRIGGER setPos _marker1_Deactivated_POS;