function c_rainbow (divider) {

randomize ()

var rainbow = make_color_hsv ((current_time / divider) mod 255,255,255);

return rainbow;

}
draw_sprite_tiled_ext(CustomLevelBG,1,timer,timer,5,5,c_rainbow(200),1)