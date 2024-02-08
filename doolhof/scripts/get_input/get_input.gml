/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 51C4AC57
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5BD0D2AB
	/// @DnDParent : 51C4AC57
	/// @DnDArgument : "key" "vk_left"
	var l5BD0D2AB_0;
	l5BD0D2AB_0 = keyboard_check(vk_left);
	if (l5BD0D2AB_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70BA2E2B
		/// @DnDParent : 5BD0D2AB
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "left	"
		left	 = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 7DB7087A
	/// @DnDParent : 51C4AC57
	/// @DnDArgument : "key" "vk_right"
	var l7DB7087A_0;
	l7DB7087A_0 = keyboard_check(vk_right);
	if (l7DB7087A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42301362
		/// @DnDParent : 7DB7087A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "right"
		right = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 66A49A67
	/// @DnDParent : 51C4AC57
	/// @DnDArgument : "key" "vk_up"
	var l66A49A67_0;
	l66A49A67_0 = keyboard_check(vk_up);
	if (l66A49A67_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61AF7C3F
		/// @DnDParent : 66A49A67
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "up"
		up = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 01DF1291
	/// @DnDParent : 51C4AC57
	/// @DnDArgument : "key" "vk_down"
	var l01DF1291_0;
	l01DF1291_0 = keyboard_check(vk_down);
	if (l01DF1291_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CB42663
		/// @DnDParent : 01DF1291
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "down"
		down = 1;
	}
}