
private ["_objet", "_unite", "_objet_verrouille"];

_objet = _this select 0;
_unite = _this select 1;

_objet_verrouille = switch (R3F_LOG_CFG_lock_objects_mode) do
{
	case "side": {_objet getVariable ["R3F_LOG_proprietaire_verrou", side group _unite] != side group _unite};
	case "faction": {_objet getVariable ["R3F_LOG_proprietaire_verrou", faction _unite] != faction _unite};
	case "player": {_objet getVariable ["R3F_LOG_proprietaire_verrou", name _unite] != name _unite};
	case "unit": {_objet getVariable ["R3F_LOG_proprietaire_verrou", _unite] != _unite};
	default {false};
};

_objet_verrouille