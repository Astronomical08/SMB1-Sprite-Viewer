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
    var file = file_text_open_read(argument0);
    if (file < 0) return undefined;
    var delim = "#";
    var str = "";
    while (!file_text_eof(file)) {
        str += file_text_read_string(file);
        str += delim;
        file_text_readln(file);
    }
    file_text_close(file);
    return str;
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