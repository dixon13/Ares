class Ares_Module_Save_Objects_For_Composition : Ares_SaveLoad_Module_Base
{
	scopeCurator = 2;
	displayName = "(DBG) Save For Comp.";
	function = "Ares_fnc_SaveObjectsForComposition";
};

class Ares_Module_Save_Objects_For_Paste : Ares_SaveLoad_Module_Base
{
	scopeCurator = 2;
	displayName = "Copy To Clipboard";
	function = "Ares_fnc_SaveObjectsForPaste";
};

class Ares_Module_Paste_Objects_Relative : Ares_SaveLoad_Module_Base
{
	scopeCurator = 2;
	displayName = "Paste At New Position";
	function = "Ares_fnc_PasteObjectsRelative";
};

class Ares_Module_Paste_Objects_Absolute: Ares_SaveLoad_Module_Base
{
	scopeCurator = 2;
	displayName = "Paste At Original Position";
	function = "Ares_fnc_PasteObjectsAbsolute";
};

class Ares_Module_Add_Items_To_Curator : Ares_SaveLoad_Module_Base
{
	scopeCurator = 2;
	displayName = "Add objects to curator";
	function = "Ares_fnc_AddObjectsToCurator";
};
