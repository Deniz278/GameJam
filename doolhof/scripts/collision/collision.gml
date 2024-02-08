/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 23951770
/// @DnDComment : Target values
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61298B1F
	/// @DnDInput : 2
	/// @DnDParent : 23951770
	/// @DnDArgument : "expr" "xprevious"
	/// @DnDArgument : "expr_1" "yprevious"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06DC655A
	/// @DnDInput : 2
	/// @DnDParent : 23951770
	/// @DnDArgument : "var" "_tx"
	/// @DnDArgument : "value" "x"
	/// @DnDArgument : "var_1" "_ty"
	/// @DnDArgument : "value_1" "y"
	var _tx = x;
	var _ty = y;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C5AE22E
	/// @DnDInput : 2
	/// @DnDParent : 23951770
	/// @DnDArgument : "var" "_dis_x"
	/// @DnDArgument : "value" "abs(_tx - x)"
	/// @DnDArgument : "var_1" "_dis_y"
	/// @DnDArgument : "value_1" "abs(_ty - y)"
	var _dis_x = abs(_tx - x);
	var _dis_y = abs(_ty - y);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 6795E1B9
	/// @DnDComment : Move as far as we can in x
	/// @DnDParent : 23951770
	/// @DnDArgument : "times" "_dis_x"
	repeat(_dis_x)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 6CD1FFD0
		/// @DnDParent : 6795E1B9
		/// @DnDArgument : "x" "sign(tx - x)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "oSolid"
		/// @DnDSaveInfo : "object" "oSolid"
		var l6CD1FFD0_0 = instance_place(x + sign(tx - x), y + 0, oSolid);
		if ((l6CD1FFD0_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70A55FC6
			/// @DnDParent : 6CD1FFD0
			/// @DnDArgument : "expr" "sign(tx - x)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(tx - x);
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5B25AAC4
	/// @DnDComment : Move as far as we can in y
	/// @DnDParent : 23951770
	/// @DnDArgument : "times" "_dis_y"
	repeat(_dis_y)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 714D1CA8
		/// @DnDParent : 5B25AAC4
		/// @DnDArgument : "x" "0 "
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(ty - y)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "oSolid"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "oSolid"
		var l714D1CA8_0 = instance_place(x + 0 , y + sign(ty - y), oSolid);
		if (!(l714D1CA8_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A9866B5
			/// @DnDParent : 714D1CA8
			/// @DnDArgument : "expr" "sign(ty - y)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(ty - y);
		}
	}
}