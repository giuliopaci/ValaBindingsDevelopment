/* valac --pkg libcurl --vapidir vapi --save-temps */
using Curl;

int main( string[] args )
{
	EasyHandle handle = new EasyHandle();
	handle.setopt(Option.URL, "http://localhost:8888/");
	handle.setopt(Option.VERBOSE, 0);
	handle.setopt(Option.STDERR, 0);
	Curl.Code code = handle.perform();
	int i;
	string s;
	handle.getinfo(Info.RESPONSE_CODE, out i);
	stderr.printf("%d\n", i);
	handle.getinfo(Info.CONTENT_TYPE, out s);
	stderr.printf("%s\n", s);
	return 0;
}