/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 32DBEA31
/// @DnDApplyTo : {obj_enemy3}
with(obj_enemy3) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 66C5FAA8
/// @DnDArgument : "type" "3"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FFFF2407"
effect_create_below(3, 0, 0, 2, $FFFF2407 & $ffffff);