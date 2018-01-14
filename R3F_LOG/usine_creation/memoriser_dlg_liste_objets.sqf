
disableSerialization; // A cause des displayCtrl

private ["_dlg_liste_objets"];

#include "dlg_constantes.h"

_dlg_liste_objets = findDisplay R3F_LOG_IDD_dlg_liste_objets;

(uiNamespace getVariable "R3F_LOG_dlg_LO_usine") setVariable ["R3F_LOG_CF_mem_idx_categorie", lbCurSel (_dlg_liste_objets displayCtrl R3F_LOG_IDC_dlg_LO_liste_categories)];
(uiNamespace getVariable "R3F_LOG_dlg_LO_usine") setVariable ["R3F_LOG_CF_mem_idx_objet", lbCurSel (_dlg_liste_objets displayCtrl R3F_LOG_IDC_dlg_LO_liste_objets)];