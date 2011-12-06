/* raptor2.vapi
 *
 * Copyright (C) 2011  Giulio Paci <giuliopaci@interfree.it>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 * 	Giulio Paci <giuliopaci@interfree.it>
 */


[CCode (cheader_filename = "raptor2.h")]
namespace Raptor {
	[CCode (cname="RAPTOR_RDF_MS_URI")]
	static unowned Uri RDF_MS_URI;
	[CCode (cname="RAPTOR_RDF_SCHEMA_URI")]
	static unowned Uri RDF_SCHEMA_URI;
	[CCode (cname="RAPTOR_XMLSCHEMA_DATATYPES_URI")]
	static unowned Uri XMLSCHEMA_DATATYPES_URI;
	[CCode (cname="RAPTOR_OWL_URI")]
	static unowned Uri OWL_URI;

	[CCode (cname="RAPTOR_VERSION")]
	static const uint VERSION;
	[CCode (cname="RAPTOR_VERSION_MAJOR")]
	static const uint VERSION_MAJOR;
	[CCode (cname="RAPTOR_VERSION_MINOR")]
	static const uint VERSION_MINOR;
	[CCode (cname="RAPTOR_VERSION_RELEASE")]
	static const uint VERSION_RELEASE;
	[CCode (cname="RAPTOR_VERSION_STRING")]
	static const string VERSION_STRING;
	[CCode (cname="raptor_version_major")]
	static const uint version_major;
	[CCode (cname="raptor_version_minor")]
	static const uint version_minor;
	[CCode (cname="raptor_version_release")]
	static const uint version_release;
	[CCode (cname="raptor_version_decimal")]
	static const uint version_decimal;

	// extern              const uint raptor_rdf_namespace_uri_len;
	// extern              const uint raptor_xml_literal_datatype_uri_string_len;

	namespace Memory
	{
		[CCode (cname = "raptor_free_memory")]
		public static void free (void* ptr);
		[CCode (cname = "raptor_alloc_memory")]
		public static void* alloc (size_t size);
		[CCode (cname = "raptor_calloc_memory")]
		public static void* calloc (size_t nmemb, size_t size);
	}

	[CCode (cheader_filename = "raptor2.h",  cname = "raptor_avltree", free_function = "raptor_free_avltree")]
	[Compact]
	public class AVLTree {
		[CCode (cname = "raptor_new_avltree")]
		public AVLTree(DataCompareHandler compare_handler, DataFreeHandler free_handler, uint flags);
		[CCode (cname = "raptor_avltree_add")]
		public int add (void* p_data);
		[CCode (cname = "raptor_avltree_delete")]
		public int delete (void* p_data);
		#if POSIX
		[CCode (cname = "raptor_avltree_print")]
		public int print (Posix.FILE stream);
		#else
		[CCode (cname = "raptor_avltree_print")]
		public int print (GLib.FileStream stream);
		#endif
		[CCode (cname = "raptor_avltree_remove")]
		public void* remove (void* p_data);
		[CCode (cname = "raptor_avltree_search")]
		public void* search (void* p_data);
		[CCode (cname = "raptor_avltree_set_print_handler")]
		public void set_print_handler (DataPrintHandler print_handler);
		[CCode (cname = "raptor_avltree_size")]
		public int size ();
		[CCode (cname = "raptor_avltree_visit")]
		public int visit (VisitHandler visit_handler, void* user_data);
		
		[CCode (cname = "raptor_avltree_visit_handler", has_target = false)]
		public delegate int VisitHandler (int depth, void* data, void* user_data);
	}

	[CCode (cname = "raptor_avltree_iterator", free_function = "raptor_free_avltree_iterator")]
	[Compact]
	public class AVLTreeIterator {
		[CCode (cname = "raptor_new_avltree_iterator")]
		public AVLTreeIterator (AVLTree tree, void* range, DataFreeHandler range_free_handler, int direction);
		[CCode (cname = "raptor_avltree_iterator_get")]
		public void* get ();
		[CCode (cname = "raptor_avltree_iterator_is_end")]
		public bool is_end ();
		[CCode (cname = "raptor_avltree_iterator_next")]
		public bool next ();
	}

