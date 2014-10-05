_logic = _this select 0;
_units = _this select 1;
_activated = _this select 2;

if (_activated && local _logic) then
{
	_groupUnderCursor = [_logic] call Ares_fnc_GetGroupUnderCursor;

	if (not isnull _groupUnderCursor) then
	{
		_dialogResult = [["50m", "100m", "150m", "200m", "500m"], 0, "Choose size of patrol grid:"] call Ares_fnc_GetDialogChoiceFromUser;
		if (_dialogResult != -1) then
		{
			_radius = 50;
			switch (_dialogResult) do
			{
				case 0: { _radius = 50; };
				case 1: { _radius = 100; };
				case 2: { _radius = 150; };
				case 3: { _radius = 200; };
				case 4: { _radius = 500; };
				default { _radius = 50; };
			};
			
			// Make the group walk
			_groupUnderCursor setBehaviour "SAFE";
			
			// Make a box with the unit's current location at the center. Takes 4 WP's (for each corner) and then one for the cycle.
			_centerPoint = position _logic;
			_waypoint = _groupUnderCursor addWaypoint [[(_centerPoint select 0) + (0.5 * _radius), (_centerPoint select 1) + (0.5 * _radius)], 5];
			_waypoint = _groupUnderCursor addWaypoint [[(_centerPoint select 0) - (0.5 * _radius), (_centerPoint select 1) + (0.5 * _radius)], 5];
			_waypoint = _groupUnderCursor addWaypoint [[(_centerPoint select 0) - (0.5 * _radius), (_centerPoint select 1) - (0.5 * _radius)], 5];
			_waypoint = _groupUnderCursor addWaypoint [[(_centerPoint select 0) + (0.5 * _radius), (_centerPoint select 1) - (0.5 * _radius)], 5];
			_waypoint = _groupUnderCursor addWaypoint [[(_centerPoint select 0) + (0.5 * _radius), (_centerPoint select 1) + (0.5 * _radius)], 5];
			_waypoint setWaypointType "CYCLE";
			
			[objnull, "Circular patrol path setup for units."] call bis_fnc_showCuratorFeedbackMessage;
		};
	};
};

deleteVehicle _logic;
true