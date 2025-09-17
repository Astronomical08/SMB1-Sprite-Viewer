if spritejson = -1 exit;
draw_set_font(font)
try
{
var animation_cur = variable_struct_get(spritejson.animations,anim)
draw_set_valign(fa_bottom)
draw_set_halign(fa_center)
draw_text(view_wport[0]/2,view_hport[0]/10,anim)
	if dropshadow == 1
	{
		draw_sprite_part_ext(spriteexport,0,animation_cur.frames[floor(currentframe)][0],animation_cur.frames[floor(currentframe)][1],animation_cur.frames[floor(currentframe)][2],animation_cur.frames[floor(currentframe)][3],view_wport/2 - (animation_cur.frames[floor(currentframe)][2] * 2) + xoffset,view_hport/1.9 - animation_cur.frames[floor(currentframe)][3],5,5,c_black,1)
	}
draw_sprite_part_ext(spriteexport,0,animation_cur.frames[floor(currentframe)][0],animation_cur.frames[floor(currentframe)][1],animation_cur.frames[floor(currentframe)][2],animation_cur.frames[floor(currentframe)][3],view_wport/2 - (animation_cur.frames[floor(currentframe)][2] * 2) + xoffset,view_hport/2 - animation_cur.frames[floor(currentframe)][3],5,5,c_white,1)
}
catch(_badanim)
{
	//show_message("frame: " + string(currentframe) + " of animation: " + anim + " has a problem")
	currentframe = 0
	//currentanim_index--
}