	[Compact]
	[CCode (cname = "raptor_sequence", free_function = "raptor_free_sequence")]
	public class Sequence {
		[CCode (cname = "raptor_new_sequence")]
		public Sequence (DataFreeHandler free_handler, DataPrintHandler print_handler);
		[CCode (cname = "raptor_new_sequence_with_context")]
		public Sequence.with_context    (DataContextFreeHandler free_handler, DataContextPrintHandler print_handler, void* handler_context);
		[CCode (cname = "raptor_sequence_delete_at")]
		void* delete_at (int idx);
		[CCode (cname = "raptor_sequence_size")]
		int size ();
		[CCode (cname = "raptor_sequence_set_at")]
		int set_at (int idx, void* data);
		[CCode (cname = "raptor_sequence_push")]
		int push (void* data);
		[CCode (cname = "raptor_sequence_shift")]
		int shift (void* data);
		[CCode (cname = "raptor_sequence_get_at")]
		void* get_at (int idx);
		[CCode (cname = "raptor_sequence_pop")]
		void* pop ();
		[CCode (cname = "raptor_sequence_unshift")]
		void* unshift ();
		[CCode (cname = "raptor_sequence_sort")]
		void sort (DataCompareHandler compare);
		#if POSIX
		[CCode (cname = "raptor_sequence_print")]
		public int print (Posix.FILE stream);
		#else
		[CCode (cname = "raptor_sequence_print")]
		public int print (GLib.FileStream stream);
		#endif
		[CCode (cname = "raptor_sequence_join")]
		int join (Sequence src);
	}


	[Compact]
	[CCode (cname = "raptor_serializer", free_function = "raptor_free_serializer")]
	public class Serializer {
		public Serializer (World world, string name);
		public int start_to_iostream (Uri uri, IOStream iostream);
		public int start_to_filename (string filename);
		public int start_to_string (Uri uri, out void* string_p, out size_t length_p);
		public int set_namespace (Uri uri, string prefix);
		public int set_namespace_from_namespace (Namespace nspace);
		public int serialize_statement (Statement statement);
		public int serialize_end ();
		public int flush ();
		public SyntaxDescription get_description ();
		public IOStream get_iostream ();
		public Locator get_locator ();
		public int set_option (Option option, string string, int integer);
		public int get_option (Option option, out char* string_p,  out int integer_p);
		public World get_world ();
		#if POSIX
		[CCode (cname = "raptor_serializer_start_to_file_handle")]
		public int start_to_file_handle (Uri uri, Posix.FILE fh);
		#else
		[CCode (cname = "raptor_serializer_start_to_file_handle")]
		public int start_to_file_handle (Uri uri, GLib.FileStream stream);
		#endif
	}



	[Compact]
	[CCode (cname = "raptor_stringbuffer", free_function = "raptor_free_stringbuffer")]
	public class StringBuffer {
		public StringBuffer();
		public int append_counted_string (uchar* string, size_t length, int do_copy);
		public int append_decimal (int integer);
		public int append_hexadecimal (int hex);
		public int append_string (string string, int do_copy);
		public int append_stringbuffer (StringBuffer append);
		public int append_uri_escaped_counted_string (char* string, size_t length, int space_is_plus);
		public int prepend_counted_string (uchar* string, size_t length, int do_copy);
		public int prepend_string (string string, int do_copy);
		public string as_string ();
		public size_t length ();
		public int copy_to_string (uchar* string, size_t length);
		public int write (IOStream iostr);
	}


	[Compact]
	[CCode (cname = "raptor_unichar")]
	public class UniChar {
// int raptor_unicode_utf8_string_put_char (raptor_unichar c, unsigned char *output, size_t length);
// int raptor_unicode_utf8_string_get_char (const unsigned char *input, size_t length, raptor_unichar *output);
// int raptor_unicode_is_xml11_namestartchar (raptor_unichar c);
// int raptor_unicode_is_xml10_namestartchar (raptor_unichar c);
// int raptor_unicode_is_xml11_namechar    (raptor_unichar c);
// int raptor_unicode_is_xml10_namechar    (raptor_unichar c);
// int raptor_unicode_check_utf8_string    (const unsigned char *string, size_t length);
// int raptor_unicode_utf8_strlen          (const unsigned char *string, size_t length);
// size_t raptor_unicode_utf8_substr          (unsigned char *dest, size_t *dest_length_p, const unsigned char *src, size_t src_length, int startingLoc, int length);
	}





