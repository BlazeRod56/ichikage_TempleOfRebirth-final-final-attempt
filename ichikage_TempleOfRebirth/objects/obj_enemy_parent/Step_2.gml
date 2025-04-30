/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49761D73
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5AF5431A
	/// @DnDParent : 49761D73
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_jump"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_jump"
	sprite_index = spr_enemy_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DC3A62E
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1E06B6B0
	/// @DnDParent : 3DC3A62E
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_idle"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
	sprite_index = spr_enemy_idle;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5E9403FD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
var l5E9403FD_0 = instance_place(x + 0, y + 2, [noone]);
if ((l5E9403FD_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56536D77
	/// @DnDParent : 5E9403FD
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 077440DF
		/// @DnDParent : 56536D77
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk"
		sprite_index = spr_enemy_walk;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7485DEF6
	/// @DnDParent : 5E9403FD
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	if(move_x >= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 655B6003
		/// @DnDParent : 7485DEF6
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk"
		sprite_index = spr_enemy_walk;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C2EA734
	/// @DnDParent : 5E9403FD
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2C1B1CB8
		/// @DnDParent : 1C2EA734
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_idle"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
		sprite_index = spr_enemy_idle;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AAA763D
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
if(move_x <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 7322205D
	/// @DnDParent : 1AAA763D
	/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = -1 * abs(image_xscale);
	image_yscale = image_yscale;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 316B9B77
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(move_x >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 292C6B4D
	/// @DnDParent : 316B9B77
	/// @DnDArgument : "xscale" "abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = abs(image_xscale);
	image_yscale = image_yscale;
}