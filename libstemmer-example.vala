/* valac --pkg libstemmer --vapidir vapi -X -lstemmer --save-temps */

using SnowBall;

static string stemmer = null;
static bool print_list = false;
static string[] filenames = null;

static const OptionEntry[] stem_opt = {
	{ "stemmer", 'e', 0, OptionArg.STRING, ref stemmer, "Stemmer to be used", "english" },
	{ "stemmer-list",'E', 0, OptionArg.NONE, ref print_list, "Get a list of available stemmers", null },
	{ "", 0, 0, OptionArg.FILENAME_ARRAY, ref filenames, null, "FILE" },
	{ null }
};


int main(string[] args)
{
	stemmer = "english";
	try {
		OptionContext opt_context = new OptionContext ("- Sample stemmer");
		opt_context.set_help_enabled (true);
		opt_context.add_main_entries (stem_opt, null);
		opt_context.parse (ref args);
		if( ! print_list )
		{
			if( ( filenames == null ) )
			{
				stderr.printf("You must provide an input file.\n");
				stderr.printf(opt_context.get_help(true, null));
				return -1;
			}
		}
	} catch (OptionError e) {
		stderr.printf ("%s\n", e.message);
		stderr.printf ("Run '%s --help' to see a full list of available command line options.\n", args[0]);
		return 1;
	}


	if( print_list )
	{
		foreach( unowned string stemmer_name in SnowBall.Stemmer.list() )
		{
			stdout.printf("%s\n", stemmer_name );
		}
	}
	else
	{
		SnowBall.Stemmer st = new SnowBall.Stemmer(stemmer);
		FileStream fs = FileStream.open (filenames[0], "r");
		string? line = null;
		while ((line = fs.read_line ()) != null)
		{
			line.chomp();
			string stem = st.stem(line,(int)line.length);
			stdout.printf("\"%s\"\t\"%s\"\n", line, stem);
		}
	}
	return 0;
}