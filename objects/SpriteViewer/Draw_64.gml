draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_white)
if spritejson = -1 {
	draw_set_font(font)
	if !badlastsprite
	draw_text_ext(view_wport[0]/2,view_hport[0]/2,"Please press alt to add the sprite in png format",40,view_wport[0]/2);
	else
	draw_text_ext(view_wport[0]/2,view_hport[0]/2,badmessage,40,view_wport[0]/2);
	exit;
}
draw_set_font(font)
try
{
	if themes[currentbg].lighting == DARK
		draw_set_color(c_white);
	else
		draw_set_color(c_black);
var animation_cur = variable_struct_get(spritejson.animations,anim)
draw_text(view_wport[0]/2,view_hport[0]/10,anim)
draw_set_halign(fa_right)
draw_text(view_wport[0] - 20,view_hport[0]/10,(animationlist[scr_better_clamp(currentanim_index + 1,0,array_length(animationlist) - 1)]))
draw_set_halign(fa_left)
draw_text(20,view_hport[0]/10,(animationlist[scr_better_clamp(currentanim_index - 1,0,array_length(animationlist) - 1)]))
draw_text_transformed(20,view_hport[0] - 100,"Credits:\n\nJHDev2006/SMB1R TEAM - SMB1R and the default backgrounds\nGMLScripts.com - code base for error logs\nDr Tieg's BF custom character - used alot for testing\n\nControls:\n\nJ/L - scroll through animations\nW/S - change between backgrounds\nK - toggle dropshadow",0.5,0.5,0)
draw_set_color(c_white)
	if dropshadow == 1
		draw_sprite_part_ext(spriteexport,0,animation_cur.frames[floor(currentframe)][0],animation_cur.frames[floor(currentframe)][1],animation_cur.frames[floor(currentframe)][2],animation_cur.frames[floor(currentframe)][3],view_wport/2 - (animation_cur.frames[floor(currentframe)][2] * 2) + xoffset,view_hport/1.9 - animation_cur.frames[floor(currentframe)][3],5,5,c_black,1);
draw_sprite_part_ext(spriteexport,0,animation_cur.frames[floor(currentframe)][0],animation_cur.frames[floor(currentframe)][1],animation_cur.frames[floor(currentframe)][2],animation_cur.frames[floor(currentframe)][3],view_wport/2 - (animation_cur.frames[floor(currentframe)][2] * 2) + xoffset,view_hport/2 - animation_cur.frames[floor(currentframe)][3],5,5,c_white,1)
}
catch(_badanim) { currentframe = 0 }