	[Compact]
	[CCode (cname = "raptor_sax2")]
	public class Sax2 {
// raptor_sax2 *       raptor_new_sax2                     (raptor_world *world, raptor_locator *locator, void* user_data);
// void                raptor_free_sax2                    (raptor_sax2 *sax2);
// void                (*raptor_sax2_start_element_handler) (void* user_data, raptor_xml_element *xml_element);
// void                (*raptor_sax2_end_element_handler)  (void* user_data, raptor_xml_element *xml_element);
// void                (*raptor_sax2_characters_handler)   (void* user_data, raptor_xml_element *xml_element, const unsigned char *s, int len);
// void                (*raptor_sax2_cdata_handler)        (void* user_data, raptor_xml_element *xml_element, const unsigned char *s, int len);
// void                (*raptor_sax2_comment_handler)      (void* user_data, raptor_xml_element *xml_element, const unsigned char *s);
// void                (*raptor_sax2_unparsed_entity_decl_handler) (void* user_data, const unsigned char *entityName, const unsigned char *base, const unsigned char *systemId, const unsigned char *publicId, const unsigned char *notationName);
// int                 (*raptor_sax2_external_entity_ref_handler) (void* user_data, const unsigned char *context,const unsigned char *base,const unsigned char *systemId,const unsigned char *publicId);
// void                raptor_sax2_set_start_element_handler (raptor_sax2 *sax2, raptor_sax2_start_element_handler handler);
// void                raptor_sax2_set_end_element_handler (raptor_sax2 *sax2, raptor_sax2_end_element_handler handler);
// void                raptor_sax2_set_characters_handler  (raptor_sax2 *sax2, raptor_sax2_characters_handler handler);
// void                raptor_sax2_set_cdata_handler       (raptor_sax2 *sax2, raptor_sax2_cdata_handler handler);
// void                raptor_sax2_set_comment_handler     (raptor_sax2 *sax2, raptor_sax2_comment_handler handler);
// void                raptor_sax2_set_unparsed_entity_decl_handler (raptor_sax2 *sax2, raptor_sax2_unparsed_entity_decl_handler handler);
// void                raptor_sax2_set_external_entity_ref_handler (raptor_sax2 *sax2, raptor_sax2_external_entity_ref_handler handler);
// void                raptor_sax2_set_namespace_handler   (raptor_sax2 *sax2, raptor_namespace_handler handler);
// void                raptor_sax2_parse_start             (raptor_sax2 *sax2, raptor_uri *base_uri);
// int                 raptor_sax2_parse_chunk             (raptor_sax2 *sax2, const unsigned char *buffer, size_t len, int is_end);
// const unsigned char *  raptor_sax2_inscope_xml_language (raptor_sax2 *sax2);
// raptor_uri *        raptor_sax2_inscope_base_uri        (raptor_sax2 *sax2);
	}

	[Compact]
	[CCode (cname = "raptor_www", free_function = "raptor_free_www")]
	public class WWW {
		public WWW (World world);
		public WWW.with_connection (World world, void* connection);
// void                (*raptor_www_write_bytes_handler)   (raptor_www *www, void* userdata, const void* ptr, size_t size, size_t nmemb);
// void                (*raptor_www_content_type_handler)  (raptor_www *www, void* userdata, const char *content_type);
// int                 (*raptor_uri_filter_func)           (void* user_data, raptor_uri *uri);
// void                (*raptor_www_final_uri_handler)     (raptor_www *www, void* userdata, raptor_uri *final_uri);
public void set_user_agent (string user_agent);
public void set_proxy (string proxy);
public void set_http_accept (string value);
public int set_http_cache_control (string cache_control);
// void                raptor_www_set_write_bytes_handler  (raptor_www *www, raptor_www_write_bytes_handler handler, void* user_data);
public void set_connection_timeout (int timeout);
// void                raptor_www_set_content_type_handler (raptor_www *www, raptor_www_content_type_handler handler, void* user_data);
// void                raptor_www_set_uri_filter           (raptor_www *www, raptor_uri_filter_func filter, void* user_data);
		public Uri get_final_uri ();
// void                raptor_www_set_final_uri_handler    (raptor_www *www, raptor_www_final_uri_handler handler, void* user_data);
		public int fetch (Uri uri);
		public int fetch_to_string (Uri uri, out void* string_p, out size_t length_p, DataMallocHandler malloc_handler);
		public void* get_connection ();
		public int set_ssl_cert_options (string cert_filename, string cert_type, string cert_passphrase);
		public void abort (string reason);
		public int raptor_xml_namespace_string_parse   (string string, out string prefix, out string uri_string);
	}

	[Compact]
	[CCode (cname = "raptor_qname", free_function = "raptor_free_qname")]
	public class QName {
		public QName (NamespaceStack nstack, string name, string value);
		public QName.from_namespace_local_name (World world, Namespace ns, string localname, string value);
		public QName.from_namespace_uri (NamespaceStack nstack, Uri uri, int xml_version);
		public QName copy ();
		public bool equal (QName name2);
		public int write (IOStream iostr);
		public uchar* get_counted_value (out size_t length_p);
		public string get_local_name ();
		public Namespace get_namespace ();
		public string get_value ();
		public uchar* to_counted_name (out size_t length_p);

		public static Uri string_to_uri (NamespaceStack nstack, uchar* name, size_t name_len);
	}



	namespace Xml {

		[Compact]
		[CCode (cname = "raptor_xml_element", free_function = "raptor_free_xml_element")]
		public class Element {
			public Element(QName name, string xml_language, Uri xml_base);
			public Element.from_namespace_local_name (Namespace ns, string name, string xml_language, Uri xml_base);
			public QName get_name ();
			public QName* get_attributes ();
			public int get_attributes_count ();
			public void set_attributes (out QName attributes, int count);
			public int declare_namespace (Namespace nspace);
			public bool is_empty ();
			public string get_language ();
			public int write (NamespaceStack nstack, int is_empty, int is_end, int depth, IOStream iostr);
		}

