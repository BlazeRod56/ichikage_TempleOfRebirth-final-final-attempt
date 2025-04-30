/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 76B5F776
/// @DnDApplyTo : {obj_enemy2}
with(obj_enemy2) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 14FF9C8C
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FFFF3B00"
effect_create_above(3, 0, 0, 2, $FFFF3B00 & $ffffff);