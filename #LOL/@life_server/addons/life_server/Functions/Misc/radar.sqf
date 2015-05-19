if (!isServer) exitWith {};
_radar = _this;
_maxspeed = 120;


while {true} do {
    waitUntil {count ((getPosAtl _radar) nearEntities 25) > 0};
    _pos = getPosATL _radar;
    _entities = _pos nearEntities 25;
    if (count _entities > 0) then {
        {
            _vehicle = assignedVehicle _x;
            if !(isNull _vehicle) then {
                _role = assignedVehicleRole _x;
                if (count _role > 0) then {
                    if ((_role select 0) != "Driver") then {
                        _dude = assignedDriver _vehicle;
                    }
                    else {
                        _dude = _x;
                    };
                    _speed = speed _vehicle;
                    if (round (_speed) > _maxspeed) then {
                        _heading = round (getDir _vehicle);
                        while {_heading > 359} do {
                            _heading = _heading - 360;
                        };
                        _hitsrange = false;
                        _streetheading = getDir _radar;
                        _zerowrap = false;
                        _min = _streetheading - 30;
                        if (_min < 0) then {
                            _min = _min + 360;
                            _zerowrap = true;
                        };
                        _max = _streetheading + 30;
                        if (_max > 359) then {
                            _max = _max - 360;
                            _zerowrap = true;
                        };
                        if (_zerowrap) then {
							if ((_heading >= _min) or (_heading <= _max)) then {
								_hitsrange = true;
                            };
                        } else {
                            if ((_heading >= _min) and (_heading <= _max)) then {
                                _hitsrange = true;
                            };
                        }; 
                        if (!_hitsrange) then {
                            if (_heading >= 180) then {
                                _heading = _heading - 180;
                            }
                            else {
                                _heading = _heading + 180;
                            };
                            if (_zerowrap) then {
                                if ((_heading >= _min) or (_heading <= _max)) then {
                                    _hitsrange = true;
                                };
                            }
                            else {
                                if ((_heading >= _min) and (_heading <= _max)) then {
                                    _hitsrange = true;
                                };
                            };
                        };
                        if (_hitsrange) then {
                            //hits heading range. now finally check if dude is in front of radar
                            _PX = [_pos select 0,_pos select 1];
                            switch (true) do {
                                case (_heading == 0): {
                                    _PY = [_pos select 0,(_pos select 1)+25];
                                };
                                case (_heading < 90): {
                                    _PY = [(_pos select 0)+((sin _heading) * 25),(_pos select 1)+((sin (90-_heading))*25)];
                                };
                                case (_heading == 90): {
                                    _PY = [(_pos select 0)+25,_pos select 1];
                                };
                                case (_heading < 180): {
                                    _PY = [(_pos select 0)+((sin (90-(_heading - 90)))*25),(_pos select 1)-((sin (_heading - 90))*25)];
                                };
                                case (_heading == 180): {
                                    _PY = [_pos select 0,(_pos select 1)-25];
                                };
                                case (_heading < 270): {
                                    _PY = [(_pos select 0)-((sin (_heading - 180))*25),(_pos select 1)-((sin (90-(_heading-180)))*25)];
                                };
                                case (_heading == 270): {
                                    _PY = [(_pos select 0)-25,_pos select 1];
                                };
                                case (_heading < 360): {
                                    _PY = [(_pos select 0)-((sin (90-(_heading-270)))*25),(_pos select 1)+((sin (_heading-270))*25)];
                                };
                            };
                            _PZ = [(getPosATL _vehicle) select 0,(getPosATL _vehicle) select 1];
                            
                            _rXY = [(_PY select 0)-(_PX select 0),(_PY select 1)-(_PX select 1)];
                            _rXZ = [(_PZ select 0)-(_PX select 0),(_PZ select 1)-(_PX select 1)];
                            
                            _scalar = ((_rXY select 0)*(_rXZ select 0)) + ((_rXY select 1)*(_rXZ select 1));
                            
                            //if scalar product < 0 then the vehicle stands in front of the radar
                            if (_scalar < 0) then {
								[_speed,"life_fnc_radarFlash",_dude,false] spawn life_fnc_MP;
                                sleep 5;
                            }
                        };
                    };
                };
            };
        } forEach _entities;
    } else {
        sleep 0.1;
    };
};