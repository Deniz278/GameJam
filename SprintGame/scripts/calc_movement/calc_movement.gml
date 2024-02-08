// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calc_movement()
{
	var _hmove = right - left;
	var _vmove = down - up;

	if((_hmove != 0) or (_vmove != 0))
	{
		var _dir = point_direction(0, 0, _hmove, _vmove);
	
		var _hmove = lengthdir_x(walk_spd, _dir);
	
		var _vmove = lengthdir_y(walk_spd, _dir);
	
		x += _hmove;
		y += _vmove;
	}
}