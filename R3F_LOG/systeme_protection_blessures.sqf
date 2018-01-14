
/** Contient la liste de tous les objets en cours de déplacements manuels */
R3F_LOG_liste_objets_en_deplacement = [];

R3F_LOG_FNCT_PVEH_nouvel_objet_en_deplacement =
{
	private ["_objet"];
	
	_objet = _this select 1;
	
	R3F_LOG_liste_objets_en_deplacement = R3F_LOG_liste_objets_en_deplacement - [_objet];
	R3F_LOG_liste_objets_en_deplacement pushBack _objet;
	
	_objet allowDamage false;
};
"R3F_LOG_PV_nouvel_objet_en_deplacement" addPublicVariableEventHandler R3F_LOG_FNCT_PVEH_nouvel_objet_en_deplacement;

R3F_LOG_FNCT_PVEH_fin_deplacement_objet =
{
	private ["_objet"];
	
	_objet = _this select 1;
	
	R3F_LOG_liste_objets_en_deplacement = R3F_LOG_liste_objets_en_deplacement - [_this select 1];
	
	// Limitation : si l'objet a été "allowDamage false" par ailleurs, il ne le sera plus. Voir http://feedback.arma3.com/view.php?id=19211
	_objet allowDamage true;
};
"R3F_LOG_PV_fin_deplacement_objet" addPublicVariableEventHandler R3F_LOG_FNCT_PVEH_fin_deplacement_objet;

R3F_LOG_FNCT_EH_HandleDamage =
{
	private ["_unite", "_selection", "_blessure", "_source"];
	
	_unite = _this select 0;
	_selection = _this select 1;
	_blessure = _this select 2;
	_source = _this select 3;
	
	if (
		// Filtre sur les blessures de type choc/collision
		_this select 4 == "" && {(isNull _source || _source == _unite || _source in R3F_LOG_liste_objets_en_deplacement)
		&& {
			// Si l'unité est potentiellement en collision avec un objet en cours de déplacement
			{
				!isNull _x &&
				{
					// Calcul de collision possible unité-objet
					[
						_x worldToModel (_unite modelToWorld [0,0,0]), // position de l'unité dans le repère de l'objet en déplacement
						(boundingBoxReal _x select 0) vectorDiff [12, 12, 12], // bbox min élargie (zone de sûreté)
						(boundingBoxReal _x select 1) vectorAdd [12, 12, 12] // bbox max élargie (zone de sûreté)
					] call R3F_LOG_FNCT_3D_pos_est_dans_bbox
				}
			} count R3F_LOG_liste_objets_en_deplacement != 0
		}
	}) then
	{
		// Retourner la valeur de blessure précédente de l'unité
		if (_selection == "") then
		{
			damage _unite
		}
		else
		{
			_unite getHit _selection
		};
	};
};

sleep 5;

while {true} do
{
	private ["_idx_objet"];
	
	// Vérifier que les unités locales à la machine sont gérées, et ne plus gérées celles qui ne sont plus locales
	// Par chaque unité
	{
		// Unité non gérée
		if (isNil {_x getVariable "R3F_LOG_idx_EH_HandleDamage"}) then
		{
			// Et qui est locale
			if (local _x) then
			{
				// Event handler de à chaque blessure, vérifiant si elle est due à un objet en déplacement
				_x setVariable ["R3F_LOG_idx_EH_HandleDamage", _x addEventHandler ["HandleDamage", {_this call R3F_LOG_FNCT_EH_HandleDamage}]];
			};
		}
		// Unité déjà gérée
		else
		{
			// Mais qui n'est plus locale
			if (!local _x) then
			{
				// Suppresion des event handler de gestion des blessures
				_x removeEventHandler ["HandleDamage", _x getVariable "R3F_LOG_idx_EH_HandleDamage"];
				_x setVariable ["R3F_LOG_idx_EH_HandleDamage", nil];
			};
		};
	} forEach call {// Calcul du paramètre du forEach
		/*
		 * Sur un serveur non-dédié, on ne protège que le joueur et son groupe (économie de ressources)
		 * Les IA non commandées par des joueurs ne seront donc pas protégées, ce qui est un moindre mal.
		 */
		if (isServer && !isDedicated) then {if (!isNull player) then {units group player} else {[]}}
		/*
		 * Chez un joueur (ou un serveur dédié), on protège toutes les unités locales.
		 * Dans la pratique un serveur dédié n'appelle pas ce script, par choix, pour économiser les ressources.
		 */
		else {allUnits}
	};
	
	// Vérifier l'intégrité de la liste des objets en cours de déplacements, et la nettoyer si besoin
	for [{_idx_objet = 0}, {_idx_objet < count R3F_LOG_liste_objets_en_deplacement}, {;}] do
	{
		private ["_objet"];
		
		_objet = R3F_LOG_liste_objets_en_deplacement select _idx_objet;
		
		if (isNull _objet) then
		{
			R3F_LOG_liste_objets_en_deplacement = R3F_LOG_liste_objets_en_deplacement - [objNull];
			
			// On recommence la validation de la liste
			_idx_objet = 0;
		}
		else
		{
			// Si l'objet n'est plus déplacé par une unité valide
			if !(isNull (_objet getVariable ["R3F_LOG_est_deplace_par", objNull]) ||
				{alive (_objet getVariable "R3F_LOG_est_deplace_par") && isPlayer (_objet getVariable "R3F_LOG_est_deplace_par")}
			) then
			{
				["R3F_LOG_PV_fin_deplacement_objet", _objet] call R3F_LOG_FNCT_PVEH_fin_deplacement_objet;
				
				// On recommence la validation de la liste
				_idx_objet = 0;
			}
			// Si l'objet est toujours en déplacement, on poursuit le parcours de la liste
			else {_idx_objet = _idx_objet+1;};
		};
	};
	
	sleep 90;
};