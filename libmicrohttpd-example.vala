/* valac --pkg libmicrohttpd --vapidir private-vapi --save-temps */
using MHD;
int print_out_key(void* cls, MHD.ValueKind kind, string? key, string? value)
{
	stderr.printf("'%s' => '%s'\n", key, value);
	return MHD.YES;
}

int MyAccessHandler (void* cls, MHD.Connection connection, string url, string method, string version, string? upload_data, size_t upload_data_size, void** con_cls)
{
	if( con_cls == null)
	{
		*con_cls = connection;
		return MHD.YES;
	}
	string username;
	string password;
//	username = connection.basic_auth_get_username_password(ref password);

	MHD.Response response;
	stderr.printf("%s request for %s using version %s\n", method, url, version);
	switch(method)
	{
	case "GET":
		string my_page = "<html><body>Hello browser!</body></html>";
		response = MHD.create_response_from_data(my_page.length, my_page, MHD.NO, MHD.YES);
		response.add_response_header("Content-Type", "text/html");
		// response = MHD.create_response_from_buffer(my_page.length, my_page, MHD.ResponseMemoryMode.MUST_COPY);
		stderr.printf("%s\n", my_page);
		connection.get_connection_values(MHD.ValueKind.HEADER_KIND, print_out_key, null);
		return connection.queue_response(MHD.HTTP_OK, response);
	default:
		string my_page = "<html><body>Method "+method+" unsupported</body></html>";
		response = MHD.create_response_from_data(my_page.length, my_page, MHD.NO, MHD.YES);
		response.add_response_header(MHD.HTTP_HEADER_CONTENT_LENGTH, "text/html");
		// response = MHD.create_response_from_buffer(my_page.length, my_page, MHD.ResponseMemoryMode.MUST_COPY);
		stderr.printf("%s\n", my_page);
		return connection.queue_response(MHD.HTTP_BAD_REQUEST, response);
	}
}


int main(string [] args)
{
	uint16 port = 8888;
	stdout.printf("Port: %d\n", port);
	unowned MHD.Daemon d = MHD.start_daemon(FLAG.USE_SELECT_INTERNALLY, port, null, null, (MHD.AccessHandlerCallback) MyAccessHandler, null);
	stdin.getc();
	d.stop_daemon();
	return 0;
}