		[Compact]
		[CCode (cname = "raptor_xml_writer", free_function = "raptor_free_xml_writer")]
		public class Writer {
			public Writer (World world, NamespaceStack nstack, IOStream iostr);
			public void empty_element (Element element);
			public void start_element (Element element);
			public void end_element (Element element);
			public void cdata (string s);
			public void cdata_counted (uchar* s, uint len);
			public void raw (string s);
			public void raw_counted (uchar* s, uint len);
			public void comment (string s);
			public void comment_counted (uchar *s, uint len);
			public void flush ();
			public void newline ();
			public int get_depth ();
			public int set_option (Option option, char* string,  int integer);
			public int get_option (Option option, out char* string_p, out int integer_p);
		}

		public static int escape_string_any (World world, uchar* string, size_t len, uchar* buffer, size_t length, char quote, int xml_version);
		public static int escape_string_any_write (uchar* string, size_t len, char quote, int xml_version, IOStream iostr);
		public static int escape_string (World world, uchar* string, size_t len, uchar* buffer, size_t length, char quote);
		public static int escape_string_write (uchar* string, size_t len, char quote, IOStream iostr);
		public static int name_check (uchar* string, size_t length, int xml_version);
	}



	[Compact]
	[CCode (cname = "raptor_parser", free_function = "raptor_free_parser")]
	public class Parser {
		[CCode (cname = "raptor_new_parser")]
		public Parser (World world, string name);
		[CCode (cname = "raptor_new_parser_for_content")]
		public Parser.for_content(World world, Uri? uri, string? mime_type, uchar* buffer, size_t len, uchar* identifier);
		[CCode (cname = "raptor_parser_set_statement_handler")]
		public void set_statement_handler (void* user_data, StatementHandler handler);
		[CCode (cname = "raptor_parse_file")]
		public void parse_file (Uri? uri, Uri? base_uri);
		[CCode (cname = "raptor_parse_uri")]
		public void parse_uri (Uri? uri, Uri? base_uri);
		[CCode (cname = "raptor_parse_uri_with_connection")]
		public void parse_uri_with_connection (Uri? uri, Uri? base_uri,void* connection);
		[CCode (cname = "raptor_parse_start")]
		public void parse_start (Uri uri);
		[CCode (cname = "raptor_parser_set_option")]
		public int set_option(Option option, string? value, int integer);
		[CCode (cname = "raptor_parser_get_option")]
		public int get_option(Option option, out string value, out int integer);
		[CCode (cname = "raptor_parser_set_namespace_handler")]
		public void set_namespace_handler (void* user_data, NamespaceHandler handler);
		[CCode (cname = "raptor_parser_set_graph_mark_handler")]
		public void set_graph_mark_handler(void* user_data, GraphMarkHandler handler);
		[CCode (cname = "raptor_parser_get_description")]
		public SyntaxDescription get_description();
		[CCode (cname = "raptor_parser_get_locator")]
		public Locator get_locator();
		[CCode (cname = "raptor_parser_parse_abort")]
		public void parse_abort ();
		[CCode (cname = "raptor_parser_parse_chunk")]
		public int parse_chunk (uchar* buffer, size_t len, int is_end);
		[CCode (cname = "raptor_parser_get_graph")]
		public Uri get_graph();
		[CCode (cname = "raptor_parser_get_name")]
		public string get_name();
		[CCode (cname = "raptor_parser_get_accept_heade")]
		public string get_accept_header ();
		[CCode (cname = "raptor_parser_get_world")]
		public World get_world ();
		#if POSIX
		[CCode (cname = "raptor_parser_parse_file_stream")]
		public int parse_file_stream (Posix.FILE stream, string filename, Uri base_uri);
		#else
		[CCode (cname = "raptor_parser_parse_file_stream")]
		public int parse_file_stream (GLib.FileStream stream, string filename, Uri base_uri);
		#endif
		public int parse_iostream (IOStream iostr, Uri base_uri);
// public void set_uri_filter (raptor_uri_filter_func filter, void* user_data);
	}

