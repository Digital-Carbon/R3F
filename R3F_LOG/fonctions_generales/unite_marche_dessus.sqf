
private ["_unite", "_objet", "_contact", "_rayon", "_angle", "_pos_debut_segment", "_pos_fin_segment"];

_unite = _this select 0;
_objet = _this select 1;

_contact = false;

// On scanne autour de l'unité avec des segments répartis sur 3 cercles
for "_rayon" from 0.3 to 0.9 step 0.3 do
{
	for "_angle" from 0 to 359 step 360 / (40 * _rayon) do
	{
		_pos_debut_segment = _unite modelToWorld [_rayon*sin _angle, _rayon*cos _angle, 1];
		_pos_fin_segment = [_pos_debut_segment select 0, _pos_debut_segment select 1, -1];
		
		if (_objet in lineIntersectsWith [ATLtoASL _pos_debut_segment, ATLtoASL _pos_fin_segment, _unite, objNull, false]) then
		{
			_contact = true;
		};
	};
};

_contact