using UcharDet;

int main(string[] args)
{
	FileStream fs = FileStream.open (args[1], "r");
	size_t tmpbuffer_length = 8192;
	uint8[] tmpbuffer = new uint8[tmpbuffer_length];
	UcharDet.Classifier class = new UcharDet.Classifier();
	tmpbuffer_length = fs.read(tmpbuffer);
	bool is_ascii = true;
	while( tmpbuffer_length > 0 )
	{
		if( is_ascii )
		{
			for( int i = 0; ( i < tmpbuffer_length ) && (is_ascii); i++ )
			{
				if(tmpbuffer[i]>=128)
				{
					is_ascii = false;
				}
			}
		}
		int ret = class.handle_data(tmpbuffer);
		if( ret >= 0 )
		{
			tmpbuffer_length = fs.read(tmpbuffer);
		}
		else
		{
			tmpbuffer_length = -1;
		}
	}
	class.data_end();
	unowned string encoding = class.get_charset();
	if( encoding == "" )
	{
		if( is_ascii )
		{
			encoding = "ASCII";
		}
	}
	stderr.printf("ENCODING: %s\n", encoding);
	return 0;
}