	[Compact]
	[CCode (cname = "raptor_iostream", free_function = "raptor_free_iostream")]
	public class IOStream {
// int (*raptor_iostream_init_func) (void* context);
// void (*raptor_iostream_finish_func) (void* context);
// int (*raptor_iostream_write_byte_func) (void* context, const int byte);
// int (*raptor_iostream_write_bytes_func) (void* context, const void* ptr, size_t size, size_t nmemb);
// int (*raptor_iostream_write_end_func) (void* context);
// int (*raptor_iostream_read_bytes_func) (void* context, void* ptr, size_t size, size_t nmemb);
// int (*raptor_iostream_read_eof_func) (void* context);
//                     raptor_iostream_handler;


//public IOStream.from_handler    (World world, void* user_data, const raptor_iostream_handler * const handler);
		public IOStream.from_sink       (World world);
		public IOStream.from_filename   (World world, string filename);
		//public IOStream.from_file_handle (World world, FILE *handle);
		//public IOStream.to_file_handle  (World world, FILE *handle);
		public IOStream.from_string     (World world, void* string, size_t length);
		public IOStream.to_sink         (World world);
		public IOStream.to_filename     (World world, string filename);
		public IOStream.to_string       (World world, out void* string_p, out size_t length_p, DataMallocHandler malloc_handler);
		[CCode (cname = "raptor_iostream_hexadecimal_write", instance_pos=2)]
		public int hexadecimal_write (uint integer, int width);
		[CCode (cname = "raptor_iostream_read_bytes", instance_pos=3)]
		public int read_bytes (void* ptr, size_t size, size_t nmemb);
		public int read_eof ();
		public ulong tell ();
		[CCode (cname = "raptor_iostream_counted_string_write", instance_pos=2)]
		public int counted_string_write (void* string, size_t len);
		[CCode (cname = "raptor_iostream_decimal_write", instance_pos=1)]
		public int decimal_write (int integer);
		[CCode (cname = "raptor_iostream_string_write", instance_pos=1)]
		public int string_write (void* string);
		[CCode (cname = "raptor_iostream_write_byte", instance_pos=1)]
		public int write_byte (int byte);
		[CCode (cname = "raptor_iostream_write_bytes", instance_pos=3)]
		public int write_bytes (void* ptr, size_t size, size_t nmemb);
		public int write_end ();
// int                 raptor_bnodeid_ntriples_write (const unsigned char *bnodeid, size_t len, raptor_iostream *iostr);
// int                 raptor_string_ntriples_write (const unsigned char *string, size_t len, const char delim, raptor_iostream *iostr);
// int                 raptor_string_python_write (const unsigned char *string, size_t len, const char delim, int flags, raptor_iostream *iostr);
	}

	[Compact]
	[CCode (cname = "raptor_world", free_function = "raptor_free_world")]
	public class World {
		[CCode (cname = "raptor_new_world")]
		public World ();
		[CCode (cname = "raptor_world_get_parser_description")]
		public SyntaxDescription? get_parser_description(uint counter);
		[CCode (cname = "raptor_world_get_serializer_description")]
		public SyntaxDescription? get_serializer_description(uint counter);
		[CCode (cname = "raptor_world_get_option_description")]
		public OptionDescription? get_option_description(Domain domain, Option option);
		[CCode (cname = "raptor_world_get_option_from_uri")]
		public Option get_option_from_uri(Uri uri);
		[CCode (cname = "raptor_world_get_option_value_type_label")]
		public Option get_option_value_type_label(OptionValueType type);
		[CCode (cname = "raptor_world_open")]
		public int open();
		[CCode (cname = "raptor_world_set_log_handler")]
		public int set_log_handler (void* user_data, LogHandler handler);
		[CCode (cname = "raptor_world_set_flag")]
 		public int set_flag(WorldFlag flag, int value);
		[CCode (cname = "raptor_world_set_libxslt_security_preferences")]
		public int set_libxslt_security_preferences(void* security_preferences);
		[CCode (cname = "raptor_world_is_parser_name")]
		public bool is_parser_name(string name);
		[CCode (cname = "raptor_world_guess_parser_name")]
		public string? guess_parser_name(Uri? uri, string? mime_type,uchar* buffer, size_t len, uchar* identifier);
		[CCode (cname = "raptor_world_is_serializer_name")]
		public bool is_serializer_name(string name);
		[CCode (cname = "raptor_world_generate_bnodeid")]
		public uchar* generate_bnodeid();
		[CCode (cname = "raptor_world_set_generate_bnodeid_handler")]
		public void set_generate_bnodeid_handler(void* user_data, GenerateBnodeIdHandler handler);
		[CCode (cname = "raptor_world_set_generate_bnodeid_parameters")]
		public void set_generate_bnodeid_parameters(string prefix,int base);
	}

	[Compact]
	[CCode (cname = "raptor_syntax_description")]
	public class SyntaxDescription
	{
		string names;
		uint names_count;

		string label;

		TypeQ mime_types;
		uint mime_types_count;

		string uri_strings;
		uint uri_strings_count;

		uint flags;

		[CCode (cname = "raptor_syntax_description_validate")]
		public int validate();
	}

	[Compact]
	[CCode (cname = "raptor_namespace", free_function = "raptor_free_namespace")]
	public class Namespace
	{
		public Namespace.from_uri (NamespaceStack nstack, string prefix, Uri ns_uri, int depth);
		public Namespace (NamespaceStack nstack, string prefix, string ns_uri_string, int depth);
		public Uri get_uri ();
		public string get_prefix ();
		public uchar* get_counted_prefix(out size_t length_p);
		public int write (IOStream iostr);
		public uchar* format_as_xml (out size_t length_p);
	}

