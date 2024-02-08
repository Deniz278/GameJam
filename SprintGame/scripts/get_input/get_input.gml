/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DB58245
/// @DnDArgument : "code" "// // Script assets have changed for v2.3.0 see$(13_10)// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information$(13_10)function get_input() $(13_10){$(13_10)	var l4C72769B_0;$(13_10)	l4C72769B_0 = keyboard_check(ord("D"));$(13_10)	if (l4C72769B_0)$(13_10)	{$(13_10)		right = 1;$(13_10)	}$(13_10)$(13_10)	var l7A762CD0_0;$(13_10)	l7A762CD0_0 = keyboard_check(ord("W"));$(13_10)	if (l7A762CD0_0)$(13_10)	{$(13_10)		up = 1;$(13_10)	}$(13_10)$(13_10)	var l26650610_0;$(13_10)	l26650610_0 = keyboard_check(ord("S"));$(13_10)	if (l26650610_0)$(13_10)	{$(13_10)		down = 1;$(13_10)	}$(13_10)$(13_10)	var l124D1737_0;$(13_10)	l124D1737_0 = keyboard_check(ord("A"));$(13_10)	if (l124D1737_0)$(13_10)	{$(13_10)		left = 1;$(13_10)	}$(13_10)}"
// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input() 
{
	var l4C72769B_0;
	l4C72769B_0 = keyboard_check(ord("D"));
	if (l4C72769B_0)
	{
		right = 1;
	}

	var l7A762CD0_0;
	l7A762CD0_0 = keyboard_check(ord("W"));
	if (l7A762CD0_0)
	{
		up = 1;
	}

	var l26650610_0;
	l26650610_0 = keyboard_check(ord("S"));
	if (l26650610_0)
	{
		down = 1;
	}

	var l124D1737_0;
	l124D1737_0 = keyboard_check(ord("A"));
	if (l124D1737_0)
	{
		left = 1;
	}
}