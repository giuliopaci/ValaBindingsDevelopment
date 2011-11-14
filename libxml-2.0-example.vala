/* valac --pkg libxml-2.0 --vapidir vapi --save-temps */

using Xml;


static void tmp(void* a, void* b, string name)
{
	SchemaType* tmpp = (SchemaType*) a;
	stderr.printf("%s %d\n", name, *tmpp);
}

int main(string[] args) {
	Xml.SchemaParserCtxt parser = new Xml.SchemaParserCtxt(args[1]);
	Xml.Schema schema = parser.parse();
	schema.dump(stderr);
	stderr.printf("---%s\n---%s\n---%s\n", schema.name, schema.targetNamespace, schema.version);
	//schema.typeDecl.scan((payload, data, name) => { stderr.printf("%s\n", name);}, null);
	schema.typeDecl.scan(tmp, null);
    return 0;
}