	[Compact]
	[CCode (cname = "raptor_namespace_stack", free_function = "raptor_free_namespaces")]
	public class NamespaceStack
	{
		[CCode (cname = "raptor_new_namespaces")]
		public NamespaceStack (World world, int defaults);
		[CCode (cname = "raptor_namespaces_init", instance_pos=1)]
		public int init (World world, int defaults);
		[CCode (cname = "raptor_namespaces_clear")]
		public void clear ();
		[CCode (cname = "raptor_namespaces_start_namespace")]
		public void start_namespace (Namespace nspace);
		[CCode (cname = "raptor_namespaces_start_namespace_full")]
		public int start_namespace_full (string prefix, string ns_uri_string, int depth);
		[CCode (cname = "raptor_namespaces_end_for_depth")]
		public void end_for_depth (int depth);
		[CCode (cname = "raptor_namespaces_get_default_namespace")]
		public Namespace get_default_namespace ();
		[CCode (cname = "raptor_namespaces_find_namespace")]
		public Namespace find_namespace (uchar* prefix, int prefix_length);
		[CCode (cname = "raptor_namespaces_find_namespace_by_uri")]
		public Namespace raptor_namespaces_find_namespace_by_uri (Uri ns_uri);
		[CCode (cname = "raptor_namespaces_in_scope")]
		public int namespace_in_scope (Namespace nspace);
		[CCode (cname = "raptor_namespace_stack_start_namespace")]
		public int start_namespace2 (Namespace ns, int new_depth);
	}

	[Compact]
	[CCode (cname = "raptor_term", free_function = "raptor_free_term")]
	public class Term
	{
		public World world;
		public int usage;
		public TermType type;
		public TermValue value;

		[Compact]
		[CCode (cname = "raptor_term_blank_value")]
		public class Blank
		{
			public uchar* string;
			public uint string_len;
		}
		[CCode (cheader_filename = "raptor2.h")]
		[Compact]
		[CCode (cname = "raptor_term_literal_value")]
		public class Literal
		{
			public uchar* string;
			public uint string_len;

			public Uri datatype;

			public uchar* language;
			public uchar language_len;
		}

		public struct TermValue  {
			public Uri uri;
			public Blank blank;
			public Literal literal;
		}

		public Term.from_blank (World world, string blank);
		public Term.from_counted_blank (World world, uchar* blank, size_t length);
		public Term.from_literal (World world, string literal, Uri datatype, string language);
		public Term.from_counted_literal (World world, uchar* literal, size_t literal_len, Uri datatype, uchar* language, uchar language_len);
		public Term.from_counted_uri_string (World world, uchar *uri_string, size_t length);
		public Term.from_uri (World world, Uri uri);
		public Term.from_uri_string (World world, string uri_string);
		public Term copy ();
		public int compare (Term t2);
		public bool equals (Term t2);
		public string to_counted_string (out size_t len_p);
		public string to_string ();
		public int ntriples_write (IOStream iostr);

	}

	[Compact]
	[CCode (cname = "raptor_type_q")]
	public class TypeQ
	{
		string mime_type;
		size_t mime_type_len;
		uchar q;
	}

	[Compact]
	[CCode (cname = "raptor_option_description", free_function = "raptor_free_option_description")]
	public class OptionDescription
	{
		public Domain domain;
		public Option option;
		public OptionValueType value_type;
		public string name;
		public size_t name_len;
		public string label;
		public Uri uri;
	}

	[Compact]
	[CCode (cname = "raptor_statement", free_function = "raptor_free_statement")]
	public class Statement {
		public World world;
		public int usage;
		public Term subject;
		public Term predicate;
		public Term object;
		public Term? graph;

		[CCode (cname = "raptor_new_statement")]
		public Statement (World world);
		[CCode (cname = "raptor_new_statement_from_nodes")]
		public Statement.from_nodes(World world, Term? subject, Term? predicate, Term? object, Term? graph);
		[CCode (cname = "raptor_statement_copy")]
		public Statement? copy(Statement statement);
		[CCode (cname = "raptor_statement_compare")]
		public int compare(Statement statement);
		[CCode (cname = "raptor_statement_equals")]
		public bool equals(Statement statement);
		[CCode (cname = "raptor_statement_init")]
		public void init(World world);
		[CCode (cname = "raptor_statement_clear")]
		public void clear();
		#if POSIX
		[CCode (cname = "raptor_statement_print")]
		public int print (Posix.FILE stream);
		[CCode (cname = "raptor_statement_print_as_ntriples")]
		public int print_as_ntriples (Posix.FILE stream);
		#else
		[CCode (cname = "raptor_statement_print")]
		public int print (GLib.FileStream stream);
		[CCode (cname = "raptor_statement_print_as_ntriples")]
		public int print_as_ntriples (GLib.FileStream stream);
		#endif
		public int ntriples_write (IOStream iostr, int write_graph_term);
	}

	[Compact]
	[CCode (cname = "raptor_log_message")]
	public class LogMessage {
		public int code;
		public Domain domain;
		public LogLevel level;
		public Locator locator;
		public string text;
	}

