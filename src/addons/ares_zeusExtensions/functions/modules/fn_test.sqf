_logic = _this select 0;
["Test Function Called!"] call Ares_fnc_DisplayMessage;

if (local _logic) then {
	deleteVehicle _logic;
};