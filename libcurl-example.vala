/* valac --pkg libcurl --vapidir vapi --save-temps */
using Curl;

int main( string[] args )
{
	EasyHandle handle = new EasyHandle();
	handle.setopt(Option.URL, "http://localhost/~centris/");
	handle.setopt(Option.VERBOSE, 0);
	handle.setopt(Option.STDERR, 0);
	Curl.Code code = handle.perform();
	int i;
	handle.getinfo(Info.RESPONSE_CODE, out i);
	stderr.printf("%d\n", i);
	return 0;
}