/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CF28F91
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 1047C722
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FFFF0019"
effect_create_above(3, 0, 0, 2, $FFFF0019 & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22D9B976
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "coins"
coins = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D3ACD03
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "var" "timesframe"
timesframe = 30;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4F8AA1DB
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);