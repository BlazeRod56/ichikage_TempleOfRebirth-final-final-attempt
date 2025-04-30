/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 54ADA135
/// @DnDApplyTo : {obj_player}
with(obj_player) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 0339BADB
/// @DnDArgument : "color" "$FF118CFF"
effect_create_below(0, 0, 0, 0, $FF118CFF & $ffffff);

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 219FF51C
room_restart();