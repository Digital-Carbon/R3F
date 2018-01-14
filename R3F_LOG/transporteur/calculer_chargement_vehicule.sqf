
private ["_transporteur", "_objets_charges", "_chargement_actuel", "_chargement_maxi"];

_transporteur = _this select 0;

_objets_charges = _transporteur getVariable ["R3F_LOG_objets_charges", []];

// Calcul du chargement actuel
_chargement_actuel = 0;
{
	if (isNil {_x getVariable "R3F_LOG_fonctionnalites"}) then
	{
		_chargement_actuel = _chargement_actuel + (([typeOf _x] call R3F_LOG_FNCT_determiner_fonctionnalites_logistique) select R3F_LOG_IDX_can_be_transported_cargo_cout);
	}
	else
	{
		_chargement_actuel = _chargement_actuel + (_x getVariable "R3F_LOG_fonctionnalites" select R3F_LOG_IDX_can_be_transported_cargo_cout);
	};
	
} forEach _objets_charges;

// Recherche de la capacité maximale du transporteur
if (isNil {_transporteur getVariable "R3F_LOG_fonctionnalites"}) then
{
	_chargement_maxi = ([typeOf _transporteur] call R3F_LOG_FNCT_determiner_fonctionnalites_logistique) select R3F_LOG_IDX_can_transport_cargo_cout;
}
else
{
	_chargement_maxi = _transporteur getVariable "R3F_LOG_fonctionnalites" select R3F_LOG_IDX_can_transport_cargo_cout;
};

[_chargement_actuel, _chargement_maxi]