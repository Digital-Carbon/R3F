# R3F
Not mine, i just share it with those who want it for Exile.
It comes pre-configured for selling of crates.

# R3F-Crate-Selling
Crate Selling scripts for R3F and Exile. Complete with infiSTAR logging functionality. Join my Discord at http://discord.gamingatdeathsdoor.com if you have any problems.

Original Script found here: http://www.exilemod.com/topic/19038-sell-crates-at-wastedump-r3f-required/ My version, adds the pop tabs to the player, updates the player's respect and deletes the crate from the world. Deleting the crate prevents other players from taking the money.

# Install Instructions
Original instuctions found here:
http://team-r3f.org/madbull/logistics/EN_DOCUMENTATION.pdf

## Short instructions for quick setup.
Copy the R3F_LOG folder into your mission file (Exile.Mapname.pbo) after de-pboing it of course.

Create a file in your mission file (Exile.mapname.pbo) called init.sqf, or if you already have an init.sqf add the following:
execVM "R3F_LOG\init.sqf";

Then in the description.ext add the following outside of any brackets:
#include "R3F_LOG\desc_include.h"

## Crate Selling Install
Pack the gadd_extras folder into a PBO and drop it into your @ExileServer\addons folder.

If you use infiSTAR set _useInfiSTAR to true in mpmission.mapname.pbo\R3F_LOG\objet_deplacable\relacher.sqf

Configure everything else how you want it in the relacher.sqf. Configurable things have comments next to them. DO NOT EDIT ANYTHING ELSE UNLESS YOU KNOW WHAT YOU ARE DOING!!!!!!

# Configuring R3F
There is a file called "config.sqf" inside the R3F-LOG folder, it is here that you can add vehicles/crates for transport purposes. The script is already configured with Vanilla and RHS vehicles and is set up so if the vehicle looks like it can carry a crate, it will. None of this crate on a quadbike BS.
You do not need to remove any vehicles/crates even if you don't use them in your server, just leave them there as it's configured if you do decide to add those vehicles later.
Simply add more vehicles/crates if needs be. Remember to add crates to the relacher document as well as here if you decide to add more. There is already most of them listed, however. 
Vehicle Towing is not configured, you can also do that in the config.sqf
