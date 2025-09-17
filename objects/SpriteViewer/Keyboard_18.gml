if sprite_exists(spriteexport)
{
	sprite_delete(spriteexport)
}
spriteexport = get_open_filename(".png",".png")
spritejson = filename_change_ext(spriteexport,".json")
try
{
	spritejson = scr_load_file(spritejson)
	//spritejson = string_replace_all(spritejson,"true","1")
	//spritejson = string_replace_all(spritejson,"false","0")
	//spritejson = string_replace_all(spritejson,"#","\n")
	spritejson = json_parse(spritejson)
	spritedata = variable_struct_get_names(spritejson.animations)
	spriteexport = sprite_add(spriteexport,1,false,false,0,0)
	animationlist = variable_struct_get_names(spritejson.animations)
	for (var i = 0;i < array_length(animationlist); i++)
	{
		var curanim = variable_struct_get(spritejson.animations,animationlist[i])
		if array_length(curanim.frames) = 0
		{
			array_delete(animationlist,i,1)
		}
	}
	anim = animationlist[0]
	currentanim_index  = 0 
}
catch(_badjson)
{
	badlastsprite = true
	spritejson = -1
	spriteexport = -1
	badmessage = _badjson.message + "\n\nPlease load a new animation"
}