[CCode (cheader_filename = "curl/curl.h")]
namespace Curl {
	[CCode (cname = "CURL", cprefix = "curl_easy_", unref_function = "curl_easy_cleanup")]
	[Compact]
	public class EasyHandle {
		[CCode (cname = "curl_easy_init")]
		public EasyHandle ();
		[CCode (cname = "curl_easy_cleanup")]
		public void cleanup ();
		[CCode (cname = "curl_easy_duphandle")]
		public Curl.EasyHandle duphandle ();
		[CCode (cname = "curl_easy_escape")]
		public string escape (string str, int length);
		[CCode (cname = "curl_easy_getinfo")]
		[PrintfFormat]
		public Curl.Code getinfo (Curl.Info info, ...);
		[CCode (cname = "curl_easy_perform")]
		public Curl.Code perform ();
		[CCode (cname = "curl_easy_recv")]
		public Curl.Code recv (void* buffer, size_t buflen, out size_t n);
		[CCode (cname = "curl_easy_reset")]
		public void reset ();
		[CCode (cname = "curl_easy_send")]
		public Curl.Code send (void* buffer, size_t buflen, out size_t n);
		[CCode (cname = "curl_easy_setopt")]
		[PrintfFormat]
		public Curl.Code setopt (Curl.Option option, ...);
		[CCode (cname = "curl_easy_strerror")]
		public static unowned string strerror (Curl.Code p1);
		[CCode (cname = "curl_easy_unescape")]
		public string unescape (string str, int length, out int outlength);
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLCLOSEPOLICY_", has_type_id = false)]
	public enum ClosePolicy {
		NONE,
		OLDEST,
		LEAST_RECENTLY_USED,
		LEAST_TRAFFIC,
		SLOWEST,
		CALLBACK,
		LAST
	}
	[CCode (cname = "CURLcode", cprefix = "CURLE_")]
	public enum Code {
		OK,
		UNSUPPORTED_PROTOCOL,
		FAILED_INIT,
		URL_MALFORMAT,
		NOT_BUILT_IN,
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
		UNKNOWN_OPTION,
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
		FTP_PRET_FAILED,
		RTSP_CSEQ_ERROR,
		RTSP_SESSION_ERROR,
		FTP_BAD_FILE_LIST,
		CHUNK_FAILED,
		[CCode (cname = "CURL_LAST")]
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLFILETYPE_", has_type_id = false)]
	public enum FileType {
		FILE,
		DIRECTORY,
		SYMLINK,
		DEVICE_BLOCK,
		DEVICE_CHAR,
		NAMEDPIPE,
		SOCKET,
		DOOR,
		UNKNOWN
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_FORMADD_", has_type_id = false)]
	public enum FormCode {
		OK,
		MEMORY,
		OPTION_TWICE,
		NULL,
		UNKNOWN_OPTION,
		INCOMPLETE,
		ILLEGAL_ARRAY,
		DISABLED,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLFORM_", has_type_id = false)]
	public enum FormOption {
		NOTHING,
		COPYNAME,
		PTRNAME,
		NAMELENGTH,
		COPYCONTENTS,
		PTRCONTENTS,
		CONTENTSLENGTH,
		FILECONTENT,
		ARRAY,
		OBSOLETE,
		FILE,
		BUFFER,
		BUFFERPTR,
		BUFFERLENGTH,
		CONTENTTYPE,
		CONTENTHEADER,
		FILENAME,
		END,
		OBSOLETE2,
		STREAM,
		LASTENTRY
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLFTPAUTH_", has_type_id = false)]
	public enum FtpAuth {
		DEFAULT,
		SSL,
		TLS,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLFTPSSL_CCC_", has_type_id = false)]
	public enum FtpCCC {
		NONE,
		PASSIVE,
		ACTIVE,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLFTP_CREATE_", has_type_id = false)]
	public enum FtpCreateDir {
		DIR_NONE,
		DIR,
		DIR_RETRY,
		DIR_LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLFTPMETHOD_", has_type_id = false)]
	public enum FtpMethod {
		DEFAULT,
		MULTICWD,
		NOCWD,
		SINGLECWD,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_HTTP_VERION_", has_type_id = false)]
	public enum HttpVersion {
		@1_0,
		@1_1,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLIOCMD_", has_type_id = false)]
	public enum IOCmd {
		NOP,
		RESTARTREAD,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLIOE_", has_type_id = false)]
	public enum IOError {
		OK,
		UNKNOWNCMD,
		FAILRESTART,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLINFO_", has_type_id = false)]
	public enum Info {
		NONE,
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
		LASTONE
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLINFO_", has_type_id = false)]
	public enum InfoType {
		TEXT,
		HEADER_IN,
		HEADER_OUT,
		DATA_IN,
		DATA_OUT,
		SSL_DATA_IN,
		SSL_DATA_OUT,
		END
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLKHTYPE_", has_type_id = false)]
	public enum KeyHostKeyType {
		UNKNOWN,
		RSA1,
		RSA,
		DSS
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLKHMATCH_", has_type_id = false)]
	public enum KeyHostMatch {
		OK,
		MISMATCH,
		MISSING,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLKHSTAT_", has_type_id = false)]
	public enum KeyHostStat {
		FINE_ADD_TO_FILE,
		FINE,
		REJECT,
		DEFER,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_LOCK_ACCESS_", has_type_id = false)]
	public enum LockAccess {
		NONE,
		SHARED,
		SINGLE,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_LOCK_DATA_", has_type_id = false)]
	public enum LockData {
		NONE,
		SHARE,
		COOKIE,
		DNS,
		SSL_SESSION,
		CONNECT,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLMSG_", has_type_id = false)]
	public enum Msg {
		NONE,
		DONE,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLM_", has_type_id = false)]
	public enum MultiCode {
		CALL_MULTI_PERFORM,
		OK,
		BAD_HANDLE,
		BAD_EASY_HANDLE,
		OUT_OF_MEMORY,
		INTERNAL_ERROR,
		BAD_SOCKET,
		UNKNOWN_OPTION,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLMOPT_", has_type_id = false)]
	public enum MultiOption {
		SOCKETFUNCTION,
		SOCKETDATA,
		PIPELINING,
		TIMERFUNCTION,
		TIMERDATA,
		MAXCONNECTS,
		LASTENTRY
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_NETRC_", has_type_id = false)]
	public enum NetRCOption {
		IGNORED,
		OPTIONAL,
		REQUIRED,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLOPT_", has_type_id = false)]
	public enum Option {
		FILE,
		WRITEDATA,
		URL,
		PORT,
		PROXY,
		USERPWD,
		PROXYUSERPWD,
		RANGE,
		INFILE,
		READDATA,
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
		RTSPHEADER,
		HTTPPOST,
		SSLCERT,
		KEYPASSWD,
		CRLF,
		QUOTE,
		WRITEHEADER,
		HEADERDATA,
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
		LASTENTRY
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLPROXY_", has_type_id = false)]
	public enum ProxyType {
		HTTP,
		HTTP_1_0,
		SOCKS4,
		SOCKS5,
		SOCKS4A,
		SOCKS5_HOSTNAME
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_RTSPREQ_", has_type_id = false)]
	public enum RTSPRequest {
		NONE,
		OPTIONS,
		DESCRIBE,
		ANNOUNCE,
		SETUP,
		PLAY,
		PAUSE,
		TEARDOWN,
		GET_PARAMETER,
		SET_PARAMETER,
		RECORD,
		RECEIVE,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_SSLVERSION_", has_type_id = false)]
	public enum SSLVersion {
		DEFAULT,
		TLSv1,
		SSLv2,
		SSLv3,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLSHE_", has_type_id = false)]
	public enum SharedCode {
		OK,
		BAD_OPTION,
		IN_USE,
		INVALID,
		NOMEM,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLSHOPT_", has_type_id = false)]
	public enum SharedOption {
		NONE,
		SHARE,
		UNSHARE,
		LOCKFUNC,
		UNLOCKFUNC,
		USERDATA,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLSOCKTYPE_", has_type_id = false)]
	public enum SocketType {
		IPCXN,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_TLSAUTH_", has_type_id = false)]
	public enum TLSAuth {
		NONE,
		SRP,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURL_TIMECOND_", has_type_id = false)]
	public enum TimeCond {
		NONE,
		IFMODSINCE,
		IFUNMODSINCE,
		LASTMOD,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLUSESSL_", has_type_id = false)]
	public enum UseSSL {
		NONE,
		TRY,
		CONTROL,
		ALL,
		LAST
	}
	[CCode (cheader_filename = "curl/curl.h", cprefix = "CURLVERSION_", has_type_id = false)]
	public enum Version {
		FIRST,
		SECOND,
		THIRD,
		FOURTH,
		NOW,
		LAST
	}
	[CCode (cname = "CURL_GLOBAL_ALL")]
	public const int GLOBAL_ALL;
	[CCode (cname = "CURL_GLOBAL_DEFAULT")]
	public const int GLOBAL_DEFAULT;
	[CCode (cname = "CURL_GLOBAL_NOTHING")]
	public const int GLOBAL_NOTHING;
	[CCode (cname = "CURL_GLOBAL_SSL")]
	public const int GLOBAL_SSL;
	[CCode (cname = "CURL_GLOBAL_WIN32")]
	public const int GLOBAL_WIN32;
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
	[CCode (cheader_filename = "curl/curl.h", cname = "CURL_SEEKFUNC_CANTSEEK")]
	public const int SEEKFUNC_CANTSEEK;
	[CCode (cheader_filename = "curl/curl.h", cname = "CURL_SEEKFUNC_FAIL")]
	public const int SEEKFUNC_FAIL;
	[CCode (cheader_filename = "curl/curl.h", cname = "CURL_SEEKFUNC_OK")]
	public const int SEEKFUNC_OK;
}
