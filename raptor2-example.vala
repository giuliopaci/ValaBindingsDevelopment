/* valac --pkg raptor2 --vapidir vapi --save-temps */

using Raptor;

static void
statements_handler(void* user_data, Statement statement)
{
    /* do something with the statement */
}

static void
namespace_handler(void* user_data, Namespace statement)
{
    /* do something with the namespace */
}

static void
message_handler(void *user_data, LogMessage message)
{
	/* do something with the message */
}

static uchar*
generate_id_handler(void* user_data, uchar* user_id)
{
   /* return a new generated ID based on user_id (optional) */
	return null;
}

int main(string[]args)
{
	World world = new World();

	uint i;
	for(i = 0; i < Option.get_count(); i++) {
		OptionDescription od;
		od = world.get_option_description(Domain.PARSER, (Option) i);

		if(od != null) {
			/* do something with od fields such as od->name, od->label */
		}
	}
	Parser parser = new Parser(world, "rdfxml");
	parser = new Parser.for_content(world, null, "application/rdf+xml", null, 0, null);
	Raptor.Uri syntax_uri = new Raptor.Uri(world, "http://www.dajobe.org/2004/01/turtle/");
	parser = new Parser.for_content(world, syntax_uri, null, null, 0, null);
	parser = new Parser.for_content(world, null, null, null, 0, "foo.rss");
	parser = new Parser.for_content(world, null, null, null, 0, "test.ttl");
	uchar[] buffer = new uchar[2048];
	buffer[0] = 0;
	//parser = new Parser.for_content(world, null, null, buffer, buffer.length, null);

	/* Set a boolean or integer valued option to value 1 */
	parser.set_option(Option.STRICT, null, 1);

	/* Set a string valued option to value "abc" */
	parser.set_option(Option.PREFIX_ELEMENTS, "abc", -1);

	stderr.printf("\n\nCanary 7\n\n");
	/* Get a boolean or integer option value */
	int int_var;
	parser.get_option(Option.STRICT, null, out int_var);
	stderr.printf("%d\n", int_var);

	/* Get a string option value */
	string string_var;
	parser.get_option(Option.PREFIX_ELEMENTS, out string_var, null);
	stderr.printf("%s\n", string_var);


	void* user_data = null;
	parser.set_statement_handler(user_data, statements_handler);
	parser.set_namespace_handler(user_data, namespace_handler);
	world.set_log_handler(user_data, message_handler);
	world.set_generate_bnodeid_handler(user_data, generate_id_handler);
	return 0;
}