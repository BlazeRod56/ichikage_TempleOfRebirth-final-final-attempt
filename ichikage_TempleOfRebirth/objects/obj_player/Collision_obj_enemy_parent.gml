/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 75B34693
/// @DnDDisabled : 1
/// @DnDApplyTo : {obj_enemy_parent}


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11B6885E
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lives"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 719D8B44
/// @DnDDisabled : 1
/// @DnDArgument : "var" "score"
/// @DnDArgument : "op" "2"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54734C6B
/// @DnDDisabled : 1
/// @DnDParent : 719D8B44
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "score"


/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7A121C27
/// @DnDApplyTo : {obj_player}
/// @DnDParent : 719D8B44
with(obj_player) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 16086DBE
/// @DnDParent : 719D8B44
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FFFF1000"
effect_create_above(0, x + 0, y + 0, 2, $FFFF1000 & $ffffff);

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 3C307CBE
/// @DnDParent : 719D8B44
room_restart();