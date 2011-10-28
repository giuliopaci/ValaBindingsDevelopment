<?xml version="1.0"?>
<api version="1.0">
	<namespace name="MHD_">
    <enum name="MHD_ConnectionInfoType">
      <member name="MHD_CONNECTION_INFO_CIPHER_ALGO" type="int" value="0"/>
      <member name="MHD_CONNECTION_INFO_PROTOCOL" type="int" value="1"/>
      <member name="MHD_CONNECTION_INFO_CLIENT_ADDRESS" type="int" value="2"/>
    </enum>
    <enum name="MHD_ValueKind">
      <member name="MHD_RESPONSE_HEADER_KIND " type="int" value="0"/>
      <member name="MHD_HEADER_KIND " type="int" value="1"/>
      <member name="MHD_COOKIE_KIND " type="int" value="2"/>
      <member name="MHD_POSTDATA_KIND " type="int" value="4"/>
      <member name="MHD_GET_ARGUMENT_KIND " type="int" value="8"/>
      <member name="MHD_FOOTER_KIND " type="int" value="16"/>
    </enum>
    <enum name="MHD_DaemonInfoType">
      <member name="MHD_DAEMON_INFO_KEY_SIZE" type="int" value="0"/>
      <member name="MHD_DAEMON_INFO_MAC_KEY_SIZE" type="int" value="1"/>
      <member name="MHD_DAEMON_INFO_LISTEN_FD" type="int" value="2"/>
    </enum>
    <enum name="MHD_RequestTerminationCode">
      <member name="MHD_REQUEST_TERMINATED_COMPLETED_OK" type="int" value="0"/>
      <member name="MHD_REQUEST_TERMINATED_WITH_ERROR" type="int" value="1"/>
      <member name="MHD_REQUEST_TERMINATED_TIMEOUT_REACHED" type="int" value="2"/>
      <member name="MHD_REQUEST_TERMINATED_DAEMON_SHUTDOWN" type="int" value="3"/>
    </enum>
    <enum name="MHD_FLAG">
      <member name="MHD_NO_FLAG" type="int" value="0"/>
      <member name="MHD_USE_DEBUG" type="int" value="1"/>
      <member name="MHD_USE_SSL" type="int" value="2"/>
      <member name="MHD_USE_THREAD_PER_CONNECTION" type="int" value="4"/>
      <member name="MHD_USE_SELECT_INTERNALLY" type="int" value="8"/>
      <member name="MHD_USE_IPv6" type="int" value="16"/>
      <member name="MHD_USE_PEDANTIC_CHECKS" type="int" value="32"/>
      <member name="MHD_USE_POLL" type="int" value="64"/>
    </enum>
    <enum name="MHD_OPTION">
      <member name="MHD_OPTION_END" type="int" value="0"/>
      <member name="MHD_OPTION_CONNECTION_MEMORY_LIMIT" type="int" value="1"/>
      <member name="MHD_OPTION_CONNECTION_LIMIT" type="int" value="2"/>
      <member name="MHD_OPTION_CONNECTION_TIMEOUT" type="int" value="3"/>
      <member name="MHD_OPTION_NOTIFY_COMPLETED" type="int" value="4"/>
      <member name="MHD_OPTION_PER_IP_CONNECTION_LIMIT" type="int" value="5"/>
      <member name="MHD_OPTION_SOCK_ADDR" type="int" value="6"/>
      <member name="MHD_OPTION_URI_LOG_CALLBACK" type="int" value="7"/>
      <member name="MHD_OPTION_HTTPS_MEM_KEY" type="int" value="8"/>
      <member name="MHD_OPTION_HTTPS_MEM_CERT" type="int" value="9"/>
      <member name="MHD_OPTION_CRED_TYPE" type="int" value="10"/>
      <member name="MHD_OPTION_PROTOCOL_VERSION" type="int" value="11"/>
      <member name="MHD_OPTION_CIPHER_ALGORITHM" type="int" value="12"/>
      <member name="MHD_OPTION_EXTERNAL_LOGGER" type="int" value="13"/>
      <member name="MHD_OPTION_THREAD_POOL_SIZE" type="int" value="14"/>
      <member name="MHD_OPTION_ARRAY" type="int" value="15"/>
    </enum>
    <union name="MHD_ConnectionInfo" />
    <union name="MHD_DaemonInfo" />
		<function name="MHD_add_response_footer" symbol="MHD_add_response_footer">
			<return-type type="int"/>
			<parameters>
				<parameter name="response" type="struct MHD_Response*"/>
				<parameter name="footer" type="char*"/>
				<parameter name="content" type="char*"/>
			</parameters>
		</function>
		<function name="MHD_add_response_header" symbol="MHD_add_response_header">
			<return-type type="int"/>
			<parameters>
				<parameter name="response" type="struct MHD_Response*"/>
				<parameter name="header" type="char*"/>
				<parameter name="content" type="char*"/>
			</parameters>
		</function>
		<function name="MHD_create_post_processor" symbol="MHD_create_post_processor">
			<return-type type="struct MHD_PostProcessor*"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="buffer_size" type="size_t"/>
				<parameter name="iter" type="MHD_PostDataIterator"/>
				<parameter name="cls" type="void*"/>
			</parameters>
		</function>
		<function name="MHD_create_response_from_callback" symbol="MHD_create_response_from_callback">
			<return-type type="struct MHD_Response*"/>
			<parameters>
				<parameter name="size" type="uint64_t"/>
				<parameter name="block_size" type="size_t"/>
				<parameter name="crc" type="MHD_ContentReaderCallback"/>
				<parameter name="crc_cls" type="void*"/>
				<parameter name="crfc" type="MHD_ContentReaderFreeCallback"/>
			</parameters>
		</function>
		<function name="MHD_create_response_from_data" symbol="MHD_create_response_from_data">
			<return-type type="struct MHD_Response*"/>
			<parameters>
				<parameter name="size" type="size_t"/>
				<parameter name="data" type="void*"/>
				<parameter name="must_free" type="int"/>
				<parameter name="must_copy" type="int"/>
			</parameters>
		</function>
		<function name="MHD_create_response_from_fd" symbol="MHD_create_response_from_fd">
			<return-type type="struct MHD_Response*"/>
			<parameters>
				<parameter name="size" type="size_t"/>
				<parameter name="fd" type="int"/>
			</parameters>
		</function>
		<function name="MHD_del_response_header" symbol="MHD_del_response_header">
			<return-type type="int"/>
			<parameters>
				<parameter name="response" type="struct MHD_Response*"/>
				<parameter name="header" type="char*"/>
				<parameter name="content" type="char*"/>
			</parameters>
		</function>
		<function name="MHD_destroy_post_processor" symbol="MHD_destroy_post_processor">
			<return-type type="int"/>
			<parameters>
				<parameter name="pp" type="struct MHD_PostProcessor*"/>
			</parameters>
		</function>
		<function name="MHD_destroy_response" symbol="MHD_destroy_response">
			<return-type type="void"/>
			<parameters>
				<parameter name="response" type="struct MHD_Response*"/>
			</parameters>
		</function>
		<function name="MHD_digest_auth_check" symbol="MHD_digest_auth_check">
			<return-type type="int"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="realm" type="char*"/>
				<parameter name="username" type="char*"/>
				<parameter name="password" type="char*"/>
				<parameter name="nonce_timeout" type="unsigned"/>
			</parameters>
		</function>
		<function name="MHD_digest_auth_get_username" symbol="MHD_digest_auth_get_username">
			<return-type type="char*"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
			</parameters>
		</function>
		<function name="MHD_get_connection_info" symbol="MHD_get_connection_info">
			<return-type type="MHD_ConnectionInfo*"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="infoType" type="MHD_ConnectionInfoType"/>
			</parameters>
		</function>
		<function name="MHD_get_connection_values" symbol="MHD_get_connection_values">
			<return-type type="int"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="kind" type="MHD_ValueKind"/>
				<parameter name="iterator" type="MHD_KeyValueIterator"/>
				<parameter name="iterator_cls" type="void*"/>
			</parameters>
		</function>
		<function name="MHD_get_daemon_info" symbol="MHD_get_daemon_info">
			<return-type type="MHD_DaemonInfo*"/>
			<parameters>
				<parameter name="daemon" type="struct MHD_Daemon*"/>
				<parameter name="infoType" type="MHD_DaemonInfoType"/>
			</parameters>
		</function>
		<function name="MHD_get_fdset" symbol="MHD_get_fdset">
			<return-type type="int"/>
			<parameters>
				<parameter name="daemon" type="struct MHD_Daemon*"/>
				<parameter name="read_fd_set" type="fd_set*"/>
				<parameter name="write_fd_set" type="fd_set*"/>
				<parameter name="except_fd_set" type="fd_set*"/>
				<parameter name="max_fd" type="int*"/>
			</parameters>
		</function>
		<function name="MHD_get_response_header" symbol="MHD_get_response_header">
			<return-type type="char*"/>
			<parameters>
				<parameter name="response" type="struct MHD_Response*"/>
				<parameter name="key" type="char*"/>
			</parameters>
		</function>
		<function name="MHD_get_response_headers" symbol="MHD_get_response_headers">
			<return-type type="int"/>
			<parameters>
				<parameter name="response" type="struct MHD_Response*"/>
				<parameter name="iterator" type="MHD_KeyValueIterator"/>
				<parameter name="iterator_cls" type="void*"/>
			</parameters>
		</function>
		<function name="MHD_get_timeout" symbol="MHD_get_timeout">
			<return-type type="int"/>
			<parameters>
				<parameter name="daemon" type="struct MHD_Daemon*"/>
				<parameter name="timeout" type="unsigned*"/>
			</parameters>
		</function>
		<function name="MHD_get_version" symbol="MHD_get_version">
			<return-type type="char*"/>
		</function>
		<function name="MHD_lookup_connection_value" symbol="MHD_lookup_connection_value">
			<return-type type="char*"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="kind" type="MHD_ValueKind"/>
				<parameter name="key" type="char*"/>
			</parameters>
		</function>
		<function name="MHD_post_process" symbol="MHD_post_process">
			<return-type type="int"/>
			<parameters>
				<parameter name="pp" type="struct MHD_PostProcessor*"/>
				<parameter name="post_data" type="char*"/>
				<parameter name="post_data_len" type="size_t"/>
			</parameters>
		</function>
		<function name="MHD_queue_auth_fail_response" symbol="MHD_queue_auth_fail_response">
			<return-type type="int"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="realm" type="char*"/>
				<parameter name="opaque" type="char*"/>
				<parameter name="response" type="struct MHD_Response*"/>
				<parameter name="signal_stale" type="int"/>
			</parameters>
		</function>
		<function name="MHD_queue_response" symbol="MHD_queue_response">
			<return-type type="int"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="status_code" type="unsigned"/>
				<parameter name="response" type="struct MHD_Response*"/>
			</parameters>
		</function>
		<function name="MHD_run" symbol="MHD_run">
			<return-type type="int"/>
			<parameters>
				<parameter name="daemon" type="struct MHD_Daemon*"/>
			</parameters>
		</function>
		<function name="MHD_set_connection_value" symbol="MHD_set_connection_value">
			<return-type type="int"/>
			<parameters>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="kind" type="MHD_ValueKind"/>
				<parameter name="key" type="char*"/>
				<parameter name="value" type="char*"/>
			</parameters>
		</function>
		<function name="MHD_set_panic_func" symbol="MHD_set_panic_func">
			<return-type type="void"/>
			<parameters>
				<parameter name="cb" type="MHD_PanicCallback"/>
				<parameter name="cls" type="void*"/>
			</parameters>
		</function>
		<function name="MHD_start_daemon" symbol="MHD_start_daemon">
			<return-type type="struct MHD_Daemon*"/>
			<parameters>
				<parameter name="flags" type="unsigned"/>
				<parameter name="port" type="uint16_t"/>
				<parameter name="apc" type="MHD_AcceptPolicyCallback"/>
				<parameter name="apc_cls" type="void*"/>
				<parameter name="dh" type="MHD_AccessHandlerCallback"/>
				<parameter name="dh_cls" type="void*"/>
			</parameters>
		</function>
		<function name="MHD_start_daemon_va" symbol="MHD_start_daemon_va">
			<return-type type="struct MHD_Daemon*"/>
			<parameters>
				<parameter name="options" type="unsigned"/>
				<parameter name="port" type="uint16_t"/>
				<parameter name="apc" type="MHD_AcceptPolicyCallback"/>
				<parameter name="apc_cls" type="void*"/>
				<parameter name="dh" type="MHD_AccessHandlerCallback"/>
				<parameter name="dh_cls" type="void*"/>
				<parameter name="ap" type="va_list"/>
			</parameters>
		</function>
		<function name="MHD_stop_daemon" symbol="MHD_stop_daemon">
			<return-type type="void"/>
			<parameters>
				<parameter name="daemon" type="struct MHD_Daemon*"/>
			</parameters>
		</function>
		<callback name="MHD_AcceptPolicyCallback">
			<return-type type="int"/>
			<parameters>
				<parameter name="cls" type="void*"/>
				<parameter name="addr" type="struct sockaddr*"/>
				<parameter name="addrlen" type="socklen_t"/>
			</parameters>
		</callback>
		<callback name="MHD_AccessHandlerCallback">
			<return-type type="int"/>
			<parameters>
				<parameter name="cls" type="void*"/>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="url" type="char*"/>
				<parameter name="method" type="char*"/>
				<parameter name="version" type="char*"/>
				<parameter name="upload_data" type="char*"/>
				<parameter name="upload_data_size" type="size_t*"/>
				<parameter name="con_cls" type="void**"/>
			</parameters>
		</callback>
		<callback name="MHD_ContentReaderCallback">
			<return-type type="ssize_t"/>
			<parameters>
				<parameter name="cls" type="void*"/>
				<parameter name="pos" type="uint64_t"/>
				<parameter name="buf" type="char*"/>
				<parameter name="max" type="size_t"/>
			</parameters>
		</callback>
		<callback name="MHD_ContentReaderFreeCallback">
			<return-type type="void"/>
			<parameters>
				<parameter name="cls" type="void*"/>
			</parameters>
		</callback>
		<callback name="MHD_KeyValueIterator">
			<return-type type="int"/>
			<parameters>
				<parameter name="cls" type="void*"/>
				<parameter name="kind" type="MHD_ValueKind"/>
				<parameter name="key" type="char*"/>
				<parameter name="value" type="char*"/>
			</parameters>
		</callback>
		<callback name="MHD_PanicCallback">
			<return-type type="void"/>
			<parameters>
				<parameter name="cls" type="void*"/>
				<parameter name="file" type="char*"/>
				<parameter name="line" type="unsigned"/>
				<parameter name="reason" type="char*"/>
			</parameters>
		</callback>
		<callback name="MHD_PostDataIterator">
			<return-type type="int"/>
			<parameters>
				<parameter name="cls" type="void*"/>
				<parameter name="kind" type="MHD_ValueKind"/>
				<parameter name="key" type="char*"/>
				<parameter name="filename" type="char*"/>
				<parameter name="content_type" type="char*"/>
				<parameter name="transfer_encoding" type="char*"/>
				<parameter name="data" type="char*"/>
				<parameter name="off" type="uint64_t"/>
				<parameter name="size" type="size_t"/>
			</parameters>
		</callback>
		<callback name="MHD_RequestCompletedCallback">
			<return-type type="void"/>
			<parameters>
				<parameter name="cls" type="void*"/>
				<parameter name="connection" type="struct MHD_Connection*"/>
				<parameter name="con_cls" type="void**"/>
				<parameter name="toe" type="MHD_RequestTerminationCode"/>
			</parameters>
		</callback>
		<struct name="fd_set">
		</struct>
		<struct name="intptr_t">
		</struct>
		<struct name="size_t">
		</struct>
		<struct name="socklen_t">
		</struct>
		<struct name="uint64_t">
		</struct>
		<constant name="MHD_CONTENT_READER_END_WITH_ERROR" type="int" value="-1"/>
		<constant name="MHD_HTTP_ACCEPTED" type="int" value="202"/>
		<constant name="MHD_HTTP_BAD_GATEWAY" type="int" value="502"/>
		<constant name="MHD_HTTP_BAD_REQUEST" type="int" value="400"/>
		<constant name="MHD_HTTP_BANDWIDTH_LIMIT_EXCEEDED" type="int" value="509"/>
		<constant name="MHD_HTTP_CONFLICT" type="int" value="409"/>
		<constant name="MHD_HTTP_CONTINUE" type="int" value="100"/>
		<constant name="MHD_HTTP_CREATED" type="int" value="201"/>
		<constant name="MHD_HTTP_EXPECTATION_FAILED" type="int" value="417"/>
		<constant name="MHD_HTTP_FAILED_DEPENDENCY" type="int" value="424"/>
		<constant name="MHD_HTTP_FORBIDDEN" type="int" value="403"/>
		<constant name="MHD_HTTP_FOUND" type="int" value="302"/>
		<constant name="MHD_HTTP_GATEWAY_TIMEOUT" type="int" value="504"/>
		<constant name="MHD_HTTP_GONE" type="int" value="410"/>
		<constant name="MHD_HTTP_HEADER_ACCEPT" type="char*" value="Accept"/>
		<constant name="MHD_HTTP_HEADER_ACCEPT_CHARSET" type="char*" value="Accept-Charset"/>
		<constant name="MHD_HTTP_HEADER_ACCEPT_ENCODING" type="char*" value="Accept-Encoding"/>
		<constant name="MHD_HTTP_HEADER_ACCEPT_LANGUAGE" type="char*" value="Accept-Language"/>
		<constant name="MHD_HTTP_HEADER_ACCEPT_RANGES" type="char*" value="Accept-Ranges"/>
		<constant name="MHD_HTTP_HEADER_AGE" type="char*" value="Age"/>
		<constant name="MHD_HTTP_HEADER_ALLOW" type="char*" value="Allow"/>
		<constant name="MHD_HTTP_HEADER_AUTHORIZATION" type="char*" value="Authorization"/>
		<constant name="MHD_HTTP_HEADER_CACHE_CONTROL" type="char*" value="Cache-Control"/>
		<constant name="MHD_HTTP_HEADER_CONNECTION" type="char*" value="Connection"/>
		<constant name="MHD_HTTP_HEADER_CONTENT_ENCODING" type="char*" value="Content-Encoding"/>
		<constant name="MHD_HTTP_HEADER_CONTENT_LANGUAGE" type="char*" value="Content-Language"/>
		<constant name="MHD_HTTP_HEADER_CONTENT_LENGTH" type="char*" value="Content-Length"/>
		<constant name="MHD_HTTP_HEADER_CONTENT_LOCATION" type="char*" value="Content-Location"/>
		<constant name="MHD_HTTP_HEADER_CONTENT_MD5" type="char*" value="Content-MD5"/>
		<constant name="MHD_HTTP_HEADER_CONTENT_RANGE" type="char*" value="Content-Range"/>
		<constant name="MHD_HTTP_HEADER_CONTENT_TYPE" type="char*" value="Content-Type"/>
		<constant name="MHD_HTTP_HEADER_COOKIE" type="char*" value="Cookie"/>
		<constant name="MHD_HTTP_HEADER_DATE" type="char*" value="Date"/>
		<constant name="MHD_HTTP_HEADER_ETAG" type="char*" value="ETag"/>
		<constant name="MHD_HTTP_HEADER_EXPECT" type="char*" value="Expect"/>
		<constant name="MHD_HTTP_HEADER_EXPIRES" type="char*" value="Expires"/>
		<constant name="MHD_HTTP_HEADER_FROM" type="char*" value="From"/>
		<constant name="MHD_HTTP_HEADER_HOST" type="char*" value="Host"/>
		<constant name="MHD_HTTP_HEADER_IF_MATCH" type="char*" value="If-Match"/>
		<constant name="MHD_HTTP_HEADER_IF_MODIFIED_SINCE" type="char*" value="If-Modified-Since"/>
		<constant name="MHD_HTTP_HEADER_IF_NONE_MATCH" type="char*" value="If-None-Match"/>
		<constant name="MHD_HTTP_HEADER_IF_RANGE" type="char*" value="If-Range"/>
		<constant name="MHD_HTTP_HEADER_IF_UNMODIFIED_SINCE" type="char*" value="If-Unmodified-Since"/>
		<constant name="MHD_HTTP_HEADER_LAST_MODIFIED" type="char*" value="Last-Modified"/>
		<constant name="MHD_HTTP_HEADER_LOCATION" type="char*" value="Location"/>
		<constant name="MHD_HTTP_HEADER_MAX_FORWARDS" type="char*" value="Max-Forwards"/>
		<constant name="MHD_HTTP_HEADER_PRAGMA" type="char*" value="Pragma"/>
		<constant name="MHD_HTTP_HEADER_PROXY_AUTHENTICATE" type="char*" value="Proxy-Authenticate"/>
		<constant name="MHD_HTTP_HEADER_PROXY_AUTHORIZATION" type="char*" value="Proxy-Authorization"/>
		<constant name="MHD_HTTP_HEADER_RANGE" type="char*" value="Range"/>
		<constant name="MHD_HTTP_HEADER_REFERER" type="char*" value="Referer"/>
		<constant name="MHD_HTTP_HEADER_RETRY_AFTER" type="char*" value="Retry-After"/>
		<constant name="MHD_HTTP_HEADER_SERVER" type="char*" value="Server"/>
		<constant name="MHD_HTTP_HEADER_SET_COOKIE" type="char*" value="Set-Cookie"/>
		<constant name="MHD_HTTP_HEADER_SET_COOKIE2" type="char*" value="Set-Cookie2"/>
		<constant name="MHD_HTTP_HEADER_TE" type="char*" value="TE"/>
		<constant name="MHD_HTTP_HEADER_TRAILER" type="char*" value="Trailer"/>
		<constant name="MHD_HTTP_HEADER_TRANSFER_ENCODING" type="char*" value="Transfer-Encoding"/>
		<constant name="MHD_HTTP_HEADER_UPGRADE" type="char*" value="Upgrade"/>
		<constant name="MHD_HTTP_HEADER_USER_AGENT" type="char*" value="User-Agent"/>
		<constant name="MHD_HTTP_HEADER_VARY" type="char*" value="Vary"/>
		<constant name="MHD_HTTP_HEADER_VIA" type="char*" value="Via"/>
		<constant name="MHD_HTTP_HEADER_WARNING" type="char*" value="Warning"/>
		<constant name="MHD_HTTP_HEADER_WWW_AUTHENTICATE" type="char*" value="WWW-Authenticate"/>
		<constant name="MHD_HTTP_HTTP_VERSION_NOT_SUPPORTED" type="int" value="505"/>
		<constant name="MHD_HTTP_INSUFFICIENT_STORAGE" type="int" value="507"/>
		<constant name="MHD_HTTP_INTERNAL_SERVER_ERROR" type="int" value="500"/>
		<constant name="MHD_HTTP_LENGTH_REQUIRED" type="int" value="411"/>
		<constant name="MHD_HTTP_LOCKED" type="int" value="423"/>
		<constant name="MHD_HTTP_METHOD_CONNECT" type="char*" value="CONNECT"/>
		<constant name="MHD_HTTP_METHOD_DELETE" type="char*" value="DELETE"/>
		<constant name="MHD_HTTP_METHOD_GET" type="char*" value="GET"/>
		<constant name="MHD_HTTP_METHOD_HEAD" type="char*" value="HEAD"/>
		<constant name="MHD_HTTP_METHOD_NOT_ACCEPTABLE" type="int" value="406"/>
		<constant name="MHD_HTTP_METHOD_NOT_ALLOWED" type="int" value="405"/>
		<constant name="MHD_HTTP_METHOD_OPTIONS" type="char*" value="OPTIONS"/>
		<constant name="MHD_HTTP_METHOD_POST" type="char*" value="POST"/>
		<constant name="MHD_HTTP_METHOD_PUT" type="char*" value="PUT"/>
		<constant name="MHD_HTTP_METHOD_TRACE" type="char*" value="TRACE"/>
		<constant name="MHD_HTTP_MOVED_PERMANENTLY" type="int" value="301"/>
		<constant name="MHD_HTTP_MULTIPLE_CHOICES" type="int" value="300"/>
		<constant name="MHD_HTTP_MULTI_STATUS" type="int" value="207"/>
		<constant name="MHD_HTTP_NON_AUTHORITATIVE_INFORMATION" type="int" value="203"/>
		<constant name="MHD_HTTP_NOT_EXTENDED" type="int" value="510"/>
		<constant name="MHD_HTTP_NOT_FOUND" type="int" value="404"/>
		<constant name="MHD_HTTP_NOT_IMPLEMENTED" type="int" value="501"/>
		<constant name="MHD_HTTP_NOT_MODIFIED" type="int" value="304"/>
		<constant name="MHD_HTTP_NO_CONTENT" type="int" value="204"/>
		<constant name="MHD_HTTP_OK" type="int" value="200"/>
		<constant name="MHD_HTTP_PARTIAL_CONTENT" type="int" value="206"/>
		<constant name="MHD_HTTP_PAYMENT_REQUIRED" type="int" value="402"/>
		<constant name="MHD_HTTP_POST_ENCODING_FORM_URLENCODED" type="char*" value="application/x-www-form-urlencoded"/>
		<constant name="MHD_HTTP_POST_ENCODING_MULTIPART_FORMDATA" type="char*" value="multipart/form-data"/>
		<constant name="MHD_HTTP_PRECONDITION_FAILED" type="int" value="412"/>
		<constant name="MHD_HTTP_PROCESSING" type="int" value="102"/>
		<constant name="MHD_HTTP_PROXY_AUTHENTICATION_REQUIRED" type="int" value="407"/>
		<constant name="MHD_HTTP_REQUESTED_RANGE_NOT_SATISFIABLE" type="int" value="416"/>
		<constant name="MHD_HTTP_REQUEST_ENTITY_TOO_LARGE" type="int" value="413"/>
		<constant name="MHD_HTTP_REQUEST_TIMEOUT" type="int" value="408"/>
		<constant name="MHD_HTTP_REQUEST_URI_TOO_LONG" type="int" value="414"/>
		<constant name="MHD_HTTP_RESET_CONTENT" type="int" value="205"/>
		<constant name="MHD_HTTP_RETRY_WITH" type="int" value="449"/>
		<constant name="MHD_HTTP_SEE_OTHER" type="int" value="303"/>
		<constant name="MHD_HTTP_SERVICE_UNAVAILABLE" type="int" value="503"/>
		<constant name="MHD_HTTP_SWITCHING_PROTOCOLS" type="int" value="101"/>
		<constant name="MHD_HTTP_SWITCH_PROXY" type="int" value="306"/>
		<constant name="MHD_HTTP_TEMPORARY_REDIRECT" type="int" value="307"/>
		<constant name="MHD_HTTP_UNAUTHORIZED" type="int" value="401"/>
		<constant name="MHD_HTTP_UNORDERED_COLLECTION" type="int" value="425"/>
		<constant name="MHD_HTTP_UNPROCESSABLE_ENTITY" type="int" value="422"/>
		<constant name="MHD_HTTP_UNSUPPORTED_MEDIA_TYPE" type="int" value="415"/>
		<constant name="MHD_HTTP_UPGRADE_REQUIRED" type="int" value="426"/>
		<constant name="MHD_HTTP_USE_PROXY" type="int" value="305"/>
		<constant name="MHD_HTTP_VARIANT_ALSO_NEGOTIATES" type="int" value="506"/>
		<constant name="MHD_HTTP_VERSION_1_0" type="char*" value="HTTP/1.0"/>
		<constant name="MHD_HTTP_VERSION_1_1" type="char*" value="HTTP/1.1"/>
		<constant name="MHD_INVALID_NONCE" type="int" value="-1"/>
		<constant name="MHD_NO" type="int" value="0"/>
		<constant name="MHD_VERSION" type="int" value="590592"/>
		<constant name="MHD_YES" type="int" value="1"/>
	</namespace>
</api>
