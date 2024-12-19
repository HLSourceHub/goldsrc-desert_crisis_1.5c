-------------------------------------
Desert Crisis 1.5c
http://www.desertcrisis.net/
-------------------------------------

v1.5c
-------
[06.05.03]
-fixed weapon slots bug
-fixed some issues with the latest version of Akimbot
-fixed a bug in warning info_objectives that share a targetname with another entity
-updated easter egg access
-updated FGD
-new RELAY Trigger type
-fixed a bug in delayed SET triggers
-fixed the chaingun capping bug
-fixed a bug causing the hud to not update when cl_lw was set to 0
-fixed wootastic deagle and rbull damage (similar damage/minute as the other pistols now)
-c4 no longer disappears in ceilings
-mappers can now define multiple in-map weapon restrictions
-fixed $change command in mapscript


v1.5
-------
[04.07.03]

*NEW FEATURES*
-All New USA player models
-brand new hud and color scheme
-new css w/ item descriptions
-brand new "QuickCSS", a simpiler group of selection menus to be used during the round to quickly change weapons
-new maps dc_sandtorn and dc_alienrelic
-updated maps with new features
-new arm models and skins
-new flamethrower model, effects, and animations
-new katana model and animations
-Improved ingame music
-3d objective location sprites to help learns maps faster, +info to show the sprites
-SMAW, a single shot rocket launcher
-USP Match 9mm single + akimbo
-Raging-bull revolver single + akimbo
-Laser assault rifle
-bullet whizzing effects
-new beam sprites
-new head accessories
-facial hair color selection
-Ingame secrets/map easter eggs can now be disabled server-side (sv_secrets), mappers control this with master_secret
-new snow, sand, and dirt impact effects
-greatly optimized master string and objective string parsing (less CPU usage on servers)
-select chosen primary/secondary/melee/equipment command, bind a key to "melee" or "primary", etc
-Location is now shown on team say text
-Server-side weapon restrictions (add a restrict.cfg)
-katana and sledge are now throwable
-new anti-grav and shield toggle sounds
-anti-grav impact sounds and effects
-added generic draw and weapon mode change sounds
-scoreboard watermark and timer
-new timer and health counter flashing effect
-spawn invulnerability icon
-a 256x256 win graphic for each team + music
-fade to black on death
-1, 2 & 5 minute warning flash on timer
-alarms now print a triggered message when tripped w/ the location of the alarm included
-cl_brasstime and cl_cliptime to control how long brass and clips stay around
-cl_brassfadespeed and cl_clipfadespeed to control if/how fast they fade after their life has expired
-new flamethrower physics
-"/" say commands, allowing client commands to be called from the message prompt instead of the console
-muting someone on the scoreboard will now mute both that players saytext and voice comm
-new crosshairs
-walljumping off another player causes damage


*NEW SERVER OPTIONS*
-server logs in newer Half-Life Standard Log Format
-server commands "end_round" and "map_restart" commands that can be called from the server or rcon
-server command "forceteam" to directly set the team of a certain player
-server command "swap_teams" to swap the players on each team
-server command "shuffle_teams" to even shuffle all active players between the two teams
-server commands "stfu" and "unstfu" to globally silence spammy players say text
-server command "nextmap" to automatically enter intermission and load the next map in the mapcycle
-server commands "cancelvote" & "passvote" to cancel/pass any vote in progress
-spam prevention system to protect against saytext and nick changing spam (mp_maxspam, mp_sayspam, mp_nickspam)
-cvar to enable/disable nick change notifications (mp_nicknotify)
-VOTING, use the command "callvote" followed by a valid vote command.
-Vote commands are: map_restart, nextmap, swap_teams, shuffle_teams, map <mapname>, kick <player> | <userid>, stfu | unstfu <player>, sv_gravity <value>
-voting can be enabled/disabled with mp_allowvote (0/1)
-Admins can lock out certain votes
-team switching/joining messages are now global
-new cvar to cause notifications every X seconds of unbalanced teams (mp_notifyunbalanced)
-new cvar to set the minimum amount of time before changing teams (mp_minwitchtime)
-new cvar to control whether a player can join a team that already has the larger number of players (mp_forcebalance)
-new cvar to allow servers to disable free floating spectators (mp_freespectator 0/1)
-cvar to set a limited number of lives on any map (mp_lives)


