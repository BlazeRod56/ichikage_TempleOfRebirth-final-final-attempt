/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B1A8B98
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69BC352B
/// @DnDArgument : "expr" "keyboard_check(vk_left) || gamepad_button_check(0,gp_padl) || (gamepad_axis_value(0,gp_axislh) < -0.2)"
/// @DnDArgument : "var" "control_input_left"
control_input_left = keyboard_check(vk_left) || gamepad_button_check(0,gp_padl) || (gamepad_axis_value(0,gp_axislh) < -0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32369F66
/// @DnDArgument : "expr" "keyboard_check(vk_right) || gamepad_button_check(0,gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0.2)"
/// @DnDArgument : "var" "control_input_right"
control_input_right = keyboard_check(vk_right) || gamepad_button_check(0,gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54F1C120
/// @DnDArgument : "expr" "control_input_right - control_input_left"
/// @DnDArgument : "var" "move_x"
move_x = control_input_right - control_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B98D326
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

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

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 17C047C1
	/// @DnDParent : 45678302
	var l17C047C1_0;
	l17C047C1_0 = keyboard_check_pressed(vk_space);
	if (l17C047C1_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 474FB2A1
		/// @DnDParent : 17C047C1
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 4E892E27
	/// @DnDDisabled : 1
	/// @DnDParent : 45678302
	/// @DnDArgument : "btn" "gp_face1"
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
/// @DnDApplyTo : other
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65ABE6F0
/// @DnDDisabled : 1
/// @DnDArgument : "var" "lives"
/// @DnDArgument : "op" "3"
/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 667B4FEE
/// @DnDDisabled : 1
/// @DnDParent : 65ABE6F0