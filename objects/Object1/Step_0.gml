if spritejson = -1 exit;
var animation_cur = variable_struct_get(spritejson.animations,anim)
anim = animationlist[currentanim_index]
if keyboard_check_pressed(ord("L"))
{
	xoffset = 60
	var nextanim = scr_better_clamp(currentanim_index + 1,0,array_length(animationlist) - 1)
	currentanim_index = nextanim
	currentframe = 0
}
if keyboard_check_pressed(ord("J"))
{
	xoffset = -60
	var nextanim = scr_better_clamp(currentanim_index - 1,0,array_length(animationlist) - 1)
	currentanim_index = nextanim
	currentframe = 0
}
//if keyboard_check_pressed(ord("I"))
//{
//	zoom++
//}
if keyboard_check_pressed(ord("K"))
{
	dropshadow = !dropshadow
}
var speedanim =  variable_struct_get(animation_cur,"speed")
if array_length(animation_cur.frames) = 1
{
	speedanim = 0
}
currentframe = currentframe + 0.02 * speedanim
if currentframe >= array_length(animation_cur.frames)
{
	currentframe = 0
}
xoffset = lerp(xoffset,0,0.2)