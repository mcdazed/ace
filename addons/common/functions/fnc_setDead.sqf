#include "..\script_component.hpp"
/*
 * Author: johnb43
 * Kills a unit without changing visual appearance.
 *
 * Arguments:
 * 0: Unit <ARRAY>
 * 1: Reason for death (only used if ace_medical is loaded) <STRING> (default: "")
 * 2: Killer (vehicle that killed unit) <ARRAY> (default: objNull)
 * 3: Instigator (unit who pulled trigger) <ARRAY> (default: objNull)
 *
 * Return Value:
 * None
 *
 * Example:
 * [cursorObject, "", player, player] call ace_common_fnc_setDead;
 *
 * Public: Yes
 */

params [["_unit", objNull, [objNull]], ["_reason", "", [""]], ["_source", objNull, [objNull]], ["_instigator", objNull, [objNull]]];

if (!local _unit) exitWith {
    WARNING_1("setDead executed on non-local unit - %1",_this);
};
