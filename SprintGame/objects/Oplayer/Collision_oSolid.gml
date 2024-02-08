/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 618F0125
/// @DnDArgument : "script" "collision"
/// @DnDSaveInfo : "script" "collision"
script_execute(collision);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 32BDA58D
/// @DnDComment : target values
/// @DnDInput : 2
/// @DnDArgument : "var" "_tx"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "_ty"
/// @DnDArgument : "value_1" "y"
var _tx = x;
var _ty = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 215C9567
/// @DnDInput : 2
/// @DnDArgument : "expr" "xprevious"
/// @DnDArgument : "expr_1" "yprevious"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = xprevious;
y = yprevious;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 11EF2B5B
/// @DnDInput : 2
/// @DnDArgument : "var" "_dix_x"
/// @DnDArgument : "value" "abs(_tx - x)"
/// @DnDArgument : "var_1" "_dix_y"
/// @DnDArgument : "value_1" "abs(_ty - y)"
var _dix_x = abs(_tx - x);
var _dix_y = abs(_ty - y);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2EB56E7C
/// @DnDArgument : "times" "_dix_x"
repeat(_dix_x)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 0D1D246C
	/// @DnDParent : 2EB56E7C
	/// @DnDArgument : "x" "sign(_tx - x)"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "oSolid"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "oSolid"
	var l0D1D246C_0 = instance_place(x + sign(_tx - x), y + 0, [oSolid]);
	if (!(l0D1D246C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19F3C097
		/// @DnDParent : 0D1D246C
		/// @DnDArgument : "expr" "sign(_tx - x)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += sign(_tx - x);
	}
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 65518B25
/// @DnDArgument : "times" "_dix_y"
repeat(_dix_y)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7E3714D7
	/// @DnDParent : 65518B25
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sign(_ty - y)"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "oSolid"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "oSolid"
	var l7E3714D7_0 = instance_place(x + 0, y + sign(_ty - y), [oSolid]);
	if (!(l7E3714D7_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44714F8F
		/// @DnDParent : 7E3714D7
		/// @DnDArgument : "expr" "sign(_ty - y)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += sign(_ty - y);
	}
}