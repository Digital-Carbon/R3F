
private ["_nombre", "_centaines", "_str_signe", "_str_nombre", "_str_centaines"];

_nombre = _this select 0;

_str_signe = if (_nombre < 0) then {"-"} else {""};
_nombre = floor abs _nombre;

_str_nombre = "";
while {_nombre >= 1000} do
{
	_centaines = _nombre - (1000 * floor (0.001 * _nombre));
	_nombre = floor (0.001 * _nombre);
	
	if (_centaines < 100) then
	{
		if (_centaines < 10) then
		{
			_str_centaines = "00" + str _centaines;
		}
		else
		{
			_str_centaines = "0" + str _centaines;
		};
	}
	else
	{
		_str_centaines = str _centaines;
	};
	
	_str_nombre = "." + _str_centaines + _str_nombre;
};

_str_signe + str _nombre + _str_nombre