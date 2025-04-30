/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4BF93C05
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l4BF93C05_0 = false;
l4BF93C05_0 = instance_exists(obj_player);
if(!l4BF93C05_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3CAED22C
	/// @DnDParent : 4BF93C05
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 62E2F967
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5DED2148
/// @DnDArgument : "font" "font_open_sans"
/// @DnDSaveInfo : "font" "font_open_sans"
draw_set_font(font_open_sans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0D60C692
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""coins: ""
/// @DnDArgument : "var" "obj_player.coins"
draw_text(x + 30, y + -15, string("coins: ") + string(obj_player.coins));