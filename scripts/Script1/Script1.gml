function scr_load_file(fname)
{
   var file_buffer = buffer_load(fname);
	var s = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);
    return s;
}

function scr_better_clamp(_var,_min,_max)
{
	if _var < _min
	{
		_var = _max
	}
	if _var > _max
	{
		_var = _min
	}
	return _var
}
#macro DARK 0
#macro LIGHT 1
#macro STATIC 0
#macro RAINBOW 1