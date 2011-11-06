<?xml version="1.0"?>
<api version="1.0">
  <namespace name="Memory">
    <function name="alloc_memory" symbol="raptor_alloc_memory">
      <return-type type="void*"/>
      <parameters>
	<parameter name="size" type="size_t"/>
      </parameters>
    </function>
    <function name="calloc_memory" symbol="raptor_calloc_memory">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="nmemb" type="size_t"/>
    	<parameter name="size" type="size_t"/>
      </parameters>
    </function>
    <function name="free_memory" symbol="raptor_free_memory">
      <return-type type="void"/>
      <parameters>
    	<parameter name="ptr" type="void*"/>
      </parameters>
    </function>
  </namespace>
  <namespace name="Raptor">
    <function name="avltree_add" symbol="raptor_avltree_add">
      <return-type type="int"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="p_data" type="void*"/>
      </parameters>
    </function>
    <function name="avltree_delete" symbol="raptor_avltree_delete">
      <return-type type="int"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="p_data" type="void*"/>
      </parameters>
    </function>
    <function name="avltree_iterator_get" symbol="raptor_avltree_iterator_get">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="iterator" type="raptor_avltree_iterator*"/>
      </parameters>
    </function>
    <function name="avltree_iterator_is_end" symbol="raptor_avltree_iterator_is_end">
      <return-type type="int"/>
      <parameters>
    	<parameter name="iterator" type="raptor_avltree_iterator*"/>
      </parameters>
    </function>
    <function name="avltree_iterator_next" symbol="raptor_avltree_iterator_next">
      <return-type type="int"/>
      <parameters>
    	<parameter name="iterator" type="raptor_avltree_iterator*"/>
      </parameters>
    </function>
    <function name="avltree_print" symbol="raptor_avltree_print">
      <return-type type="int"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="stream" type="FILE*"/>
      </parameters>
    </function>
    <function name="avltree_remove" symbol="raptor_avltree_remove">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="p_data" type="void*"/>
      </parameters>
    </function>
    <function name="avltree_search" symbol="raptor_avltree_search">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="p_data" type="void*"/>
      </parameters>
    </function>
    <function name="avltree_set_print_handler" symbol="raptor_avltree_set_print_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="print_handler" type="raptor_data_print_handler"/>
      </parameters>
    </function>
    <function name="avltree_size" symbol="raptor_avltree_size">
      <return-type type="int"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
      </parameters>
    </function>
    <function name="avltree_visit" symbol="raptor_avltree_visit">
      <return-type type="int"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="visit_handler" type="raptor_avltree_visit_handler"/>
    	<parameter name="user_data" type="void*"/>
      </parameters>
    </function>
    <function name="bnodeid_ntriples_write" symbol="raptor_bnodeid_ntriples_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="bnodeid" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="domain_get_label" symbol="raptor_domain_get_label">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="domain" type="raptor_domain"/>
      </parameters>
    </function>
    <function name="free_avltree" symbol="raptor_free_avltree">
      <return-type type="void"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
      </parameters>
    </function>
    <function name="free_avltree_iterator" symbol="raptor_free_avltree_iterator">
      <return-type type="void"/>
      <parameters>
    	<parameter name="iterator" type="raptor_avltree_iterator*"/>
      </parameters>
    </function>
    <function name="free_iostream" symbol="raptor_free_iostream">
      <return-type type="void"/>
      <parameters>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="free_namespace" symbol="raptor_free_namespace">
      <return-type type="void"/>
      <parameters>
    	<parameter name="ns" type="raptor_namespace*"/>
      </parameters>
    </function>
    <function name="free_namespaces" symbol="raptor_free_namespaces">
      <return-type type="void"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
      </parameters>
    </function>
    <function name="free_option_description" symbol="raptor_free_option_description">
      <return-type type="void"/>
      <parameters>
    	<parameter name="option_description" type="raptor_option_description*"/>
      </parameters>
    </function>
    <function name="free_parser" symbol="raptor_free_parser">
      <return-type type="void"/>
      <parameters>
    	<parameter name="parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="free_qname" symbol="raptor_free_qname">
      <return-type type="void"/>
      <parameters>
    	<parameter name="name" type="raptor_qname*"/>
      </parameters>
    </function>
    <function name="free_sax2" symbol="raptor_free_sax2">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
      </parameters>
    </function>
    <function name="free_sequence" symbol="raptor_free_sequence">
      <return-type type="void"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
      </parameters>
    </function>
    <function name="free_serializer" symbol="raptor_free_serializer">
      <return-type type="void"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
      </parameters>
    </function>
    <function name="free_statement" symbol="raptor_free_statement">
      <return-type type="void"/>
      <parameters>
    	<parameter name="statement" type="raptor_statement*"/>
      </parameters>
    </function>
    <function name="free_stringbuffer" symbol="raptor_free_stringbuffer">
      <return-type type="void"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
      </parameters>
    </function>
    <function name="free_term" symbol="raptor_free_term">
      <return-type type="void"/>
      <parameters>
    	<parameter name="term" type="raptor_term*"/>
      </parameters>
    </function>
    <function name="free_uri" symbol="raptor_free_uri">
      <return-type type="void"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="free_world" symbol="raptor_free_world">
      <return-type type="void"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
      </parameters>
    </function>
    <function name="free_www" symbol="raptor_free_www">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
      </parameters>
    </function>
    <function name="free_xml_element" symbol="raptor_free_xml_element">
      <return-type type="void"/>
      <parameters>
    	<parameter name="element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="free_xml_writer" symbol="raptor_free_xml_writer">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
      </parameters>
    </function>
    <function name="iostream_counted_string_write" symbol="raptor_iostream_counted_string_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="void*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_decimal_write" symbol="raptor_iostream_decimal_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="integer" type="int"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_hexadecimal_write" symbol="raptor_iostream_hexadecimal_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="integer" type="unsigned"/>
    	<parameter name="width" type="int"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_read_bytes" symbol="raptor_iostream_read_bytes">
      <return-type type="int"/>
      <parameters>
    	<parameter name="ptr" type="void*"/>
    	<parameter name="size" type="size_t"/>
    	<parameter name="nmemb" type="size_t"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_read_eof" symbol="raptor_iostream_read_eof">
      <return-type type="int"/>
      <parameters>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_string_write" symbol="raptor_iostream_string_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="void*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_tell" symbol="raptor_iostream_tell">
      <return-type type="unsigned"/>
      <parameters>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_write_byte" symbol="raptor_iostream_write_byte">
      <return-type type="int"/>
      <parameters>
    	<parameter name="byte" type="int"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_write_bytes" symbol="raptor_iostream_write_bytes">
      <return-type type="int"/>
      <parameters>
    	<parameter name="ptr" type="void*"/>
    	<parameter name="size" type="size_t"/>
    	<parameter name="nmemb" type="size_t"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="iostream_write_end" symbol="raptor_iostream_write_end">
      <return-type type="int"/>
      <parameters>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="locator_byte" symbol="raptor_locator_byte">
      <return-type type="int"/>
      <parameters>
    	<parameter name="locator" type="raptor_locator*"/>
      </parameters>
    </function>
    <function name="locator_column" symbol="raptor_locator_column">
      <return-type type="int"/>
      <parameters>
    	<parameter name="locator" type="raptor_locator*"/>
      </parameters>
    </function>
    <function name="locator_file" symbol="raptor_locator_file">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="locator" type="raptor_locator*"/>
      </parameters>
    </function>
    <function name="locator_format" symbol="raptor_locator_format">
      <return-type type="int"/>
      <parameters>
    	<parameter name="buffer" type="char*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="locator" type="raptor_locator*"/>
      </parameters>
    </function>
    <function name="locator_line" symbol="raptor_locator_line">
      <return-type type="int"/>
      <parameters>
    	<parameter name="locator" type="raptor_locator*"/>
      </parameters>
    </function>
    <function name="locator_print" symbol="raptor_locator_print">
      <return-type type="int"/>
      <parameters>
    	<parameter name="locator" type="raptor_locator*"/>
    	<parameter name="stream" type="FILE*"/>
      </parameters>
    </function>
    <function name="locator_uri" symbol="raptor_locator_uri">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="locator" type="raptor_locator*"/>
      </parameters>
    </function>
    <function name="log_level_get_label" symbol="raptor_log_level_get_label">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="level" type="raptor_log_level"/>
      </parameters>
    </function>
    <function name="namespace_format_as_xml" symbol="raptor_namespace_format_as_xml">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="ns" type="raptor_namespace*"/>
    	<parameter name="length_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="namespace_get_counted_prefix" symbol="raptor_namespace_get_counted_prefix">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="ns" type="raptor_namespace*"/>
    	<parameter name="length_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="namespace_get_prefix" symbol="raptor_namespace_get_prefix">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="ns" type="raptor_namespace*"/>
      </parameters>
    </function>
    <function name="namespace_get_uri" symbol="raptor_namespace_get_uri">
      <return-type type="raptor_uri*"/>
      <parameters>
    	<parameter name="ns" type="raptor_namespace*"/>
      </parameters>
    </function>
    <function name="namespace_stack_start_namespace" symbol="raptor_namespace_stack_start_namespace">
      <return-type type="int"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="ns" type="raptor_namespace*"/>
    	<parameter name="new_depth" type="int"/>
      </parameters>
    </function>
    <function name="namespace_write" symbol="raptor_namespace_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="ns" type="raptor_namespace*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="namespaces_clear" symbol="raptor_namespaces_clear">
      <return-type type="void"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
      </parameters>
    </function>
    <function name="namespaces_end_for_depth" symbol="raptor_namespaces_end_for_depth">
      <return-type type="void"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="depth" type="int"/>
      </parameters>
    </function>
    <function name="namespaces_find_namespace" symbol="raptor_namespaces_find_namespace">
      <return-type type="raptor_namespace*"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="prefix" type="unsigned*"/>
    	<parameter name="prefix_length" type="int"/>
      </parameters>
    </function>
    <function name="namespaces_find_namespace_by_uri" symbol="raptor_namespaces_find_namespace_by_uri">
      <return-type type="raptor_namespace*"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="ns_uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="namespaces_get_default_namespace" symbol="raptor_namespaces_get_default_namespace">
      <return-type type="raptor_namespace*"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
      </parameters>
    </function>
    <function name="namespaces_init" symbol="raptor_namespaces_init">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="defaults" type="int"/>
      </parameters>
    </function>
    <function name="namespaces_namespace_in_scope" symbol="raptor_namespaces_namespace_in_scope">
      <return-type type="int"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="nspace" type="raptor_namespace*"/>
      </parameters>
    </function>
    <function name="namespaces_start_namespace" symbol="raptor_namespaces_start_namespace">
      <return-type type="void"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="nspace" type="raptor_namespace*"/>
      </parameters>
    </function>
    <function name="namespaces_start_namespace_full" symbol="raptor_namespaces_start_namespace_full">
      <return-type type="int"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="prefix" type="unsigned*"/>
    	<parameter name="ns_uri_string" type="unsigned*"/>
    	<parameter name="depth" type="int"/>
      </parameters>
    </function>
    <!-- <method name="new_iostream_to_sink" symbol="raptor_new_iostream_to_sink"> -->
    <!--   <return-type type="raptor_iostream*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_iostream_to_string" symbol="raptor_new_iostream_to_string"> -->
    <!--   <return-type type="raptor_iostream*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="string_p" type="void**"/> -->
    <!-- 	<parameter name="length_p" type="size_t*"/> -->
    <!-- 	<parameter name="malloc_handler" type="raptor_data_malloc_handler"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_namespace" symbol="raptor_new_namespace"> -->
    <!--   <return-type type="raptor_namespace*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="nstack" type="raptor_namespace_stack*"/> -->
    <!-- 	<parameter name="prefix" type="unsigned*"/> -->
    <!-- 	<parameter name="ns_uri_string" type="unsigned*"/> -->
    <!-- 	<parameter name="depth" type="int"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_namespace_from_uri" symbol="raptor_new_namespace_from_uri"> -->
    <!--   <return-type type="raptor_namespace*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="nstack" type="raptor_namespace_stack*"/> -->
    <!-- 	<parameter name="prefix" type="unsigned*"/> -->
    <!-- 	<parameter name="ns_uri" type="raptor_uri*"/> -->
    <!-- 	<parameter name="depth" type="int"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_namespaces" symbol="raptor_new_namespaces"> -->
    <!--   <return-type type="raptor_namespace_stack*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="defaults" type="int"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_parser" symbol="raptor_new_parser"> -->
    <!--   <return-type type="raptor_parser*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="name" type="char*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_parser_for_content" symbol="raptor_new_parser_for_content"> -->
    <!--   <return-type type="raptor_parser*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="uri" type="raptor_uri*"/> -->
    <!-- 	<parameter name="mime_type" type="char*"/> -->
    <!-- 	<parameter name="buffer" type="unsigned*"/> -->
    <!-- 	<parameter name="len" type="size_t"/> -->
    <!-- 	<parameter name="identifier" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_qname" symbol="raptor_new_qname"> -->
    <!--   <return-type type="raptor_qname*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="nstack" type="raptor_namespace_stack*"/> -->
    <!-- 	<parameter name="name" type="unsigned*"/> -->
    <!-- 	<parameter name="value" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_qname_from_namespace_local_name" symbol="raptor_new_qname_from_namespace_local_name"> -->
    <!--   <return-type type="raptor_qname*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="ns" type="raptor_namespace*"/> -->
    <!-- 	<parameter name="local_name" type="unsigned*"/> -->
    <!-- 	<parameter name="value" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_qname_from_namespace_uri" symbol="raptor_new_qname_from_namespace_uri"> -->
    <!--   <return-type type="raptor_qname*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="nstack" type="raptor_namespace_stack*"/> -->
    <!-- 	<parameter name="uri" type="raptor_uri*"/> -->
    <!-- 	<parameter name="xml_version" type="int"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_sax2" symbol="raptor_new_sax2"> -->
    <!--   <return-type type="raptor_sax2*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="locator" type="raptor_locator*"/> -->
    <!-- 	<parameter name="user_data" type="void*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_sequence" symbol="raptor_new_sequence"> -->
    <!--   <return-type type="raptor_sequence*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="free_handler" type="raptor_data_free_handler"/> -->
    <!-- 	<parameter name="print_handler" type="raptor_data_print_handler"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_sequence_with_context" symbol="raptor_new_sequence_with_context"> -->
    <!--   <return-type type="raptor_sequence*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="free_handler" type="raptor_data_context_free_handler"/> -->
    <!-- 	<parameter name="print_handler" type="raptor_data_context_print_handler"/> -->
    <!-- 	<parameter name="handler_context" type="void*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_serializer" symbol="raptor_new_serializer"> -->
    <!--   <return-type type="raptor_serializer*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="name" type="char*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_statement" symbol="raptor_new_statement"> -->
    <!--   <return-type type="raptor_statement*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_statement_from_nodes" symbol="raptor_new_statement_from_nodes"> -->
    <!--   <return-type type="raptor_statement*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="subject" type="raptor_term*"/> -->
    <!-- 	<parameter name="predicate" type="raptor_term*"/> -->
    <!-- 	<parameter name="object" type="raptor_term*"/> -->
    <!-- 	<parameter name="graph" type="raptor_term*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_stringbuffer" symbol="raptor_new_stringbuffer"> -->
    <!--   <return-type type="raptor_stringbuffer*"/> -->
    <!-- </method> -->
    <!-- <method name="new_term_from_blank" symbol="raptor_new_term_from_blank"> -->
    <!--   <return-type type="raptor_term*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="blank" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_term_from_counted_blank" symbol="raptor_new_term_from_counted_blank"> -->
    <!--   <return-type type="raptor_term*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="blank" type="unsigned*"/> -->
    <!-- 	<parameter name="length" type="size_t"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_term_from_counted_literal" symbol="raptor_new_term_from_counted_literal"> -->
    <!--   <return-type type="raptor_term*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="literal" type="unsigned*"/> -->
    <!-- 	<parameter name="literal_len" type="size_t"/> -->
    <!-- 	<parameter name="datatype" type="raptor_uri*"/> -->
    <!-- 	<parameter name="language" type="unsigned*"/> -->
    <!-- 	<parameter name="language_len" type="unsigned"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_term_from_counted_uri_string" symbol="raptor_new_term_from_counted_uri_string"> -->
    <!--   <return-type type="raptor_term*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="uri_string" type="unsigned*"/> -->
    <!-- 	<parameter name="length" type="size_t"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_term_from_literal" symbol="raptor_new_term_from_literal"> -->
    <!--   <return-type type="raptor_term*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="literal" type="unsigned*"/> -->
    <!-- 	<parameter name="datatype" type="raptor_uri*"/> -->
    <!-- 	<parameter name="language" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_term_from_uri" symbol="raptor_new_term_from_uri"> -->
    <!--   <return-type type="raptor_term*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="uri" type="raptor_uri*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_term_from_uri_string" symbol="raptor_new_term_from_uri_string"> -->
    <!--   <return-type type="raptor_term*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="uri_string" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri" symbol="raptor_new_uri"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="uri_string" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri_for_rdf_concept" symbol="raptor_new_uri_for_rdf_concept"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="name" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri_for_retrieval" symbol="raptor_new_uri_for_retrieval"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="old_uri" type="raptor_uri*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri_for_xmlbase" symbol="raptor_new_uri_for_xmlbase"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="old_uri" type="raptor_uri*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri_from_counted_string" symbol="raptor_new_uri_from_counted_string"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="uri_string" type="unsigned*"/> -->
    <!-- 	<parameter name="length" type="size_t"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri_from_id" symbol="raptor_new_uri_from_id"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="base_uri" type="raptor_uri*"/> -->
    <!-- 	<parameter name="id" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri_from_uri_local_name" symbol="raptor_new_uri_from_uri_local_name"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="uri" type="raptor_uri*"/> -->
    <!-- 	<parameter name="local_name" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_uri_relative_to_base" symbol="raptor_new_uri_relative_to_base"> -->
    <!--   <return-type type="raptor_uri*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="base_uri" type="raptor_uri*"/> -->
    <!-- 	<parameter name="uri_string" type="unsigned*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_world_internal" symbol="raptor_new_world_internal"> -->
    <!--   <return-type type="raptor_world*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="version_decimal" type="unsigned"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_www" symbol="raptor_new_www"> -->
    <!--   <return-type type="raptor_www*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_www_with_connection" symbol="raptor_new_www_with_connection"> -->
    <!--   <return-type type="raptor_www*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="connection" type="void*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_xml_element" symbol="raptor_new_xml_element"> -->
    <!--   <return-type type="raptor_xml_element*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="name" type="raptor_qname*"/> -->
    <!-- 	<parameter name="xml_language" type="unsigned*"/> -->
    <!-- 	<parameter name="xml_base" type="raptor_uri*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_xml_element_from_namespace_local_name" symbol="raptor_new_xml_element_from_namespace_local_name"> -->
    <!--   <return-type type="raptor_xml_element*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="ns" type="raptor_namespace*"/> -->
    <!-- 	<parameter name="name" type="unsigned*"/> -->
    <!-- 	<parameter name="xml_language" type="unsigned*"/> -->
    <!-- 	<parameter name="xml_base" type="raptor_uri*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <!-- <method name="new_xml_writer" symbol="raptor_new_xml_writer"> -->
    <!--   <return-type type="raptor_xml_writer*"/> -->
    <!--   <parameters> -->
    <!-- 	<parameter name="world" type="raptor_world*"/> -->
    <!-- 	<parameter name="nstack" type="raptor_namespace_stack*"/> -->
    <!-- 	<parameter name="iostr" type="raptor_iostream*"/> -->
    <!--   </parameters> -->
    <!-- </method> -->
    <function name="option_get_count" symbol="raptor_option_get_count">
      <return-type type="unsigned"/>
    </function>
    <function name="option_get_value_type_label" symbol="raptor_option_get_value_type_label">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="type" type="raptor_option_value_type"/>
      </parameters>
    </function>
    <function name="parser_get_accept_header" symbol="raptor_parser_get_accept_header">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="parser_get_description" symbol="raptor_parser_get_description">
      <return-type type="raptor_syntax_description*"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="parser_get_graph" symbol="raptor_parser_get_graph">
      <return-type type="raptor_uri*"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="parser_get_locator" symbol="raptor_parser_get_locator">
      <return-type type="raptor_locator*"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="parser_get_name" symbol="raptor_parser_get_name">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="parser_get_option" symbol="raptor_parser_get_option">
      <return-type type="int"/>
      <parameters>
    	<parameter name="parser" type="raptor_parser*"/>
    	<parameter name="option" type="raptor_option"/>
    	<parameter name="string_p" type="char**"/>
    	<parameter name="integer_p" type="int*"/>
      </parameters>
    </function>
    <function name="parser_get_world" symbol="raptor_parser_get_world">
      <return-type type="raptor_world*"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="parser_parse_abort" symbol="raptor_parser_parse_abort">
      <return-type type="void"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
      </parameters>
    </function>
    <function name="parser_parse_chunk" symbol="raptor_parser_parse_chunk">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
    	<parameter name="buffer" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="is_end" type="int"/>
      </parameters>
    </function>
    <function name="parser_parse_file" symbol="raptor_parser_parse_file">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="base_uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="parser_parse_file_stream" symbol="raptor_parser_parse_file_stream">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
    	<parameter name="stream" type="FILE*"/>
    	<parameter name="filename" type="char*"/>
    	<parameter name="base_uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="parser_parse_iostream" symbol="raptor_parser_parse_iostream">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
    	<parameter name="base_uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="parser_parse_start" symbol="raptor_parser_parse_start">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="parser_parse_uri" symbol="raptor_parser_parse_uri">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="base_uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="parser_parse_uri_with_connection" symbol="raptor_parser_parse_uri_with_connection">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_parser" type="raptor_parser*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="base_uri" type="raptor_uri*"/>
    	<parameter name="connection" type="void*"/>
      </parameters>
    </function>
    <function name="parser_set_graph_mark_handler" symbol="raptor_parser_set_graph_mark_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="parser" type="raptor_parser*"/>
    	<parameter name="user_data" type="void*"/>
    	<parameter name="handler" type="raptor_graph_mark_handler"/>
      </parameters>
    </function>
    <function name="parser_set_namespace_handler" symbol="raptor_parser_set_namespace_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="parser" type="raptor_parser*"/>
    	<parameter name="user_data" type="void*"/>
    	<parameter name="handler" type="raptor_namespace_handler"/>
      </parameters>
    </function>
    <function name="parser_set_option" symbol="raptor_parser_set_option">
      <return-type type="int"/>
      <parameters>
    	<parameter name="parser" type="raptor_parser*"/>
    	<parameter name="option" type="raptor_option"/>
    	<parameter name="string" type="char*"/>
    	<parameter name="integer" type="int"/>
      </parameters>
    </function>
    <function name="parser_set_statement_handler" symbol="raptor_parser_set_statement_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="parser" type="raptor_parser*"/>
    	<parameter name="user_data" type="void*"/>
    	<parameter name="handler" type="raptor_statement_handler"/>
      </parameters>
    </function>
    <function name="parser_set_uri_filter" symbol="raptor_parser_set_uri_filter">
      <return-type type="void"/>
      <parameters>
    	<parameter name="parser" type="raptor_parser*"/>
    	<parameter name="filter" type="raptor_uri_filter_func"/>
    	<parameter name="user_data" type="void*"/>
      </parameters>
    </function>
    <function name="qname_copy" symbol="raptor_qname_copy">
      <return-type type="raptor_qname*"/>
      <parameters>
    	<parameter name="qname" type="raptor_qname*"/>
      </parameters>
    </function>
    <function name="qname_equal" symbol="raptor_qname_equal">
      <return-type type="int"/>
      <parameters>
    	<parameter name="name1" type="raptor_qname*"/>
    	<parameter name="name2" type="raptor_qname*"/>
      </parameters>
    </function>
    <function name="qname_get_counted_value" symbol="raptor_qname_get_counted_value">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="name" type="raptor_qname*"/>
    	<parameter name="length_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="qname_get_local_name" symbol="raptor_qname_get_local_name">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="name" type="raptor_qname*"/>
      </parameters>
    </function>
    <function name="qname_get_namespace" symbol="raptor_qname_get_namespace">
      <return-type type="raptor_namespace*"/>
      <parameters>
    	<parameter name="name" type="raptor_qname*"/>
      </parameters>
    </function>
    <function name="qname_get_value" symbol="raptor_qname_get_value">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="name" type="raptor_qname*"/>
      </parameters>
    </function>
    <function name="qname_string_to_uri" symbol="raptor_qname_string_to_uri">
      <return-type type="raptor_uri*"/>
      <parameters>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="name" type="unsigned*"/>
    	<parameter name="name_len" type="size_t"/>
      </parameters>
    </function>
    <function name="qname_to_counted_name" symbol="raptor_qname_to_counted_name">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="qname" type="raptor_qname*"/>
    	<parameter name="length_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="qname_write" symbol="raptor_qname_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="qname" type="raptor_qname*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="sax2_inscope_base_uri" symbol="raptor_sax2_inscope_base_uri">
      <return-type type="raptor_uri*"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
      </parameters>
    </function>
    <function name="sax2_inscope_xml_language" symbol="raptor_sax2_inscope_xml_language">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
      </parameters>
    </function>
    <function name="sax2_parse_chunk" symbol="raptor_sax2_parse_chunk">
      <return-type type="int"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="buffer" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="is_end" type="int"/>
      </parameters>
    </function>
    <function name="sax2_parse_start" symbol="raptor_sax2_parse_start">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="base_uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="sax2_set_cdata_handler" symbol="raptor_sax2_set_cdata_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_sax2_cdata_handler"/>
      </parameters>
    </function>
    <function name="sax2_set_characters_handler" symbol="raptor_sax2_set_characters_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_sax2_characters_handler"/>
      </parameters>
    </function>
    <function name="sax2_set_comment_handler" symbol="raptor_sax2_set_comment_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_sax2_comment_handler"/>
      </parameters>
    </function>
    <function name="sax2_set_end_element_handler" symbol="raptor_sax2_set_end_element_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_sax2_end_element_handler"/>
      </parameters>
    </function>
    <function name="sax2_set_external_entity_ref_handler" symbol="raptor_sax2_set_external_entity_ref_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_sax2_external_entity_ref_handler"/>
      </parameters>
    </function>
    <function name="sax2_set_namespace_handler" symbol="raptor_sax2_set_namespace_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_namespace_handler"/>
      </parameters>
    </function>
    <function name="sax2_set_start_element_handler" symbol="raptor_sax2_set_start_element_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_sax2_start_element_handler"/>
      </parameters>
    </function>
    <function name="sax2_set_unparsed_entity_decl_handler" symbol="raptor_sax2_set_unparsed_entity_decl_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="sax2" type="raptor_sax2*"/>
    	<parameter name="handler" type="raptor_sax2_unparsed_entity_decl_handler"/>
      </parameters>
    </function>
    <function name="sequence_delete_at" symbol="raptor_sequence_delete_at">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
    	<parameter name="idx" type="int"/>
      </parameters>
    </function>
    <function name="sequence_get_at" symbol="raptor_sequence_get_at">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
    	<parameter name="idx" type="int"/>
      </parameters>
    </function>
    <function name="sequence_join" symbol="raptor_sequence_join">
      <return-type type="int"/>
      <parameters>
    	<parameter name="dest" type="raptor_sequence*"/>
    	<parameter name="src" type="raptor_sequence*"/>
      </parameters>
    </function>
    <function name="sequence_pop" symbol="raptor_sequence_pop">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
      </parameters>
    </function>
    <function name="sequence_print" symbol="raptor_sequence_print">
      <return-type type="int"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
    	<parameter name="fh" type="FILE*"/>
      </parameters>
    </function>
    <function name="sequence_push" symbol="raptor_sequence_push">
      <return-type type="int"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
    	<parameter name="data" type="void*"/>
      </parameters>
    </function>
    <function name="sequence_set_at" symbol="raptor_sequence_set_at">
      <return-type type="int"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
    	<parameter name="idx" type="int"/>
    	<parameter name="data" type="void*"/>
      </parameters>
    </function>
    <function name="sequence_shift" symbol="raptor_sequence_shift">
      <return-type type="int"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
    	<parameter name="data" type="void*"/>
      </parameters>
    </function>
    <function name="sequence_size" symbol="raptor_sequence_size">
      <return-type type="int"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
      </parameters>
    </function>
    <function name="sequence_sort" symbol="raptor_sequence_sort">
      <return-type type="void"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
    	<parameter name="compare" type="raptor_data_compare_handler"/>
      </parameters>
    </function>
    <function name="sequence_unshift" symbol="raptor_sequence_unshift">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="seq" type="raptor_sequence*"/>
      </parameters>
    </function>
    <function name="serializer_flush" symbol="raptor_serializer_flush">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
      </parameters>
    </function>
    <function name="serializer_get_description" symbol="raptor_serializer_get_description">
      <return-type type="raptor_syntax_description*"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
      </parameters>
    </function>
    <function name="serializer_get_iostream" symbol="raptor_serializer_get_iostream">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="serializer" type="raptor_serializer*"/>
      </parameters>
    </function>
    <function name="serializer_get_locator" symbol="raptor_serializer_get_locator">
      <return-type type="raptor_locator*"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
      </parameters>
    </function>
    <function name="serializer_get_option" symbol="raptor_serializer_get_option">
      <return-type type="int"/>
      <parameters>
    	<parameter name="serializer" type="raptor_serializer*"/>
    	<parameter name="option" type="raptor_option"/>
    	<parameter name="string_p" type="char**"/>
    	<parameter name="integer_p" type="int*"/>
      </parameters>
    </function>
    <function name="serializer_get_world" symbol="raptor_serializer_get_world">
      <return-type type="raptor_world*"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
      </parameters>
    </function>
    <function name="serializer_serialize_end" symbol="raptor_serializer_serialize_end">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
      </parameters>
    </function>
    <function name="serializer_serialize_statement" symbol="raptor_serializer_serialize_statement">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
    	<parameter name="statement" type="raptor_statement*"/>
      </parameters>
    </function>
    <function name="serializer_set_namespace" symbol="raptor_serializer_set_namespace">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="prefix" type="unsigned*"/>
      </parameters>
    </function>
    <function name="serializer_set_namespace_from_namespace" symbol="raptor_serializer_set_namespace_from_namespace">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
    	<parameter name="nspace" type="raptor_namespace*"/>
      </parameters>
    </function>
    <function name="serializer_set_option" symbol="raptor_serializer_set_option">
      <return-type type="int"/>
      <parameters>
    	<parameter name="serializer" type="raptor_serializer*"/>
    	<parameter name="option" type="raptor_option"/>
    	<parameter name="string" type="char*"/>
    	<parameter name="integer" type="int"/>
      </parameters>
    </function>
    <function name="serializer_start_to_file_handle" symbol="raptor_serializer_start_to_file_handle">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="fh" type="FILE*"/>
      </parameters>
    </function>
    <function name="serializer_start_to_filename" symbol="raptor_serializer_start_to_filename">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
    	<parameter name="filename" type="char*"/>
      </parameters>
    </function>
    <function name="serializer_start_to_iostream" symbol="raptor_serializer_start_to_iostream">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="iostream" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="serializer_start_to_string" symbol="raptor_serializer_start_to_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="rdf_serializer" type="raptor_serializer*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="string_p" type="void**"/>
    	<parameter name="length_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="statement_clear" symbol="raptor_statement_clear">
      <return-type type="void"/>
      <parameters>
    	<parameter name="statement" type="raptor_statement*"/>
      </parameters>
    </function>
    <function name="statement_compare" symbol="raptor_statement_compare">
      <return-type type="int"/>
      <parameters>
    	<parameter name="s1" type="raptor_statement*"/>
    	<parameter name="s2" type="raptor_statement*"/>
      </parameters>
    </function>
    <function name="statement_copy" symbol="raptor_statement_copy">
      <return-type type="raptor_statement*"/>
      <parameters>
    	<parameter name="statement" type="raptor_statement*"/>
      </parameters>
    </function>
    <function name="statement_equals" symbol="raptor_statement_equals">
      <return-type type="int"/>
      <parameters>
    	<parameter name="s1" type="raptor_statement*"/>
    	<parameter name="s2" type="raptor_statement*"/>
      </parameters>
    </function>
    <function name="statement_init" symbol="raptor_statement_init">
      <return-type type="void"/>
      <parameters>
    	<parameter name="statement" type="raptor_statement*"/>
    	<parameter name="world" type="raptor_world*"/>
      </parameters>
    </function>
    <function name="statement_ntriples_write" symbol="raptor_statement_ntriples_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="statement" type="raptor_statement*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
    	<parameter name="write_graph_term" type="int"/>
      </parameters>
    </function>
    <function name="statement_print" symbol="raptor_statement_print">
      <return-type type="int"/>
      <parameters>
    	<parameter name="statement" type="raptor_statement*"/>
    	<parameter name="stream" type="FILE*"/>
      </parameters>
    </function>
    <function name="statement_print_as_ntriples" symbol="raptor_statement_print_as_ntriples">
      <return-type type="int"/>
      <parameters>
    	<parameter name="statement" type="raptor_statement*"/>
    	<parameter name="stream" type="FILE*"/>
      </parameters>
    </function>
    <function name="string_ntriples_write" symbol="raptor_string_ntriples_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="delim" type="char"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="string_python_write" symbol="raptor_string_python_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="delim" type="char"/>
    	<parameter name="flags" type="int"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="stringbuffer_append_counted_string" symbol="raptor_stringbuffer_append_counted_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="do_copy" type="int"/>
      </parameters>
    </function>
    <function name="stringbuffer_append_decimal" symbol="raptor_stringbuffer_append_decimal">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="integer" type="int"/>
      </parameters>
    </function>
    <function name="stringbuffer_append_hexadecimal" symbol="raptor_stringbuffer_append_hexadecimal">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="hex" type="int"/>
      </parameters>
    </function>
    <function name="stringbuffer_append_string" symbol="raptor_stringbuffer_append_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="do_copy" type="int"/>
      </parameters>
    </function>
    <function name="stringbuffer_append_stringbuffer" symbol="raptor_stringbuffer_append_stringbuffer">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="append" type="raptor_stringbuffer*"/>
      </parameters>
    </function>
    <function name="stringbuffer_append_uri_escaped_counted_string" symbol="raptor_stringbuffer_append_uri_escaped_counted_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="sb" type="raptor_stringbuffer*"/>
    	<parameter name="string" type="char*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="space_is_plus" type="int"/>
      </parameters>
    </function>
    <function name="stringbuffer_as_string" symbol="raptor_stringbuffer_as_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
      </parameters>
    </function>
    <function name="stringbuffer_copy_to_string" symbol="raptor_stringbuffer_copy_to_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
      </parameters>
    </function>
    <function name="stringbuffer_length" symbol="raptor_stringbuffer_length">
      <return-type type="size_t"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
      </parameters>
    </function>
    <function name="stringbuffer_prepend_counted_string" symbol="raptor_stringbuffer_prepend_counted_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="do_copy" type="int"/>
      </parameters>
    </function>
    <function name="stringbuffer_prepend_string" symbol="raptor_stringbuffer_prepend_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="stringbuffer" type="raptor_stringbuffer*"/>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="do_copy" type="int"/>
      </parameters>
    </function>
    <function name="stringbuffer_write" symbol="raptor_stringbuffer_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="sb" type="raptor_stringbuffer*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="syntax_description_validate" symbol="raptor_syntax_description_validate">
      <return-type type="int"/>
      <parameters>
    	<parameter name="desc" type="raptor_syntax_description*"/>
      </parameters>
    </function>
    <function name="term_compare" symbol="raptor_term_compare">
      <return-type type="int"/>
      <parameters>
    	<parameter name="t1" type="raptor_term*"/>
    	<parameter name="t2" type="raptor_term*"/>
      </parameters>
    </function>
    <function name="term_copy" symbol="raptor_term_copy">
      <return-type type="raptor_term*"/>
      <parameters>
    	<parameter name="term" type="raptor_term*"/>
      </parameters>
    </function>
    <function name="term_equals" symbol="raptor_term_equals">
      <return-type type="int"/>
      <parameters>
    	<parameter name="t1" type="raptor_term*"/>
    	<parameter name="t2" type="raptor_term*"/>
      </parameters>
    </function>
    <function name="term_ntriples_write" symbol="raptor_term_ntriples_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="term" type="raptor_term*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="term_to_counted_string" symbol="raptor_term_to_counted_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="term" type="raptor_term*"/>
    	<parameter name="len_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="term_to_string" symbol="raptor_term_to_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="term" type="raptor_term*"/>
      </parameters>
    </function>
    <function name="unicode_check_utf8_string" symbol="raptor_unicode_check_utf8_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
      </parameters>
    </function>
    <function name="unicode_is_xml10_namechar" symbol="raptor_unicode_is_xml10_namechar">
      <return-type type="int"/>
      <parameters>
    	<parameter name="c" type="raptor_unichar"/>
      </parameters>
    </function>
    <function name="unicode_is_xml10_namestartchar" symbol="raptor_unicode_is_xml10_namestartchar">
      <return-type type="int"/>
      <parameters>
    	<parameter name="c" type="raptor_unichar"/>
      </parameters>
    </function>
    <function name="unicode_is_xml11_namechar" symbol="raptor_unicode_is_xml11_namechar">
      <return-type type="int"/>
      <parameters>
    	<parameter name="c" type="raptor_unichar"/>
      </parameters>
    </function>
    <function name="unicode_is_xml11_namestartchar" symbol="raptor_unicode_is_xml11_namestartchar">
      <return-type type="int"/>
      <parameters>
    	<parameter name="c" type="raptor_unichar"/>
      </parameters>
    </function>
    <function name="unicode_utf8_string_get_char" symbol="raptor_unicode_utf8_string_get_char">
      <return-type type="int"/>
      <parameters>
    	<parameter name="input" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="output" type="raptor_unichar*"/>
      </parameters>
    </function>
    <function name="unicode_utf8_string_put_char" symbol="raptor_unicode_utf8_string_put_char">
      <return-type type="int"/>
      <parameters>
    	<parameter name="c" type="raptor_unichar"/>
    	<parameter name="output" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
      </parameters>
    </function>
    <function name="uri_as_counted_string" symbol="raptor_uri_as_counted_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="len_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="uri_as_string" symbol="raptor_uri_as_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="uri_compare" symbol="raptor_uri_compare">
      <return-type type="int"/>
      <parameters>
    	<parameter name="uri1" type="raptor_uri*"/>
    	<parameter name="uri2" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="uri_copy" symbol="raptor_uri_copy">
      <return-type type="raptor_uri*"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="uri_equals" symbol="raptor_uri_equals">
      <return-type type="int"/>
      <parameters>
    	<parameter name="uri1" type="raptor_uri*"/>
    	<parameter name="uri2" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="uri_filename_to_uri_string" symbol="raptor_uri_filename_to_uri_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="filename" type="char*"/>
      </parameters>
    </function>
    <function name="uri_get_world" symbol="raptor_uri_get_world">
      <return-type type="raptor_world*"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="uri_print" symbol="raptor_uri_print">
      <return-type type="int"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="stream" type="FILE*"/>
      </parameters>
    </function>
    <function name="uri_resolve_uri_reference" symbol="raptor_uri_resolve_uri_reference">
      <return-type type="size_t"/>
      <parameters>
    	<parameter name="base_uri" type="unsigned*"/>
    	<parameter name="reference_uri" type="unsigned*"/>
    	<parameter name="buffer" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
      </parameters>
    </function>
    <function name="uri_to_counted_string" symbol="raptor_uri_to_counted_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="len_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="uri_to_relative_counted_uri_string" symbol="raptor_uri_to_relative_counted_uri_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="base_uri" type="raptor_uri*"/>
    	<parameter name="reference_uri" type="raptor_uri*"/>
    	<parameter name="length_p" type="size_t*"/>
      </parameters>
    </function>
    <function name="uri_to_relative_uri_string" symbol="raptor_uri_to_relative_uri_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="base_uri" type="raptor_uri*"/>
    	<parameter name="reference_uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="uri_to_string" symbol="raptor_uri_to_string">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="uri_uri_string_is_file_uri" symbol="raptor_uri_uri_string_is_file_uri">
      <return-type type="int"/>
      <parameters>
    	<parameter name="uri_string" type="unsigned*"/>
      </parameters>
    </function>
    <function name="uri_uri_string_to_filename" symbol="raptor_uri_uri_string_to_filename">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="uri_string" type="unsigned*"/>
      </parameters>
    </function>
    <function name="uri_uri_string_to_filename_fragment" symbol="raptor_uri_uri_string_to_filename_fragment">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="uri_string" type="unsigned*"/>
    	<parameter name="fragment_p" type="unsigned**"/>
      </parameters>
    </function>
    <function name="uri_write" symbol="raptor_uri_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="vsnprintf" symbol="raptor_vsnprintf">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="message" type="char*"/>
    	<parameter name="arguments" type="va_list"/>
      </parameters>
    </function>
    <function name="world_generate_bnodeid" symbol="raptor_world_generate_bnodeid">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
      </parameters>
    </function>
    <function name="world_get_option_description" symbol="raptor_world_get_option_description">
      <return-type type="raptor_option_description*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="domain" type="raptor_domain"/>
    	<parameter name="option" type="raptor_option"/>
      </parameters>
    </function>
    <function name="world_get_option_from_uri" symbol="raptor_world_get_option_from_uri">
      <return-type type="raptor_option"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="world_get_parser_description" symbol="raptor_world_get_parser_description">
      <return-type type="raptor_syntax_description*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="counter" type="unsigned"/>
      </parameters>
    </function>
    <function name="world_get_serializer_description" symbol="raptor_world_get_serializer_description">
      <return-type type="raptor_syntax_description*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="counter" type="unsigned"/>
      </parameters>
    </function>
    <function name="world_guess_parser_name" symbol="raptor_world_guess_parser_name">
      <return-type type="char*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="mime_type" type="char*"/>
    	<parameter name="buffer" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="identifier" type="unsigned*"/>
      </parameters>
    </function>
    <function name="world_is_parser_name" symbol="raptor_world_is_parser_name">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="name" type="char*"/>
      </parameters>
    </function>
    <function name="world_is_serializer_name" symbol="raptor_world_is_serializer_name">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="name" type="char*"/>
      </parameters>
    </function>
    <function name="world_open" symbol="raptor_world_open">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
      </parameters>
    </function>
    <function name="world_set_flag" symbol="raptor_world_set_flag">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="flag" type="raptor_world_flag"/>
    	<parameter name="value" type="int"/>
      </parameters>
    </function>
    <function name="world_set_generate_bnodeid_handler" symbol="raptor_world_set_generate_bnodeid_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="user_data" type="void*"/>
    	<parameter name="handler" type="raptor_generate_bnodeid_handler"/>
      </parameters>
    </function>
    <function name="world_set_generate_bnodeid_parameters" symbol="raptor_world_set_generate_bnodeid_parameters">
      <return-type type="void"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="prefix" type="char*"/>
    	<parameter name="base" type="int"/>
      </parameters>
    </function>
    <function name="world_set_libxslt_security_preferences" symbol="raptor_world_set_libxslt_security_preferences">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="security_preferences" type="void*"/>
      </parameters>
    </function>
    <function name="world_set_log_handler" symbol="raptor_world_set_log_handler">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="user_data" type="void*"/>
    	<parameter name="handler" type="raptor_log_handler"/>
      </parameters>
    </function>
    <function name="www_abort" symbol="raptor_www_abort">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="reason" type="char*"/>
      </parameters>
    </function>
    <function name="www_fetch" symbol="raptor_www_fetch">
      <return-type type="int"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </function>
    <function name="www_fetch_to_string" symbol="raptor_www_fetch_to_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="uri" type="raptor_uri*"/>
    	<parameter name="string_p" type="void**"/>
    	<parameter name="length_p" type="size_t*"/>
    	<parameter name="malloc_handler" type="raptor_data_malloc_handler"/>
      </parameters>
    </function>
    <function name="www_get_connection" symbol="raptor_www_get_connection">
      <return-type type="void*"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
      </parameters>
    </function>
    <function name="www_get_final_uri" symbol="raptor_www_get_final_uri">
      <return-type type="raptor_uri*"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
      </parameters>
    </function>
    <function name="www_set_connection_timeout" symbol="raptor_www_set_connection_timeout">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="timeout" type="int"/>
      </parameters>
    </function>
    <function name="www_set_content_type_handler" symbol="raptor_www_set_content_type_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="handler" type="raptor_www_content_type_handler"/>
    	<parameter name="user_data" type="void*"/>
      </parameters>
    </function>
    <function name="www_set_final_uri_handler" symbol="raptor_www_set_final_uri_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="handler" type="raptor_www_final_uri_handler"/>
    	<parameter name="user_data" type="void*"/>
      </parameters>
    </function>
    <function name="www_set_http_accept" symbol="raptor_www_set_http_accept">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="value" type="char*"/>
      </parameters>
    </function>
    <function name="www_set_http_cache_control" symbol="raptor_www_set_http_cache_control">
      <return-type type="int"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="cache_control" type="char*"/>
      </parameters>
    </function>
    <function name="www_set_proxy" symbol="raptor_www_set_proxy">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="proxy" type="char*"/>
      </parameters>
    </function>
    <function name="www_set_ssl_cert_options" symbol="raptor_www_set_ssl_cert_options">
      <return-type type="int"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="cert_filename" type="char*"/>
    	<parameter name="cert_type" type="char*"/>
    	<parameter name="cert_passphrase" type="char*"/>
      </parameters>
    </function>
    <function name="www_set_uri_filter" symbol="raptor_www_set_uri_filter">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="filter" type="raptor_uri_filter_func"/>
    	<parameter name="user_data" type="void*"/>
      </parameters>
    </function>
    <function name="www_set_user_agent" symbol="raptor_www_set_user_agent">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="user_agent" type="char*"/>
      </parameters>
    </function>
    <function name="www_set_write_bytes_handler" symbol="raptor_www_set_write_bytes_handler">
      <return-type type="void"/>
      <parameters>
    	<parameter name="www" type="raptor_www*"/>
    	<parameter name="handler" type="raptor_www_write_bytes_handler"/>
    	<parameter name="user_data" type="void*"/>
      </parameters>
    </function>
    <function name="xml_element_declare_namespace" symbol="raptor_xml_element_declare_namespace">
      <return-type type="int"/>
      <parameters>
    	<parameter name="xml_element" type="raptor_xml_element*"/>
    	<parameter name="nspace" type="raptor_namespace*"/>
      </parameters>
    </function>
    <function name="xml_element_get_attributes" symbol="raptor_xml_element_get_attributes">
      <return-type type="raptor_qname**"/>
      <parameters>
    	<parameter name="xml_element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="xml_element_get_attributes_count" symbol="raptor_xml_element_get_attributes_count">
      <return-type type="int"/>
      <parameters>
    	<parameter name="xml_element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="xml_element_get_language" symbol="raptor_xml_element_get_language">
      <return-type type="unsigned*"/>
      <parameters>
    	<parameter name="xml_element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="xml_element_get_name" symbol="raptor_xml_element_get_name">
      <return-type type="raptor_qname*"/>
      <parameters>
    	<parameter name="xml_element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="xml_element_is_empty" symbol="raptor_xml_element_is_empty">
      <return-type type="int"/>
      <parameters>
    	<parameter name="xml_element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="xml_element_set_attributes" symbol="raptor_xml_element_set_attributes">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_element" type="raptor_xml_element*"/>
    	<parameter name="attributes" type="raptor_qname**"/>
    	<parameter name="count" type="int"/>
      </parameters>
    </function>
    <function name="xml_element_write" symbol="raptor_xml_element_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="element" type="raptor_xml_element*"/>
    	<parameter name="nstack" type="raptor_namespace_stack*"/>
    	<parameter name="is_empty" type="int"/>
    	<parameter name="is_end" type="int"/>
    	<parameter name="depth" type="int"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="xml_escape_string" symbol="raptor_xml_escape_string">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="buffer" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="quote" type="char"/>
      </parameters>
    </function>
    <function name="xml_escape_string_any" symbol="raptor_xml_escape_string_any">
      <return-type type="int"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="buffer" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="quote" type="char"/>
    	<parameter name="xml_version" type="int"/>
      </parameters>
    </function>
    <function name="xml_escape_string_any_write" symbol="raptor_xml_escape_string_any_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="quote" type="char"/>
    	<parameter name="xml_version" type="int"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="xml_escape_string_write" symbol="raptor_xml_escape_string_write">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="len" type="size_t"/>
    	<parameter name="quote" type="char"/>
    	<parameter name="iostr" type="raptor_iostream*"/>
      </parameters>
    </function>
    <function name="xml_name_check" symbol="raptor_xml_name_check">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="length" type="size_t"/>
    	<parameter name="xml_version" type="int"/>
      </parameters>
    </function>
    <function name="xml_namespace_string_parse" symbol="raptor_xml_namespace_string_parse">
      <return-type type="int"/>
      <parameters>
    	<parameter name="string" type="unsigned*"/>
    	<parameter name="prefix" type="unsigned**"/>
    	<parameter name="uri_string" type="unsigned**"/>
      </parameters>
    </function>
    <function name="xml_writer_cdata" symbol="raptor_xml_writer_cdata">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="s" type="unsigned*"/>
      </parameters>
    </function>
    <function name="xml_writer_cdata_counted" symbol="raptor_xml_writer_cdata_counted">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="s" type="unsigned*"/>
    	<parameter name="len" type="unsigned"/>
      </parameters>
    </function>
    <function name="xml_writer_comment" symbol="raptor_xml_writer_comment">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="s" type="unsigned*"/>
      </parameters>
    </function>
    <function name="xml_writer_comment_counted" symbol="raptor_xml_writer_comment_counted">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="s" type="unsigned*"/>
    	<parameter name="len" type="unsigned"/>
      </parameters>
    </function>
    <function name="xml_writer_empty_element" symbol="raptor_xml_writer_empty_element">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="xml_writer_end_element" symbol="raptor_xml_writer_end_element">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <function name="xml_writer_flush" symbol="raptor_xml_writer_flush">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
      </parameters>
    </function>
    <function name="xml_writer_get_depth" symbol="raptor_xml_writer_get_depth">
      <return-type type="int"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
      </parameters>
    </function>
    <function name="xml_writer_get_option" symbol="raptor_xml_writer_get_option">
      <return-type type="int"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="option" type="raptor_option"/>
    	<parameter name="string_p" type="char**"/>
    	<parameter name="integer_p" type="int*"/>
      </parameters>
    </function>
    <function name="xml_writer_newline" symbol="raptor_xml_writer_newline">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
      </parameters>
    </function>
    <function name="xml_writer_raw" symbol="raptor_xml_writer_raw">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="s" type="unsigned*"/>
      </parameters>
    </function>
    <function name="xml_writer_raw_counted" symbol="raptor_xml_writer_raw_counted">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="s" type="unsigned*"/>
    	<parameter name="len" type="unsigned"/>
      </parameters>
    </function>
    <function name="xml_writer_set_option" symbol="raptor_xml_writer_set_option">
      <return-type type="int"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="option" type="raptor_option"/>
    	<parameter name="string" type="char*"/>
    	<parameter name="integer" type="int"/>
      </parameters>
    </function>
    <function name="xml_writer_start_element" symbol="raptor_xml_writer_start_element">
      <return-type type="void"/>
      <parameters>
    	<parameter name="xml_writer" type="raptor_xml_writer*"/>
    	<parameter name="element" type="raptor_xml_element*"/>
      </parameters>
    </function>
    <callback name="raptor_avltree_visit_handler">
      <return-type type="int"/>
      <parameters>
	<parameter name="depth" type="int"/>
	<parameter name="data" type="void*"/>
	<parameter name="user_data" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_data_compare_handler">
      <return-type type="int"/>
      <parameters>
	<parameter name="data1" type="void*"/>
	<parameter name="data2" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_data_context_free_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="context" type="void*"/>
	<parameter name="object" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_data_context_print_handler">
      <return-type type="int"/>
      <parameters>
	<parameter name="context" type="void*"/>
	<parameter name="object" type="void*"/>
	<parameter name="fh" type="FILE*"/>
      </parameters>
    </callback>
    <callback name="raptor_data_free_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="data" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_data_malloc_handler">
      <return-type type="void*"/>
      <parameters>
	<parameter name="size" type="size_t"/>
      </parameters>
    </callback>
    <callback name="raptor_data_print_handler">
      <return-type type="int"/>
      <parameters>
	<parameter name="object" type="void*"/>
	<parameter name="fh" type="FILE*"/>
      </parameters>
    </callback>
    <callback name="raptor_generate_bnodeid_handler">
      <return-type type="unsigned*"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="user_bnodeid" type="unsigned*"/>
      </parameters>
    </callback>
    <callback name="raptor_graph_mark_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="graph" type="raptor_uri*"/>
	<parameter name="flags" type="int"/>
      </parameters>
    </callback>
    <callback name="raptor_iostream_finish_func">
      <return-type type="void"/>
      <parameters>
	<parameter name="context" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_iostream_init_func">
      <return-type type="int"/>
      <parameters>
	<parameter name="context" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_iostream_read_bytes_func">
      <return-type type="int"/>
      <parameters>
	<parameter name="context" type="void*"/>
	<parameter name="ptr" type="void*"/>
	<parameter name="size" type="size_t"/>
	<parameter name="nmemb" type="size_t"/>
      </parameters>
    </callback>
    <callback name="raptor_iostream_read_eof_func">
      <return-type type="int"/>
      <parameters>
	<parameter name="context" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_iostream_write_byte_func">
      <return-type type="int"/>
      <parameters>
	<parameter name="context" type="void*"/>
	<parameter name="byte" type="int"/>
      </parameters>
    </callback>
    <callback name="raptor_iostream_write_bytes_func">
      <return-type type="int"/>
      <parameters>
	<parameter name="context" type="void*"/>
	<parameter name="ptr" type="void*"/>
	<parameter name="size" type="size_t"/>
	<parameter name="nmemb" type="size_t"/>
      </parameters>
    </callback>
    <callback name="raptor_iostream_write_end_func">
      <return-type type="int"/>
      <parameters>
	<parameter name="context" type="void*"/>
      </parameters>
    </callback>
    <callback name="raptor_log_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="message" type="raptor_log_message*"/>
      </parameters>
    </callback>
    <callback name="raptor_namespace_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="nspace" type="raptor_namespace*"/>
      </parameters>
    </callback>
    <callback name="raptor_sax2_cdata_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="xml_element" type="raptor_xml_element*"/>
	<parameter name="s" type="unsigned*"/>
	<parameter name="len" type="int"/>
      </parameters>
    </callback>
    <callback name="raptor_sax2_characters_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="xml_element" type="raptor_xml_element*"/>
	<parameter name="s" type="unsigned*"/>
	<parameter name="len" type="int"/>
      </parameters>
    </callback>
    <callback name="raptor_sax2_comment_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="xml_element" type="raptor_xml_element*"/>
	<parameter name="s" type="unsigned*"/>
      </parameters>
    </callback>
    <callback name="raptor_sax2_end_element_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="xml_element" type="raptor_xml_element*"/>
      </parameters>
    </callback>
    <callback name="raptor_sax2_external_entity_ref_handler">
      <return-type type="int"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="context" type="unsigned*"/>
	<parameter name="base" type="unsigned*"/>
	<parameter name="systemId" type="unsigned*"/>
	<parameter name="publicId" type="unsigned*"/>
      </parameters>
    </callback>
    <callback name="raptor_sax2_start_element_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="xml_element" type="raptor_xml_element*"/>
      </parameters>
    </callback>
    <callback name="raptor_sax2_unparsed_entity_decl_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="entityName" type="unsigned*"/>
	<parameter name="base" type="unsigned*"/>
	<parameter name="systemId" type="unsigned*"/>
	<parameter name="publicId" type="unsigned*"/>
	<parameter name="notationName" type="unsigned*"/>
      </parameters>
    </callback>
    <callback name="raptor_statement_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="statement" type="raptor_statement*"/>
      </parameters>
    </callback>
    <callback name="raptor_uri_filter_func">
      <return-type type="int"/>
      <parameters>
	<parameter name="user_data" type="void*"/>
	<parameter name="uri" type="raptor_uri*"/>
      </parameters>
    </callback>
    <callback name="raptor_www_content_type_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="www" type="raptor_www*"/>
	<parameter name="userdata" type="void*"/>
	<parameter name="content_type" type="char*"/>
      </parameters>
    </callback>
    <callback name="raptor_www_final_uri_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="www" type="raptor_www*"/>
	<parameter name="userdata" type="void*"/>
	<parameter name="final_uri" type="raptor_uri*"/>
      </parameters>
    </callback>
    <callback name="raptor_www_write_bytes_handler">
      <return-type type="void"/>
      <parameters>
	<parameter name="www" type="raptor_www*"/>
	<parameter name="userdata" type="void*"/>
	<parameter name="ptr" type="void*"/>
	<parameter name="size" type="size_t"/>
	<parameter name="nmemb" type="size_t"/>
      </parameters>
    </callback>
    <struct name="raptor_avltree">
      <method name="new_avltree" symbol="raptor_new_avltree">
	<return-type type="raptor_avltree*"/>
	<parameters>
	  <parameter name="compare_handler" type="raptor_data_compare_handler"/>
	  <parameter name="free_handler" type="raptor_data_free_handler"/>
	  <parameter name="flags" type="unsigned"/>
	</parameters>
      </method>
    </struct>
    <struct name="raptor_avltree_iterator">
    <method name="new_avltree_iterator" symbol="raptor_new_avltree_iterator">
      <return-type type="raptor_avltree_iterator*"/>
      <parameters>
    	<parameter name="tree" type="raptor_avltree*"/>
    	<parameter name="range" type="void*"/>
    	<parameter name="range_free_handler" type="raptor_data_free_handler"/>
    	<parameter name="direction" type="int"/>
      </parameters>
    </method>
    </struct>
    <struct name="raptor_iostream">

    <method name="new_iostream_from_file_handle" symbol="raptor_new_iostream_from_file_handle">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="handle" type="FILE*"/>
      </parameters>
    </method>
    <method name="new_iostream_from_filename" symbol="raptor_new_iostream_from_filename">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="filename" type="char*"/>
      </parameters>
    </method>
    <method name="new_iostream_from_handler" symbol="raptor_new_iostream_from_handler">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="user_data" type="void*"/>
    	<parameter name="handler" type="raptor_iostream_handler*"/>
      </parameters>
    </method>
    <method name="new_iostream_from_sink" symbol="raptor_new_iostream_from_sink">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
      </parameters>
    </method>
    <method name="new_iostream_from_string" symbol="raptor_new_iostream_from_string">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="string" type="void*"/>
    	<parameter name="length" type="size_t"/>
      </parameters>
    </method>
    <method name="new_iostream_to_file_handle" symbol="raptor_new_iostream_to_file_handle">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="handle" type="FILE*"/>
      </parameters>
    </method>
    <method name="new_iostream_to_filename" symbol="raptor_new_iostream_to_filename">
      <return-type type="raptor_iostream*"/>
      <parameters>
    	<parameter name="world" type="raptor_world*"/>
    	<parameter name="filename" type="char*"/>
      </parameters>
    </method>
    </struct>
    <struct name="raptor_iostream_handler">
      <field name="version" type="int"/>
      <field name="init" type="raptor_iostream_init_func"/>
      <field name="finish" type="raptor_iostream_finish_func"/>
      <field name="write_byte" type="raptor_iostream_write_byte_func"/>
      <field name="write_bytes" type="raptor_iostream_write_bytes_func"/>
      <field name="write_end" type="raptor_iostream_write_end_func"/>
      <field name="read_bytes" type="raptor_iostream_read_bytes_func"/>
      <field name="read_eof" type="raptor_iostream_read_eof_func"/>
    </struct>
    <struct name="raptor_locator">
      <field name="uri" type="raptor_uri*"/>
      <field name="file" type="char*"/>
      <field name="line" type="int"/>
      <field name="column" type="int"/>
      <field name="byte" type="int"/>
    </struct>
    <struct name="raptor_log_message">
      <field name="code" type="int"/>
      <field name="domain" type="raptor_domain"/>
      <field name="level" type="raptor_log_level"/>
      <field name="locator" type="raptor_locator*"/>
      <field name="text" type="char*"/>
    </struct>
    <struct name="raptor_namespace">
    </struct>
    <struct name="raptor_namespace_stack">
    </struct>
    <struct name="raptor_option_description">
      <field name="domain" type="raptor_domain"/>
      <field name="option" type="raptor_option"/>
      <field name="value_type" type="raptor_option_value_type"/>
      <field name="name" type="char*"/>
      <field name="name_len" type="size_t"/>
      <field name="label" type="char*"/>
      <field name="uri" type="raptor_uri*"/>
    </struct>
    <struct name="raptor_parser">
    </struct>
    <struct name="raptor_qname">
    </struct>
    <struct name="raptor_sax2">
    </struct>
    <struct name="raptor_sequence">
    </struct>
    <struct name="raptor_serializer">
    </struct>
    <struct name="raptor_statement">
      <field name="world" type="raptor_world*"/>
      <field name="usage" type="int"/>
      <field name="subject" type="raptor_term*"/>
      <field name="predicate" type="raptor_term*"/>
      <field name="object" type="raptor_term*"/>
      <field name="graph" type="raptor_term*"/>
    </struct>
    <struct name="raptor_stringbuffer">
    </struct>
    <struct name="raptor_syntax_description">
      <field name="names" type="char**"/>
      <field name="names_count" type="unsigned"/>
      <field name="label" type="char*"/>
      <field name="mime_types" type="raptor_type_q*"/>
      <field name="mime_types_count" type="unsigned"/>
      <field name="uri_strings" type="char**"/>
      <field name="uri_strings_count" type="unsigned"/>
      <field name="flags" type="unsigned"/>
    </struct>
    <struct name="raptor_term">
      <field name="world" type="raptor_world*"/>
      <field name="usage" type="int"/>
      <field name="type" type="raptor_term_type"/>
      <field name="value" type="raptor_term_value"/>
    </struct>
    <struct name="raptor_term_blank_value">
      <field name="string" type="unsigned*"/>
      <field name="string_len" type="unsigned"/>
    </struct>
    <struct name="raptor_term_literal_value">
      <field name="string" type="unsigned*"/>
      <field name="string_len" type="unsigned"/>
      <field name="datatype" type="raptor_uri*"/>
      <field name="language" type="unsigned*"/>
      <field name="language_len" type="unsigned"/>
    </struct>
    <struct name="raptor_type_q">
      <field name="mime_type" type="char*"/>
      <field name="mime_type_len" type="size_t"/>
      <field name="q" type="unsigned"/>
    </struct>
    <struct name="raptor_unichar">
    </struct>
    <struct name="raptor_uri">
    </struct>
    <struct name="raptor_world">
    </struct>
    <struct name="raptor_www">
    </struct>
    <struct name="raptor_xml_element">
    </struct>
    <struct name="raptor_xml_writer">
    </struct>
    <enum name="raptor_avltree_bitflags">
      <member name="RAPTOR_AVLTREE_FLAG_REPLACE_DUPLICATES" value="1"/>
    </enum>
    <enum name="raptor_domain">
      <member name="RAPTOR_DOMAIN_NONE" value="0"/>
      <member name="RAPTOR_DOMAIN_IOSTREAM" value="1"/>
      <member name="RAPTOR_DOMAIN_NAMESPACE" value="2"/>
      <member name="RAPTOR_DOMAIN_PARSER" value="3"/>
      <member name="RAPTOR_DOMAIN_QNAME" value="4"/>
      <member name="RAPTOR_DOMAIN_SAX2" value="5"/>
      <member name="RAPTOR_DOMAIN_SERIALIZER" value="6"/>
      <member name="RAPTOR_DOMAIN_TERM" value="7"/>
      <member name="RAPTOR_DOMAIN_TURTLE_WRITER" value="8"/>
      <member name="RAPTOR_DOMAIN_URI" value="9"/>
      <member name="RAPTOR_DOMAIN_WORLD" value="10"/>
      <member name="RAPTOR_DOMAIN_WWW" value="11"/>
      <member name="RAPTOR_DOMAIN_XML_WRITER" value="12"/>
      <member name="RAPTOR_DOMAIN_LAST" value="12"/>
    </enum>
    <enum name="raptor_graph_mark_flags">
      <member name="RAPTOR_GRAPH_MARK_START" value="1"/>
      <member name="RAPTOR_GRAPH_MARK_DECLARED" value="2"/>
    </enum>
    <enum name="raptor_log_level">
      <member name="RAPTOR_LOG_LEVEL_NONE" value="0"/>
      <member name="RAPTOR_LOG_LEVEL_TRACE" value="1"/>
      <member name="RAPTOR_LOG_LEVEL_DEBUG" value="2"/>
      <member name="RAPTOR_LOG_LEVEL_INFO" value="3"/>
      <member name="RAPTOR_LOG_LEVEL_WARN" value="4"/>
      <member name="RAPTOR_LOG_LEVEL_ERROR" value="5"/>
      <member name="RAPTOR_LOG_LEVEL_FATAL" value="6"/>
      <member name="RAPTOR_LOG_LEVEL_LAST" value="6"/>
    </enum>
    <enum name="raptor_option">
      <member name="RAPTOR_OPTION_SCANNING" value="0"/>
      <member name="RAPTOR_OPTION_ALLOW_NON_NS_ATTRIBUTES" value="1"/>
      <member name="RAPTOR_OPTION_ALLOW_OTHER_PARSETYPES" value="2"/>
      <member name="RAPTOR_OPTION_ALLOW_BAGID" value="3"/>
      <member name="RAPTOR_OPTION_ALLOW_RDF_TYPE_RDF_LIST" value="4"/>
      <member name="RAPTOR_OPTION_NORMALIZE_LANGUAGE" value="5"/>
      <member name="RAPTOR_OPTION_NON_NFC_FATAL" value="6"/>
      <member name="RAPTOR_OPTION_WARN_OTHER_PARSETYPES" value="7"/>
      <member name="RAPTOR_OPTION_CHECK_RDF_ID" value="8"/>
      <member name="RAPTOR_OPTION_RELATIVE_URIS" value="9"/>
      <member name="RAPTOR_OPTION_WRITER_AUTO_INDENT" value="10"/>
      <member name="RAPTOR_OPTION_WRITER_AUTO_EMPTY" value="11"/>
      <member name="RAPTOR_OPTION_WRITER_INDENT_WIDTH" value="12"/>
      <member name="RAPTOR_OPTION_WRITER_XML_VERSION" value="13"/>
      <member name="RAPTOR_OPTION_WRITER_XML_DECLARATION" value="14"/>
      <member name="RAPTOR_OPTION_NO_NET" value="15"/>
      <member name="RAPTOR_OPTION_RESOURCE_BORDER" value="16"/>
      <member name="RAPTOR_OPTION_LITERAL_BORDER" value="17"/>
      <member name="RAPTOR_OPTION_BNODE_BORDER" value="18"/>
      <member name="RAPTOR_OPTION_RESOURCE_FILL" value="19"/>
      <member name="RAPTOR_OPTION_LITERAL_FILL" value="20"/>
      <member name="RAPTOR_OPTION_BNODE_FILL" value="21"/>
      <member name="RAPTOR_OPTION_HTML_TAG_SOUP" value="22"/>
      <member name="RAPTOR_OPTION_MICROFORMATS" value="23"/>
      <member name="RAPTOR_OPTION_HTML_LINK" value="24"/>
      <member name="RAPTOR_OPTION_WWW_TIMEOUT" value="25"/>
      <member name="RAPTOR_OPTION_WRITE_BASE_URI" value="26"/>
      <member name="RAPTOR_OPTION_WWW_HTTP_CACHE_CONTROL" value="27"/>
      <member name="RAPTOR_OPTION_WWW_HTTP_USER_AGENT" value="28"/>
      <member name="RAPTOR_OPTION_JSON_CALLBACK" value="29"/>
      <member name="RAPTOR_OPTION_JSON_EXTRA_DATA" value="30"/>
      <member name="RAPTOR_OPTION_RSS_TRIPLES" value="31"/>
      <member name="RAPTOR_OPTION_ATOM_ENTRY_URI" value="32"/>
      <member name="RAPTOR_OPTION_PREFIX_ELEMENTS" value="33"/>
      <member name="RAPTOR_OPTION_STRICT" value="34"/>
      <member name="RAPTOR_OPTION_WWW_CERT_FILENAME" value="35"/>
      <member name="RAPTOR_OPTION_WWW_CERT_TYPE" value="36"/>
      <member name="RAPTOR_OPTION_WWW_CERT_PASSPHRASE" value="37"/>
      <member name="RAPTOR_OPTION_LAST" value="37"/>
    </enum>
    <enum name="raptor_option_value_type">
      <member name="RAPTOR_OPTION_VALUE_TYPE_BOOL" value="0"/>
      <member name="RAPTOR_OPTION_VALUE_TYPE_INT" value="1"/>
      <member name="RAPTOR_OPTION_VALUE_TYPE_STRING" value="2"/>
      <member name="RAPTOR_OPTION_VALUE_TYPE_URI" value="3"/>
      <member name="RAPTOR_OPTION_VALUE_TYPE_LAST" value="3"/>
    </enum>
    <enum name="raptor_syntax_bitflags">
      <member name="RAPTOR_SYNTAX_NEED_BASE_URI" value="1"/>
    </enum>
    <enum name="raptor_term_type">
      <member name="RAPTOR_TERM_TYPE_UNKNOWN" value="0"/>
      <member name="RAPTOR_TERM_TYPE_URI" value="1"/>
      <member name="RAPTOR_TERM_TYPE_LITERAL" value="2"/>
      <member name="RAPTOR_TERM_TYPE_BLANK" value="4"/>
    </enum>
    <enum name="raptor_world_flag">
      <member name="RAPTOR_WORLD_FLAG_LIBXML_GENERIC_ERROR_SAVE" value="1"/>
      <member name="RAPTOR_WORLD_FLAG_LIBXML_STRUCTURED_ERROR_SAVE" value="2"/>
      <member name="RAPTOR_WORLD_FLAG_URI_INTERNING" value="3"/>
      <member name="RAPTOR_WORLD_FLAG_WWW_SKIP_INIT_FINISH" value="4"/>
    </enum>
    <constant name="RAPTOR_V2_AVAILABLE" type="int" value="1"/>
    <constant name="RAPTOR_VERSION" type="int" value="20004"/>
    <constant name="RAPTOR_VERSION_MAJOR" type="int" value="2"/>
    <constant name="RAPTOR_VERSION_MINOR" type="int" value="0"/>
    <constant name="RAPTOR_VERSION_RELEASE" type="int" value="4"/>
    <constant name="RAPTOR_VERSION_STRING" type="char*" value="2.0.4"/>
    <union name="raptor_term_value">
      <field name="uri" type="raptor_uri*"/>
      <field name="literal" type="raptor_term_literal_value"/>
      <field name="blank" type="raptor_term_blank_value"/>
    </union>
  </namespace>
</api>
