
waitUntil {!isNil "R3F_LOG_active"};

private ["_comment", "_montrer_categories_vides", "_retour_liste_cfgVehicles_par_categories", "_cfgVehicles_categories", "_cfgVehicles_par_categories", "_nb_categories", "_idx_categorie", "_align_comma", "_x"];

_comment = if (count _this > 0) then {_this select 0} else {true};
_montrer_categories_vides = if (count _this > 1) then {_this select 1} else {false};

_retour_liste_cfgVehicles_par_categories = [objNull, _montrer_categories_vides] call R3F_LOG_FNCT_recuperer_liste_cfgVehicles_par_categories;

_cfgVehicles_categories = _retour_liste_cfgVehicles_par_categories select 0;
_cfgVehicles_par_categories = _retour_liste_cfgVehicles_par_categories select 1;

diag_log text "R3F_LOG_CFG_CF_your_own_categories_list =";
diag_log text "[";

_nb_categories = count _cfgVehicles_categories;
for [{_idx_categorie = 0}, {_idx_categorie < _nb_categories}, {_idx_categorie = _idx_categorie+1}] do
{
	if (_comment) then
	{
		// Formatage du tableau sans virgule pour le dernier élément + alignement des commentaires
		_align_comma = if (_idx_categorie != _nb_categories-1) then {","} else {" "};
		for "_x" from 1 to (32 - count toArray (_cfgVehicles_categories select _idx_categorie)) do {_align_comma = _align_comma + " ";};
		
		// Dump des infos de la catégorie
		diag_log text format
		[
			"    ""%1""%2 // %3 (%4 entries)",
			_cfgVehicles_categories select _idx_categorie,
			_align_comma,
			getText (configFile >> "CfgVehicleClasses" >> (_cfgVehicles_categories select _idx_categorie) >> "displayName"),
			count (_cfgVehicles_par_categories select _idx_categorie)
		];
	}
	else
	{
		_align_comma = if (_idx_categorie != _nb_categories-1) then {","} else {""};
		
		// Dump des infos de la catégorie
		diag_log text format
		[
			"    ""%1""%2",
			_cfgVehicles_categories select _idx_categorie,
			_align_comma
		];
	};
};

diag_log text "];";