	[Compact]
	[CCode (cname = "raptor_locator")]
	public class Locator {
		[CCode (cname = "raptor_locator_uri")]
		public Uri? uri();
		[CCode (cname = "raptor_locator_file")]
		public string? file();
		[CCode (cname = "raptor_locator_byte")]
		public int byte();
		[CCode (cname = "raptor_locator_line")]
		public int line();
		[CCode (cname = "raptor_locator_column")]
		public int column();
		[CCode (instance_pos = 2)]
		public int format (char *buffer, size_t length);
		#if POSIX
		[CCode (cname = "raptor_locator_print")]
		public int print (Posix.FILE stream);
		#else
		[CCode (cname = "raptor_locator_print")]
		public int print (GLib.FileStream stream);
		#endif
	}


	[Compact]
	[CCode (cname = "raptor_uri", free_function = "raptor_free_uri")]
	public class Uri {
		[CCode (cname = "raptor_new_uri")]
		public Uri (World world, string uri_string);
		[CCode (cname = "raptor_new_uri_from_counted_string")]
		public Uri.from_counted_string (World world, string uri_string, size_t length);
		[CCode (cname = "raptor_new_uri_from_uri_local_name")]
		public Uri.from_uri_local_name (World world, Uri uri, string local_name);
		[CCode (cname = "raptor_new_uri_relative_to_base")]
		public Uri.relative_to_base (World world, Uri base_uri, string uri_string);
		[CCode (cname = "raptor_new_uri_from_id")]
		public Uri.from_id (World world, Uri base_uri, string id);
		[CCode (cname = "raptor_new_uri_for_rdf_concept")]
		public Uri.for_rdf_concept (World world, string name);
		[CCode (cname = "raptor_new_uri_for_xmlbase")]
		public Uri.for_xmlbase (Uri old_uri);
		[CCode (cname = "raptor_new_uri_for_retrieval")]
		public Uri.for_retrieval (Uri old_uri);
		[CCode (cname = "raptor_uri_filename_to_uri_string")]
		public static string filename_to_uri_string (string filename);
		[CCode (cname = "raptor_uri_as_string")]
		public unowned string as_string ();
		[CCode (cname = "raptor_uri_compare")]
		public int compare (Uri uri);
		[CCode (cname = "raptor_uri_equals")]
		public bool equals (Uri uri);
		[CCode (cname = "raptor_uri_copy")]
		public Uri copy ();
		[CCode (cname = "raptor_uri_get_world ")]
		public World get_world ();
		[CCode (cname = "raptor_uri_as_counted_string")]
		public string as_counted_string (out size_t len_p);
		[CCode (cname = "raptor_uri_to_relative_counted_uri_string")]
		public string to_relative_counted_uri_string (Uri reference_uri, size_t *length_p);
		[CCode (cname = "raptor_uri_to_relative_uri_string")]
		public string to_relative_uri_string (Uri reference_uri);
		[CCode (cname = "raptor_uri_to_counted_string")]
		public string to_counted_string (out size_t len_p);
		[CCode (cname = "raptor_uri_to_string")]
		public string to_string ();
		[CCode (cname = "raptor_uri_write")]
		public int write (IOStream iostr);
		#if POSIX
		[CCode (cname = "raptor_uri_print")]
		public int print (Posix.FILE stream);
		#else
		[CCode (cname = "raptor_uri_print")]
		public int print (GLib.FileStream stream);
		#endif
// static size_t resolve_uri_reference    (string base_uri, string reference_uri, uchar* buffer, size_t length);
// static char* uri_string_to_filename   (string uri_string);
// static char* uri_string_to_filename_fragment(string uri_string, unsigned char **fragment_p);
// static bool uri_string_is_file_uri   (string uri_string);
	}

