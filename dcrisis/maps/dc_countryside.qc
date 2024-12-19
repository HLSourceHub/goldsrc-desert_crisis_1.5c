// dc_countrysides's qc file
// Currently supported commands:
// set - changes a cvar
// delete - deletes all matching entities
// create - creates a new entity (point entities only)
// rename - renames one entity type to another (usage "$rename info_player_deathmatch info_player_start")
// replace - delete matching entity and replace with newly defined one (point entities only)
// change - change key/values pairs in matching entities

// fog
$create
{
classname	env_fog
fog_start	0
fog_end		5500
rendercolor	"90 90 95"
spawnflags	0
}