*UPDATED MAP ENTITIES*
-easier for mappers to implement ctf maps (see example maps)
-a new map specific group spawning option to cause all dead players on a team to spawn at once
-Dynamic map based weapon restrictions (certain weapons can be turned on/off while the game is going with map entities)
-a new "activator" flag on ambient_generics to cause a certain entity to emit a sound from a specified channel (voice, body, etc)
-new flag on target_team_score to award points to the activators team
-info_player_start_prox, a proximity based spawnpoint (similar to func_player_start)
-Win round by most points map option
-Reset player scores at round map option
-optimized zone_nodamage, it's much cheaper to have several of them now.
-invulerability icon will show when standing in a zone_nodamage
-info_multiple hold times
-multi_manager loop flag
-info_status can now add score and use info_objective style messages
-timer_add to add/subtract time directly from a timer
-prevent mid-round team join map option
-new master_round_active entity to more easily allow entities to be disabled during intermission and round start
-env_fog for adding fog to maps
-rocket and flame sentries
-new expression operators (>,<,>=,<=,==,!=,+,-,/,*)
-master string constants (num_players, etc)
-new "trigger_speed" entity to slow/speed-up players walk speeds in defined areas
-new "master_round_active" and "master_round_start" entities
-master_living to apply different entities to only living or dead players
-the objective system now provides much better error messages for mappers if something is setup incorrectly


*BUG FIXES*
-fixed the initial unable to join team bug
-fixed client overflow on changing maps
-corpses now work again, they are controlled with the sv_corpsetime cvar, and sink into the ground ala q3
-cvar cl_corpses to disable drawing corpses client-side
-players can no longer capture certain points through walls
-mp_forcerespawn is now obeyed
-+use no longer causes you to come to a stop instantly, you decelerate normally now, but still walk more slowly
-water movement physics are fixed
-fixed a model change exploit
-fixed certain weapons that could be used while capping
-flamethrower no longer fires underwater
-knives are no longer lost when you damage something
-info_status now works properly
-dead players no longer count as being inside a trigger_hold
-fixed draw/holster flicker when running a listenserver
-XOR in objective and master strings is fixed
-fixed smoke for burning players
-alarms are only triggered by enemy players
-flares properly set other players on fire
-Death messages for flamethrower fixed
-only the scoreboard is shown during intermission
-fixed the ordering of elements draw on the hud
-random selection in CSS now works properly
-no more "bobbing" while capping
-tempents reset with round
-wootastic can no longer use new pistols until they have an akimbo set
-timer on kinetica fixed
-fixed certain holstering exploits
-fixed weapon deploy animation/sound on respawn
-cleaned up weapon switch order when dropping/losing weapons
-fixed func_tank
-fixed triple thrown tknife death message
-players no longer pick up empty weapons
-fixed the continuation of a 3-round burst after respawn
-eliminated all double prediction bugs on listenservers


*BALANCE TWEAKS*
-lowered default spas ammo to 24
-increased accuracy on single desert eagle
-Removed extra ammo from the regen perk
-Removed weapon restrictions from the stealth and sharp-shooter perk
-Reduced overall headshot damage
-Changed armor speed penalties
-fixed spas/1100/mp5k/chaingun headshot bug
-adjusted weapon damages
-grenades do half damage if held while exploding
-increased the power of anti-grav
-improved how flamethrower deals damage
-laser pistol charge can no longer be held indefinitely
-having extra adrenaline no longer causes the player to gain adrenaline back slower
-one must wait a short time after firing the emsniper, plasma cannon, or 1100 before he can holster
-decreased shield hitpoints
-regen now only restores 70% of hitpoints lost
