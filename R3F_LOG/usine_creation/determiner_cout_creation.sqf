
private ["_classe", "_categorie_toLower", "_idx_facteur_cout", "_facteur_cout", "_cout_creation"];

_classe = _this select 0;

_categorie_toLower = toLower getText (configFile >> "CfgVehicles" >> _classe >> "vehicleClass");

// Recherche de l'éventuel facteur de coût de création
_facteur_cout = 1;
{
	if (_categorie_toLower == toLower (_x select 0)) exitWith {_facteur_cout = _x select 1;};
} forEach R3F_LOG_CFG_CF_creation_cost_factor;

// Formule de calcul de coût
_cout_creation = _facteur_cout * (1 max ceil (0.01 * getNumber (configFile >> "CfgVehicles" >> _classe >> "cost")));

_cout_creation