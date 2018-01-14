
private ["_objet", "_unite"];

_objet = _this select 0;
_unite = _this select 1;

// Si le verrou de l'objet ne correspond pas à l'unité, on redéfini sa valeur pour lui correspondre
if (isNil {_objet getVariable "R3F_LOG_proprietaire_verrou"} || {[_objet, _unite] call R3F_LOG_FNCT_objet_est_verrouille}) then
{
	switch (R3F_LOG_CFG_lock_objects_mode) do
	{
		case "side": {_objet setVariable ["R3F_LOG_proprietaire_verrou", side group _unite, true];};
		case "faction": {_objet setVariable ["R3F_LOG_proprietaire_verrou", faction _unite, true];};
		case "player": {_objet setVariable ["R3F_LOG_proprietaire_verrou", name _unite, true];};
		case "unit": {_objet setVariable ["R3F_LOG_proprietaire_verrou", _unite, true];};
	};
};