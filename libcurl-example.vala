/* valac --pkg libcurl --vapidir vapi --save-temps */
using Curl;

[Compact]
private struct buffer_s
{
	uchar[] buffer;
}

private size_t
WriteMemoryCallback(char* ptr, size_t size, size_t nmemb, void* data)
{
	size_t total_size = size*nmemb;
	for(int i = 0; i<total_size; i++)
	{
		(( buffer_s* ) data).buffer+= ptr[i];
	}
	(( buffer_s* ) data).buffer+= 0;
	return total_size;
}

int main( string[] args )
{
	EasyHandle handle = new EasyHandle();
	handle.setopt(Option.URL, "http://localhost:8888/");
	handle.setopt(Option.VERBOSE, 0);
	handle.setopt(Option.STDERR, 0);
	handle.setopt(Option.USERAGENT, "libcurl-agent/1.0");

	buffer_s tmp = buffer_s(){ buffer = new uchar[0] };
	int a = tmp.buffer.length;
	handle.setopt(Option.WRITEFUNCTION, WriteMemoryCallback);
	handle.setopt(Option.WRITEDATA, ref tmp);
	
	Curl.Code code = handle.perform();
	int i;
	string s;
	handle.getinfo(Info.RESPONSE_CODE, out i);
	stderr.printf("%d\n", i);
	handle.getinfo(Info.CONTENT_TYPE, out s);
	stderr.printf("%s\n", s);
	stderr.printf("%s\n", (string)tmp.buffer);
	return 0;
}