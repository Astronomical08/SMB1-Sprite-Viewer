/// file_text_open_read_all(fname)
//
//  Returns the contents of a given file as a multiline 
//  string. Lines are delimited by the "#" character.
//  If the file cannot be read, returns undefined.
//
//      fname       file to read, string
//
/// GMLscripts.com/license
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