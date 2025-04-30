/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B98D326
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 091FFA6C
/// @DnDArgument : "msg" ""move_x""
show_debug_message(string("move_x"));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 45678302
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l45678302_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l45678302_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7093B6A9
	/// @DnDParent : 45678302
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 50506407
	/// @DnDParent : 45678302
	/// @DnDArgument : "msg" ""collision_tilemap""
	show_debug_message(string("collision_tilemap"));

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 63BDE777
	/// @DnDComment : is there wall?$(13_10)
	/// @DnDParent : 45678302
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l63BDE777_0 = instance_place(x + (25 * sign(move_x)), y + 0, [collision_tilemap]);
	if ((l63BDE777_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7705F0D3
		/// @DnDParent : 63BDE777
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2D221A04
	/// @DnDParent : 45678302
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "collision_tilemap"
	/// @DnDArgument : "not" "1"
	var l2D221A04_0 = instance_place(x + (30 * sign(move_x)), y + 50, [collision_tilemap]);
	if (!(l2D221A04_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0BC31A5D
		/// @DnDParent : 2D221A04
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11E5A938
		/// @DnDParent : 2D221A04
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 17C047C1
	/// @DnDDisabled : 1
	/// @DnDParent : 45678302
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7E51FE8C
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4505BB7D
	/// @DnDParent : 7E51FE8C
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(move_y < 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65A08AA0
		/// @DnDParent : 4505BB7D
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 098365E0
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);