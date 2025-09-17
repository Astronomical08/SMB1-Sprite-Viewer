if spritejson = -1 exit;
try
{
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
if keyboard_check_pressed(ord("K"))
{
	dropshadow = !dropshadow
}
if keyboard_check_pressed(ord("W"))
{
	currentbg = scr_better_clamp(currentbg + 1,0,array_length(themes) - 1)
}
if keyboard_check_pressed(ord("S"))
{
	currentbg = scr_better_clamp(currentbg - 1,0,array_length(themes) - 1)
}
var speedanim =  variable_struct_get(animation_cur,"speed")
if array_length(animation_cur.frames) = 1
{
	speedanim = 0
}
currentframe += 0.02 * speedanim
if currentframe >= array_length(animation_cur.frames)
{
	currentframe = 0
}
xoffset = lerp(xoffset,0,0.2)
bgopacity = clamp(bgopacity,0,1)
}
catch (bad_input)
{
	badlastsprite = true
	spritejson = -1
	spriteexport = -1
	badmessage = bad_input.message + "\n\nPlease load a new animation"
}