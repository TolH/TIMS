/*  
	onLoad.sqf

	Copyright 2016 Jan Babor

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
params["_display","_slide","_idc"];

_pW = 0.025;
_pH = 0.04;
_leftCol = 1;
_leftColW = 12.8;
_rightCol = _leftCol + _leftColW + 2;
_rightColW = _leftColW + 3;
_margin = 0.2;

//_isw = _pW*0.65;
//_ish = _pH*0.5;

_isw = _pW*0.32;
_ish = _pH*0.25;

_slideClass = "ExAd_JX";

//[_display,_slide,([_slideClass,"picBg"] call ExAd_fnc_getNextIDC),[0, 1.5 * _pH, (_leftColW + _rightCol + 5.3) * _pW, 16 * _pH],"ExAdClient\XM8\Apps\JX\radar.paa",[1,1,1,1],false,false,""] call ExAd_fnc_createPicture;

[_display,_slide,([_slideClass,"picBg"] call ExAd_fnc_getNextIDC),[0, 1.5 * _pH, (_leftColW + _rightCol + 5.3) * _pW, 16 * _pH],"ExAdClient\XM8\Apps\JX\radar.jpg",[1,1,1,1],false,false,""] call ExAd_fnc_createPicture;

_i = 1;
while {_i <= 20} do {
	_pname = format ["picM%1", _i];
	[_display,_slide,([_slideClass,_pname] call ExAd_fnc_getNextIDC), [0, 0, _isw, _ish], "ExAdClient\XM8\Apps\JX\icon_man.paa", [0,0,0,0], false, false, ""] call ExAd_fnc_createPicture;
	_pname = format ["picC%1", _i];
	[_display,_slide,([_slideClass,_pname] call ExAd_fnc_getNextIDC), [0, 0, _isw, _ish], "ExAdClient\XM8\Apps\JX\icon_car.paa", [0,0,0,0], false, false, ""] call ExAd_fnc_createPicture;
	_pname = format ["picH%1", _i];
	[_display,_slide,([_slideClass,_pname] call ExAd_fnc_getNextIDC), [0, 0, _isw, _ish], "ExAdClient\XM8\Apps\JX\icon_hmg.paa", [0,0,0,0], false, false, ""] call ExAd_fnc_createPicture;
	_pname = format ["picZ%1", _i];
	[_display,_slide,([_slideClass,_pname] call ExAd_fnc_getNextIDC), [0, 0, _isw, _ish], "ExAdClient\XM8\Apps\JX\icon_zom.paa", [0,0,0,0], false, false, ""] call ExAd_fnc_createPicture;
	_i =_i + 1;
};

//[_display,_slide,([_slideClass,"log"] call ExAd_fnc_getNextIDC),[1 * _pW, 1 * _pH, 30 * _pW, 30 * _pH],"test","PuristaMedium",1,"#ffffff","left",1] call ExAd_fnc_createStructuredText;

[_display,_slide,([_slideClass,"rescanButton"] call ExAd_fnc_getNextIDC),[0.3 * _pW, 17.7 * _pH, 6 * _pW, 1 * _pH],'call ExAd_fnc_loadContent;',"Rescan"] call ExAd_fnc_createButton;

[_display,_slide,([_slideClass,"backButton"] call ExAd_fnc_getNextIDC),[27.6 * _pW, 17.7 * _pH, 6 * _pW, 1 * _pH],'["extraApps", 1] call ExileClient_gui_xm8_slide;',"Go Back"] call ExAd_fnc_createButton;


true