	[CCode (cname = "raptor_avltree_bitflags", cprefix = "RAPTOR_AVLTREE_FLAG_")]
	public enum AVLTreeFlag {
		REPLACE_DUPLICATES
	}
	[CCode (cheader_filename = "raptor2.h", cprefix = "RAPTOR_DOMAIN_", has_type_id = false)]
	public enum Domain {
		NONE,
		IOSTREAM,
		NAMESPACE,
		PARSER,
		QNAME,
		SAX2,
		SERIALIZER,
		TERM,
		TURTLE_WRITER,
		URI,
		WORLD,
		WWW,
		XML_WRITER,
		LAST;
		public string? get_label();
	}
	[CCode (cheader_filename = "raptor2.h", cprefix = "RAPTOR_GRAPH_MARK_", has_type_id = false)]
	public enum GraphMarkFlag {
		START,
		DECLARED
	}
	[CCode (cheader_filename = "raptor2.h", cprefix = "RAPTOR_LOG_LEVEL_", has_type_id = false)]
	public enum LogLevel {
		NONE,
		TRACE,
		DEBUG,
		INFO,
		WARN,
		ERROR,
		FATAL,
		LAST;
		public string? get_label();
	}
	[CCode (cheader_filename = "raptor2.h", cprefix = "RAPTOR_OPTION_", cname = "raptor_option", has_type_id = false)]
	public enum Option {
		SCANNING,
		ALLOW_NON_NS_ATTRIBUTES,
		ALLOW_OTHER_PARSETYPES,
		ALLOW_BAGID,
		ALLOW_RDF_TYPE_RDF_LIST,
		NORMALIZE_LANGUAGE,
		NON_NFC_FATAL,
		WARN_OTHER_PARSETYPES,
		CHECK_RDF_ID,
		RELATIVE_URIS,
		WRITER_AUTO_INDENT,
		WRITER_AUTO_EMPTY,
		WRITER_INDENT_WIDTH,
		WRITER_XML_VERSION,
		WRITER_XML_DECLARATION,
		NO_NET,
		RESOURCE_BORDER,
		LITERAL_BORDER,
		BNODE_BORDER,
		RESOURCE_FILL,
		LITERAL_FILL,
		BNODE_FILL,
		HTML_TAG_SOUP,
		MICROFORMATS,
		HTML_LINK,
		WWW_TIMEOUT,
		WRITE_BASE_URI,
		WWW_HTTP_CACHE_CONTROL,
		WWW_HTTP_USER_AGENT,
		JSON_CALLBACK,
		JSON_EXTRA_DATA,
		RSS_TRIPLES,
		ATOM_ENTRY_URI,
		PREFIX_ELEMENTS,
		STRICT,
		WWW_CERT_FILENAME,
		WWW_CERT_TYPE,
		WWW_CERT_PASSPHRASE,
		LAST;
		public static uint get_count();
	}
	[CCode (cheader_filename = "raptor2.h", cprefix = "RAPTOR_OPTION_VALUE_TYPE_", has_type_id = false)]
	public enum OptionValueType {
		BOOL,
		INT,
		STRING,
		URI,
		LAST;
		[CCode (cname = "raptor_option_get_value_type_label")]
		public string? get_label();
	}

	[CCode (cname = "raptor_syntax_bitflags", cprefix = "RAPTOR_SYNTAX_")]
	public enum SyntaxFlag {
		NEED_BASE_URI
	}
	[CCode (cheader_filename = "raptor2.h", cprefix = "RAPTOR_TERM_TYPE_", has_type_id = false)]
	public enum TermType {
		UNKNOWN,
		URI,
		LITERAL,
		BLANK
	}
	[CCode (cheader_filename = "raptor2.h", cprefix = "RAPTOR_WORLD_FLAG_", has_type_id = false)]
	public enum WorldFlag {
		LIBXML_GENERIC_ERROR_SAVE,
		LIBXML_STRUCTURED_ERROR_SAVE,
		URI_INTERNING,
		WWW_SKIP_INIT_FINISH
	}

	[CCode (cname = "raptor_statement_handler", has_target = false)]
	public delegate void StatementHandler (void* user_data, Statement statement);

	[CCode (cname = "raptor_namespace_handler", has_target = false)]
	public delegate void NamespaceHandler (void* user_data, Namespace name);

	[CCode (cname = "raptor_graph_mark_handler", has_target = false)]
	public delegate void GraphMarkHandler (void* user_data, Uri? graph, int flags);

	[CCode (cname = "raptor_log_handler", has_target = false)]
	public delegate void LogHandler (void* user_data, LogMessage message);

	[CCode (cname = "raptor_generate_bnodeid_handler", has_target = false)]
	public delegate uchar* GenerateBnodeIdHandler (void* user_data, uchar* message);

	[CCode (cname = "raptor_data_compare_handler", has_target = false, type = "int (*)(const void* , const void* )")]
	public delegate int DataCompareHandler (void* data1, void* data2);

	[CCode (cname = "raptor_data_free_handler", has_target = false)]
	public delegate void DataFreeHandler (void* data);

	[CCode (cname = "raptor_data_malloc_handler", has_target = false)]
	public delegate void* DataMallocHandler (size_t size);

	#if POSIX
	[CCode (cname = "raptor_data_print_handler", has_target = false)]
	public delegate int DataPrintHandler (void* object, Posix.FILE stream);
	[CCode (cname = "raptor_data_context_print_handler", has_target = false)]
	public delegate int DataContextPrintHandler (void* context, void* object, Posix.FILE stream);
	#else
	[CCode (cname = "raptor_data_print_handler", has_target = false)]
	public delegate int DataPrintHandler (void* object, GLib.FileStream stream);
	[CCode (cname = "raptor_data_context_print_handler", has_target = false)]
	public delegate int DataContextPrintHandler (void* context, void* object, GLib.FileStream stream);
	#endif

	[CCode (cname = "raptor_data_context_free_handler", has_target = false)]
	public delegate void DataContextFreeHandler (void* context, void* data);

	// char *              raptor_vsnprintf                    (const char *message, va_list arguments);

}
