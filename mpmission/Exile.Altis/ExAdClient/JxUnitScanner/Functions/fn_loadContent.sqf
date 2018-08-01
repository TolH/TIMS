/*  
	Copyright 2016 Jan Babor (modified by Jaxx0rr)

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
*/

private ["_display","_error","_slides","_objClass","_data","_name","_index","_pic","_log"];


_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
if (isNull _display) exitWith {_error = "Error loading XM8 JX app, display is null"; systemChat _error; diag_log _error;};

_slides = _display displayCtrl 4007;
if (isNull _slides) exitWith {_error = "Error loading XM8 JX app, slides control is null"; systemChat _error; diag_log _error;};

_log = "loadContent>>";
_log = _log + str([_display, ["Car","Air","Tank"], 200, "picC"] call ExAd_fnc_showUnits);
_log = _log + str([_display, ["Man"], 200, "picM"] call ExAd_fnc_showUnits);
_log = _log + str([_display, ["O_HMG_01_high_F","O_GMG_01_high_F"], 200, "picH"] call ExAd_fnc_showUnits); //works

//hint _log;

true