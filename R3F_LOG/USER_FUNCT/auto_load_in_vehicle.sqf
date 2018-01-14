
if (isServer) then
{
	waitUntil {!isNil "R3F_LOG_active"};
	
	if (R3F_LOG_active) then
	{
		_this call R3F_LOG_FNCT_transporteur_charger_auto;
	};
};