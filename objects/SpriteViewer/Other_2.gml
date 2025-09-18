for(var i = file_find_first(working_directory + "themes/*.png",0); i != "";i = file_find_next())
{
	if !string_starts_with(i,"dark_") && !string_starts_with(i,"light_") { continue; }
	var struct = {}
	struct.sprite = sprite_add(working_directory + "themes/" + i,1,false,false,0,0)
	if string_starts_with(i,"dark_")
		struct.lighting = DARK;
	else if string_starts_with(i,"light_")
		struct.lighting = LIGHT;
	if string_ends_with(i,"_uncolored.png")
		struct.coloring =  STATIC;
	else
		struct.coloring =  RAINBOW;c
	array_push(themes,struct)
}