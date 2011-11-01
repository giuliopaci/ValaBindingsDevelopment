[CCode (cheader_filename = "curl/curl.h")]
namespace Curl {
	[CCode (cname = "CURL", cprefix = "curl_easy_", unref_function = "curl_easy_cleanup")]
	public class EasyHandle {
		[CCode (cname = "curl_easy_init")]
		public EasyHandle ();
		[PrintfFormat]
		public Curl.Code setopt (Curl.Option option, ...);
		public Curl.Code perform ();
		[PrintfFormat]
		public Curl.Code getinfo (Curl.Info info, ...);
		public Curl.EasyHandle duphandle ();
		public void reset ();
		public Curl.Code recv (void *buffer, size_t buflen, out size_t n);
		public Curl.Code send (void *buffer, size_t buflen, out size_t n);
		public string escape (string @string, int length);
		public string unescape (string @string, int length, out int outlength);
	}
	[CCode (name = "CURLINFO", cprefix = "CURLINFO_")]
	public enum Info {
		EFFECTIVE_URL,
		RESPONSE_CODE,
		TOTAL_TIME,
		NAMELOOKUP_TIME,
		CONNECT_TIME,
		PRETRANSFER_TIME,
		SIZE_UPLOAD,
		SIZE_DOWNLOAD,
		SPEED_DOWNLOAD,
		SPEED_UPLOAD,
		HEADER_SIZE,
		REQUEST_SIZE,
		SSL_VERIFYRESULT,
		FILETIME,
		CONTENT_LENGTH_DOWNLOAD,
		CONTENT_LENGTH_UPLOAD,
		STARTTRANSFER_TIME,
		CONTENT_TYPE,
		REDIRECT_TIME,
		REDIRECT_COUNT,
		PRIVATE,
		HTTP_CONNECTCODE,
		HTTPAUTH_AVAIL,
		PROXYAUTH_AVAIL,
		OS_ERRNO,
		NUM_CONNECTS,
		SSL_ENGINES,
		COOKIELIST,
		LASTSOCKET,
		FTP_ENTRY_PATH,
		REDIRECT_URL,
		PRIMARY_IP,
		APPCONNECT_TIME,
		CERTINFO,
		CONDITION_UNMET,
		RTSP_SESSION_ID,
		RTSP_CLIENT_CSEQ,
		RTSP_SERVER_CSEQ,
		RTSP_CSEQ_RECV,
		PRIMARY_PORT,
		LOCAL_IP,
		LOCAL_PORT,
		LASTONE,
		STRING,
		LONG,
		DOUBLE,
		SLIST
	}
	[CCode (cname = "CURLcode", cprefix = "CURLE_")]
	public enum Code {
		OK,
		UNSUPPORTED_PROTOCOL,
		FAILED_INIT,
		URL_MALFORMAT,
		COULDNT_RESOLVE_PROXY,
		COULDNT_RESOLVE_HOST,
		COULDNT_CONNECT,
		FTP_WEIRD_SERVER_REPLY,
		REMOTE_ACCESS_DENIED,
		FTP_WEIRD_PASS_REPLY,
		FTP_WEIRD_PASV_REPLY,
		FTP_WEIRD_227_FORMAT,
		FTP_CANT_GET_HOST,
		FTP_COULDNT_SET_TYPE,
		PARTIAL_FILE,
		FTP_COULDNT_RETR_FILE,
		QUOTE_ERROR,
		HTTP_RETURNED_ERROR,
		WRITE_ERROR,
		UPLOAD_FAILED,
		READ_ERROR,
		OUT_OF_MEMORY,
		OPERATION_TIMEDOUT,
		FTP_PORT_FAILED,
		FTP_COULDNT_USE_REST,
		RANGE_ERROR,
		HTTP_POST_ERROR,
		SSL_CONNECT_ERROR,
		BAD_DOWNLOAD_RESUME,
		FILE_COULDNT_READ_FILE,
		LDAP_CANNOT_BIND,
		LDAP_SEARCH_FAILED,
		FUNCTION_NOT_FOUND,
		ABORTED_BY_CALLBACK,
		BAD_FUNCTION_ARGUMENT,
		INTERFACE_FAILED,
		TOO_MANY_REDIRECTS,
		UNKNOWN_TELNET_OPTION,
		TELNET_OPTION_SYNTAX,
		PEER_FAILED_VERIFICATION,
		GOT_NOTHING,
		SSL_ENGINE_NOTFOUND,
		SSL_ENGINE_SETFAILED,
		SEND_ERROR,
		RECV_ERROR,
		SSL_CERTPROBLEM,
		SSL_CIPHER,
		SSL_CACERT,
		BAD_CONTENT_ENCODING,
		LDAP_INVALID_URL,
		FILESIZE_EXCEEDED,
		USE_SSL_FAILED,
		SEND_FAIL_REWIND,
		SSL_ENGINE_INITFAILED,
		LOGIN_DENIED,
		TFTP_NOTFOUND,
		TFTP_PERM,
		REMOTE_DISK_FULL,
		TFTP_ILLEGAL,
		TFTP_UNKNOWNID,
		REMOTE_FILE_EXISTS,
		TFTP_NOSUCHUSER,
		CONV_FAILED,
		CONV_REQD,
		SSL_CACERT_BADFILE,
		REMOTE_FILE_NOT_FOUND,
		SSH,
		SSL_SHUTDOWN_FAILED,
		AGAIN,
		SSL_CRL_BADFILE,
		SSL_ISSUER_ERROR,
		[CCode (cname = "CURL_LAST")]
		LAST
	}
	[CCode (name = "CURLoption", cprefix = "CURLOPT_")]
	public enum Option {
		FILE,
		URL,
		PORT,
		PROXY,
		USERPWD,
		PROXYUSERPWD,
		RANGE,
		INFILE,
		ERRORBUFFER,
		WRITEFUNCTION,
		READFUNCTION,
		TIMEOUT,
		INFILESIZE,
		POSTFIELDS,
		REFERER,
		FTPPORT,
		USERAGENT,
		LOW_SPEED_LIMIT,
		LOW_SPEED_TIME,
		RESUME_FROM,
		COOKIE,
		HTTPHEADER,
		HTTPPOST,
		SSLCERT,
		KEYPASSWD,
		CRLF,
		QUOTE,
		WRITEHEADER,
		COOKIEFILE,
		SSLVERSION,
		TIMECONDITION,
		TIMEVALUE,
		CUSTOMREQUEST,
		STDERR,
		POSTQUOTE,
		WRITEINFO,
		VERBOSE,
		HEADER,
		NOPROGRESS,
		NOBODY,
		FAILONERROR,
		UPLOAD,
		POST,
		DIRLISTONLY,
		APPEND,
		NETRC,
		FOLLOWLOCATION,
		TRANSFERTEXT,
		PUT,
		PROGRESSFUNCTION,
		PROGRESSDATA,
		AUTOREFERER,
		PROXYPORT,
		POSTFIELDSIZE,
		HTTPPROXYTUNNEL,
		INTERFACE,
		KRBLEVEL,
		SSL_VERIFYPEER,
		CAINFO,
		MAXREDIRS,
		FILETIME,
		TELNETOPTIONS,
		MAXCONNECTS,
		CLOSEPOLICY,
		FRESH_CONNECT,
		FORBID_REUSE,
		RANDOM_FILE,
		EGDSOCKET,
		CONNECTTIMEOUT,
		HEADERFUNCTION,
		HTTPGET,
		SSL_VERIFYHOST,
		COOKIEJAR,
		SSL_CIPHER_LIST,
		HTTP_VERSION,
		FTP_USE_EPSV,
		SSLCERTTYPE,
		SSLKEY,
		SSLKEYTYPE,
		SSLENGINE,
		SSLENGINE_DEFAULT,
		DNS_USE_GLOBAL_CACHE,
		DNS_CACHE_TIMEOUT,
		PREQUOTE,
		DEBUGFUNCTION,
		DEBUGDATA,
		COOKIESESSION,
		CAPATH,
		BUFFERSIZE,
		NOSIGNAL,
		SHARE,
		PROXYTYPE,
		ACCEPT_ENCODING,
		PRIVATE,
		HTTP200ALIASES,
		UNRESTRICTED_AUTH,
		FTP_USE_EPRT,
		HTTPAUTH,
		SSL_CTX_FUNCTION,
		SSL_CTX_DATA,
		FTP_CREATE_MISSING_DIRS,
		PROXYAUTH,
		FTP_RESPONSE_TIMEOUT,
		IPRESOLVE,
		MAXFILESIZE,
		INFILESIZE_LARGE,
		RESUME_FROM_LARGE,
		MAXFILESIZE_LARGE,
		NETRC_FILE,
		USE_SSL,
		POSTFIELDSIZE_LARGE,
		TCP_NODELAY,
		FTPSSLAUTH,
		IOCTLFUNCTION,
		IOCTLDATA,
		FTP_ACCOUNT,
		COOKIELIST,
		IGNORE_CONTENT_LENGTH,
		FTP_SKIP_PASV_IP,
		FTP_FILEMETHOD,
		LOCALPORT,
		LOCALPORTRANGE,
		CONNECT_ONLY,
		CONV_FROM_NETWORK_FUNCTION,
		CONV_TO_NETWORK_FUNCTION,
		CONV_FROM_UTF8_FUNCTION,
		MAX_SEND_SPEED_LARGE,
		MAX_RECV_SPEED_LARGE,
		FTP_ALTERNATIVE_TO_USER,
		SOCKOPTFUNCTION,
		SOCKOPTDATA,
		SSL_SESSIONID_CACHE,
		SSH_AUTH_TYPES,
		SSH_PUBLIC_KEYFILE,
		SSH_PRIVATE_KEYFILE,
		FTP_SSL_CCC,
		TIMEOUT_MS,
		CONNECTTIMEOUT_MS,
		HTTP_TRANSFER_DECODING,
		HTTP_CONTENT_DECODING,
		NEW_FILE_PERMS,
		NEW_DIRECTORY_PERMS,
		POSTREDIR,
		SSH_HOST_PUBLIC_KEY_MD5,
		OPENSOCKETFUNCTION,
		OPENSOCKETDATA,
		COPYPOSTFIELDS,
		PROXY_TRANSFER_MODE,
		SEEKFUNCTION,
		SEEKDATA,
		CRLFILE,
		ISSUERCERT,
		ADDRESS_SCOPE,
		CERTINFO,
		USERNAME,
		PASSWORD,
		PROXYUSERNAME,
		PROXYPASSWORD,
		NOPROXY,
		TFTP_BLKSIZE,
		SOCKS5_GSSAPI_SERVICE,
		SOCKS5_GSSAPI_NEC,
		PROTOCOLS,
		REDIR_PROTOCOLS,
		SSH_KNOWNHOSTS,
		SSH_KEYFUNCTION,
		SSH_KEYDATA,
		MAIL_FROM,
		MAIL_RCPT,
		FTP_USE_PRET,
		RTSP_REQUEST,
		RTSP_SESSION_ID,
		RTSP_STREAM_URI,
		RTSP_TRANSPORT,
		RTSP_CLIENT_CSEQ,
		RTSP_SERVER_CSEQ,
		INTERLEAVEDATA,
		INTERLEAVEFUNCTION,
		WILDCARDMATCH,
		CHUNK_BGN_FUNCTION,
		CHUNK_END_FUNCTION,
		FNMATCH_FUNCTION,
		CHUNK_DATA,
		FNMATCH_DATA,
		RESOLVE,
		TLSAUTH_USERNAME,
		TLSAUTH_PASSWORD,
		TLSAUTH_TYPE,
		TRANSFER_ENCODING,
		CLOSESOCKETFUNCTION,
		CLOSESOCKETDATA,
		LASTENTRY,
		WRITEDATA,
		READDATA,
		HEADERDATA,
		ENCODING
	}
	[CCode (cname = "curliocmd", cprefix = "CURLIOCMD_")]
	public enum IOCmd {
		NOP,
		RESTARTREAD,
		LAST
	}
	[CCode (cname = "curlioerr", cprefix = "CURLIOE_")]
	public enum IOError {
		OK,
		UNKNOWNCMD,
		FAILRESTART,
		LAST
	}
	[CCode (cname = "curlsocktype", cprefix = "CURLSOCKTYPE_")]
	public enum SocketType {
		IPCXN,
		LAST
	}
	[CCode (cname = "CURL_GLOBAL_SSL")]
	public const long GLOBAL_SSL;
	[CCode (cname = "CURL_GLOBAL_WIN32")]
	public const long GLOBAL_WIN32;
	[CCode (cname = "CURL_GLOBAL_ALL")]
	public const long GLOBAL_ALL;
	[CCode (cname = "CURL_GLOBAL_NOTHING")]
	public const long GLOBAL_NOTHING;
	[CCode (cname = "CURL_GLOBAL_DEFAULT")]
	public const int GLOBAL_DEFAULT;
	public Curl.Code global_init (long flags);
	public Curl.Code global_init_mem (long flags, Curl.MallocCallback m, Curl.FreeCallback f, Curl.ReallocCallback r, Curl.StrdupCallback s, Curl.CallocCallback c);
	public static void global_cleanup ();
//	[CCode (cname = "curl_sockopt_callback")]
//	public delegate size_t SockoptCallback (void* clientp, Curl.Socket curlfd, Curl.SocketType purpose);
	[CCode (cname = "curl_progress_callback")]
	public delegate int ProgressCallback (void* clientp, double dltotal, double dlnow, double ultotal, double ulnow);
	[CCode (cname = "CURL_WRITEFUNC_PAUSE")]
	public const size_t WRITEFUNC_PAUSE;
	[CCode (cname = "curl_write_callback")]
	public delegate size_t WriteCallback (char* buffer, size_t size, size_t nitems, void *outstream);
	// [Ccode (cname = "curl_seek_callback")]
	// public delegate int SeekCallback (void* instream, Curl.Offset offset, int origin);
	[CCode (cname = "CURL_READFUNC_ABORT")]
	public const size_t READFUNC_ABORT;
	[CCode (cname = "CURL_READFUNC_PAUSE")]
	public const size_t READFUNC_PAUSE;
	[CCode (cname = "curl_read_callback")]
	public delegate size_t ReadCallback (char* buffer, size_t size, size_t nitems, void *instream);
	[CCode (cname = "curl_ioctl_callback")]
	public delegate Curl.IOError IoctlCallback (Curl.EasyHandle handle, int cmd, void* clientp);
	[CCode (cname = "curl_malloc_callback")]
	public delegate void* MallocCallback (size_t size);
	[CCode (cname = "curl_free_callback")]
	public delegate void FreeCallback (void* ptr);
	[CCode (cname = "curl_realloc_callback")]
	public delegate void* ReallocCallback (size_t size);
	[CCode (cname = "curl_calloc_callback")]
	public delegate void* CallocCallback (size_t size);
	[CCode (cname = "curl_strdup_callback")]
	public delegate void* StrdupCallback (string orig);
	[CCode (cname = "CURL_SEEKFUNC_CANTSEEK")]
	public const int SEEKFUNC_CANTSEEK;
	[CCode (cname = "CURL_SEEKFUNC_FAIL")]
	public const int SEEKFUNC_FAIL;
	[CCode (cname = "CURL_SEEKFUNC_OK")]
	public const int SEEKFUNC_OK;
}
