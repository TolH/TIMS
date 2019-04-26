params["_display","_slide","_idc"];
private ["_recipesRecipeList","_goCraftBtn","_backbtn","_recipeList","_recipesPic","_componentsList","_RecipeCategories","_j","_CategoryConfig","_RecipeCategory","_newParent"];
disableSerialization;

_pW = 0.025;
_pH = 0.04;
_footTop = 0.04;
_slideClass = "BRAmaRecipes";

_newParent = [_display,_slide,([_slideClass,"ctrlGrp"] call ExAd_fnc_getNextIDC),[0, -0.03, 34 * _pW, 0.76]] call ExAd_fnc_createCtrlGrp;
_newParent ctrlEnable true;
_recipesCategories = _display ctrlCreate ["RscCombo", 85505,_newParent];
_recipesCategories ctrlSetPosition [0.01, 0.1,0.38,0.04];  
_recipesCategories ctrlSetEventHandler ["LBSelChanged", "_this call fnc_recipe_Load"];
_recipesCategories ctrlCommit 0;

_goCraftBtn = _display ctrlCreate ["RscButtonMenu", 85503,_newParent];
_goCraftBtn ctrlSetPosition [0.4,0.1,0.21,0.04]; 
_goCraftBtn ctrlCommit 0;
_goCraftBtn ctrlSetText "Craft";
_goCraftBtn ctrlSetEventHandler ["ButtonClick", "SelectedRecipe call ExileClient_gui_crafting_show;"];

_backbtn = _display ctrlCreate ["RscButtonMenu", 85504,_newParent];
_backbtn ctrlSetPosition [0.62,0.1,0.20,0.04]; 
_backbtn ctrlCommit 0;
_backbtn ctrlSetText "Go Back";
_backbtn ctrlSetEventHandler ["ButtonClick", "['extraApps', 1] call ExileClient_gui_xm8_slide"];

_recipeList = _display ctrlCreate ["RscListBox", 85501,_newParent];
_recipeList ctrlSetPosition [0.01, 0.16, 0.38, 0.28]; 
_recipeList ctrlSetEventHandler ["LBSelChanged", "_this call fnc_components_Load;"];
_recipeList ctrlCommit 0;

_recipesPic = _display ctrlCreate ["RscPictureKeepAspect", 85507,_newParent];
_recipesPic ctrlSetPosition [0.01, 0.43, 0.38, 0.28];
_recipesPic ctrlCommit 0;
_RecipePic ctrlSetText BRAmaRecipesPath + "\BRAma.paa";


_componentsList = _display ctrlCreate ["RscListBox", 85502,_newParent];
_componentsList ctrlSetPosition [0.4, 0.16, 0.42, 0.57]; 
_componentsList ctrlCommit 0;

_RecipeCategories = [];

for '_j' from 0 to (count (missionConfigFile >> "CfgCraftingRecipes"))-1 do
{
	_CategoryConfig = (missionConfigFile >> "CfgCraftingRecipes") select _j;
	
	_RecipeCategory = getText(_CategoryConfig >> "category");	

	if!(_RecipeCategory in _RecipeCategories)then{_RecipeCategories pushBack _RecipeCategory;};		
	_RecipeCategory = "Uncategorised";
	if!(_RecipeCategory in _RecipeCategories)then{_RecipeCategories pushBack _RecipeCategory;};

};

lbClear _recipesCategories;
{
 _recipesCategories lbAdd Format["%1",_x];
 _recipesCategories lbSetData [_forEachIndex,_x];	
} foreach _RecipeCategories;

lbSort _recipesCategories;
_recipesCategories lbSetCurSel 0;
