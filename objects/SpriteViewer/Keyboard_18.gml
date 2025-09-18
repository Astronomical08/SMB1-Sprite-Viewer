if sprite_exists(cursprite)
	sprite_delete(cursprite);
cursprite =filename_change_ext(get_open_filename(".png",".png"),".png")
spritejson = filename_change_ext(cursprite,".json")
try
{
	spritejson = scr_load_file(spritejson)
	spritejson = json_parse(spritejson)
	spritedata = variable_struct_get_names(spritejson.animations)
	cursprite = sprite_add(cursprite,1,false,false,0,0)
	animationlist = variable_struct_get_names(spritejson.animations)
	for (var i = 0;i < array_length(animationlist); i++)
	{
		var curanim = variable_struct_get(spritejson.animations,animationlist[i])
		if array_length(curanim.frames) = 0
			array_delete(animationlist,i,1);
	}
	anim = animationlist[0]
	currentanim_index  = 0 
}
catch(_badjson)
{
	spritejson = -1
	cursprite = -1
	badmessage = _badjson.message + "\n\nPlease load a new animation"
}