/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 39446B0E
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 47B16941
/// @DnDArgument : "obj" "OControls"
/// @DnDSaveInfo : "obj" "OControls"
var l47B16941_0 = false;
l47B16941_0 = instance_exists(OControls);
if(l47B16941_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B831435
	/// @DnDApplyTo : {OControls}
	/// @DnDParent : 47B16941
	with(OControls) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 62F3A0A0
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 28A134FB
	/// @DnDParent : 62F3A0A0
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "OControls"
	/// @DnDArgument : "layer" ""MenuButtons""
	/// @DnDSaveInfo : "objectid" "OControls"
	instance_create_layer(room_width/2, room_height - 100, "MenuButtons", OControls);
}