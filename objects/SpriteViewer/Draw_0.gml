function c_rainbow (divider) {
var rainbow = make_color_hsv ((current_time / divider) mod 255,255,255);
return rainbow;
}
if themes[currentbg].coloring = RAINBOW
{
draw_sprite_tiled_ext(themes[currentbg].sprite,1,timer,timer,5,5,c_rainbow(200),bgopacity)
}
else if themes[currentbg].coloring = STATIC
{
	draw_sprite_tiled_ext(themes[currentbg].sprite,1,timer,timer,5,5,c_white,bgopacity)
}