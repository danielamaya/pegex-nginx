health_check_timeout:
  - syntax: health_check_timeout timeout;
  - context: stream, server

least_time:
  - syntax: least_time connect | first_byte | last_byte;
  - context: upstream

aio:
  - syntax: aio on | off | threads [ = pool ];
  - context: http, server, location

alias:
  - syntax: alias path;
  - context: location

chunked_transfer_encoding:
  - syntax: chunked_transfer_encoding on | off;
  - context: http, server, location

client_body_buffer_size:
  - syntax: client_body_buffer_size size;
  - context: http, server, location

client_body_in_file_only:
  - syntax: client_body_in_file_only on | clean | off;
  - context: http, server, location

client_body_in_single_buffer:
  - syntax: client_body_in_single_buffer on | off;
  - context: http, server, location

client_body_timeout:
  - syntax: client_body_timeout time;
  - context: http, server, location

client_header_buffer_size:
  - syntax: client_header_buffer_size size;
  - context: http, server

client_header_timeout:
  - syntax: client_header_timeout time;
  - context: http, server

client_max_body_size:
  - syntax: client_max_body_size size;
  - context: http, server, location

connection_pool_size:
  - syntax: connection_pool_size size;
  - context: http, server

default_type:
  - syntax: default_type mime-type;
  - context: http, server, location

directio:
  - syntax: directio size | off;
  - context: http, server, location

directio_alignment:
  - syntax: directio_alignment size;
  - context: http, server, location

etag:
  - syntax: etag on | off;
  - context: http, server, location

if_modified_since:
  - syntax: if_modified_since off | exact | before;
  - context: http, server, location

ignore_invalid_headers:
  - syntax: ignore_invalid_headers on | off;
  - context: http, server

keepalive_requests:
  - syntax: keepalive_requests number;
  - context: http, server, location

limit_rate:
  - syntax: limit_rate rate;
  - context: http, server, location, if in location

limit_rate_after:
  - syntax: limit_rate_after size;
  - context: http, server, location, if in location

lingering_close:
  - syntax: lingering_close off | on | always;
  - context: http, server, location

lingering_time:
  - syntax: lingering_time time;
  - context: http, server, location

lingering_timeout:
  - syntax: lingering_timeout time;
  - context: http, server, location

log_not_found:
  - syntax: log_not_found on | off;
  - context: http, server, location

log_subrequest:
  - syntax: log_subrequest on | off;
  - context: http, server, location

max_ranges:
  - syntax: max_ranges number;
  - context: http, server, location

merge_slashes:
  - syntax: merge_slashes on | off;
  - context: http, server

msie_padding:
  - syntax: msie_padding on | off;
  - context: http, server, location

msie_refresh:
  - syntax: msie_refresh on | off;
  - context: http, server, location

open_file_cache_errors:
  - syntax: open_file_cache_errors on | off;
  - context: http, server, location

open_file_cache_min_uses:
  - syntax: open_file_cache_min_uses number;
  - context: http, server, location

open_file_cache_valid:
  - syntax: open_file_cache_valid time;
  - context: http, server, location

output_buffers:
  - syntax: output_buffers number size;
  - context: http, server, location

port_in_redirect:
  - syntax: port_in_redirect on | off;
  - context: http, server, location

postpone_output:
  - syntax: postpone_output size;
  - context: http, server, location

read_ahead:
  - syntax: read_ahead size;
  - context: http, server, location

recursive_error_pages:
  - syntax: recursive_error_pages on | off;
  - context: http, server, location

request_pool_size:
  - syntax: request_pool_size size;
  - context: http, server

reset_timedout_connection:
  - syntax: reset_timedout_connection on | off;
  - context: http, server, location

resolver_timeout:
  - syntax: resolver_timeout time;
  - context: http, server, location

root:
  - syntax: root path;
  - context: http, server, location, if in location

satisfy:
  - syntax: satisfy all | any;
  - context: http, server, location

send_lowat:
  - syntax: send_lowat size;
  - context: http, server, location

send_timeout:
  - syntax: send_timeout time;
  - context: http, server, location

sendfile:
  - syntax: sendfile on | off;
  - context: http, server, location, if in location

sendfile_max_chunk:
  - syntax: sendfile_max_chunk size;
  - context: http, server, location

server_name_in_redirect:
  - syntax: server_name_in_redirect on | off;
  - context: http, server, location

server_names_hash_bucket_size:
  - syntax: server_names_hash_bucket_size size;
  - context: http

server_names_hash_max_size:
  - syntax: server_names_hash_max_size size;
  - context: http

server_tokens:
  - syntax: server_tokens on | off;
  - context: http, server, location

tcp_nodelay:
  - syntax: tcp_nodelay on | off;
  - context: http, server, location

tcp_nopush:
  - syntax: tcp_nopush on | off;
  - context: http, server, location

types_hash_bucket_size:
  - syntax: types_hash_bucket_size size;
  - context: http, server, location

types_hash_max_size:
  - syntax: types_hash_max_size size;
  - context: http, server, location

underscores_in_headers:
  - syntax: underscores_in_headers on | off;
  - context: http, server

variables_hash_bucket_size:
  - syntax: variables_hash_bucket_size size;
  - context: http

variables_hash_max_size:
  - syntax: variables_hash_max_size size;
  - context: http

allow:
  - syntax: allow address | CIDR | unix: | all;
  - context: http, server, location, limit_except

deny:
  - syntax: deny address | CIDR | unix: | all;
  - context: http, server, location, limit_except

add_before_body:
  - syntax: add_before_body uri;
  - context: http, server, location

add_after_body:
  - syntax: add_after_body uri;
  - context: http, server, location

auth_basic:
  - syntax: auth_basic string | off;
  - context: http, server, location, limit_except

auth_basic_user_file:
  - syntax: auth_basic_user_file file;
  - context: http, server, location, limit_except

auth_request:
  - syntax: auth_request uri | off;
  - context: http, server, location

auth_request_set:
  - syntax: auth_request_set variable value;
  - context: http, server, location

autoindex:
  - syntax: autoindex on | off;
  - context: http, server, location

autoindex_exact_size:
  - syntax: autoindex_exact_size on | off;
  - context: http, server, location

autoindex_format:
  - syntax: autoindex_format html | xml | json | jsonp;
  - context: http, server, location

autoindex_localtime:
  - syntax: autoindex_localtime on | off;
  - context: http, server, location

ancient_browser_value:
  - syntax: ancient_browser_value string;
  - context: http, server, location

modern_browser_value:
  - syntax: modern_browser_value string;
  - context: http, server, location

## Module ngx_http_charset_module
charset:
  - syntax: charset charset | off;
  - context: http, server, location, if in location

override_charset:
  - syntax: override_charset on | off;
  - context: http, server, location, if in location

source_charset:
  - syntax: source_charset charset;
  - context: http, server, location, if in location

create_full_put_path:
  - syntax: create_full_put_path on | off;
  - context: http, server, location

min_delete_depth:
  - syntax: min_delete_depth number;
  - context: http, server, location

f4f_buffer_size:
  - syntax: f4f_buffer_size size;
  - context: http, server, location

## Module ngx_http_fastcgi_module
fastcgi_bind:
  - syntax: fastcgi_bind address | off;
  - context: http, server, location

fastcgi_buffer_size:
  - syntax: fastcgi_buffer_size size;
  - context: http, server, location

fastcgi_buffering:
  - syntax: fastcgi_buffering on | off;
  - context: http, server, location

fastcgi_busy_buffers_size:
  - syntax: fastcgi_busy_buffers_size size;
  - context: http, server, location

fastcgi_cache:
  - syntax: fastcgi_cache zone | off;
  - context: http, server, location

fastcgi_cache_key:
  - syntax: fastcgi_cache_key string;
  - context: http, server, location

fastcgi_cache_lock:
  - syntax: fastcgi_cache_lock on | off;
  - context: http, server, location

fastcgi_cache_lock_age:
  - syntax: fastcgi_cache_lock_age time;
  - context: http, server, location

fastcgi_cache_lock_timeout:
  - syntax: fastcgi_cache_lock_timeout time;
  - context: http, server, location

fastcgi_cache_min_uses:
  - syntax: fastcgi_cache_min_uses number;
  - context: http, server, location

fastcgi_cache_revalidate:
  - syntax: fastcgi_cache_revalidate on | off;
  - context: http, server, location

fastcgi_catch_stderr:
  - syntax: fastcgi_catch_stderr string;
  - context: http, server, location

fastcgi_connect_timeout:
  - syntax: fastcgi_connect_timeout time;
  - context: http, server, location

fastcgi_force_ranges:
  - syntax: fastcgi_force_ranges on | off;
  - context: http, server, location

fastcgi_hide_header:
  - syntax: fastcgi_hide_header field;
  - context: http, server, location

fastcgi_ignore_client_abort:
  - syntax: fastcgi_ignore_client_abort on | off;
  - context: http, server, location

fastcgi_index:
  - syntax: fastcgi_index name;
  - context: http, server, location

fastcgi_intercept_errors:
  - syntax: fastcgi_intercept_errors on | off;
  - context: http, server, location

fastcgi_keep_conn:
  - syntax: fastcgi_keep_conn on | off;
  - context: http, server, location

fastcgi_limit_rate:
  - syntax: fastcgi_limit_rate rate;
  - context: http, server, location

fastcgi_max_temp_file_size:
  - syntax: fastcgi_max_temp_file_size size;
  - context: http, server, location

fastcgi_next_upstream_timeout:
  - syntax: fastcgi_next_upstream_timeout time;
  - context: http, server, location

fastcgi_next_upstream_tries:
  - syntax: fastcgi_next_upstream_tries number;
  - context: http, server, location

fastcgi_pass:
  - syntax: fastcgi_pass address;
  - context: location, if in location

fastcgi_pass_header:
  - syntax: fastcgi_pass_header field;
  - context: http, server, location

fastcgi_read_timeout:
  - syntax: fastcgi_read_timeout time;
  - context: http, server, location

fastcgi_pass_request_body:
  - syntax: fastcgi_pass_request_body on | off;
  - context: http, server, location

fastcgi_pass_request_headers:
  - syntax: fastcgi_pass_request_headers on | off;
  - context: http, server, location

fastcgi_request_buffering:
  - syntax: fastcgi_request_buffering on | off;
  - context: http, server, location

fastcgi_send_lowat:
  - syntax: fastcgi_send_lowat size;
  - context: http, server, location

fastcgi_send_timeout:
  - syntax: fastcgi_send_timeout time;
  - context: http, server, location

fastcgi_split_path_info:
  - syntax: fastcgi_split_path_info regex;
  - context: location

fastcgi_store:
  - syntax: fastcgi_store on | off | string;
  - context: http, server, location

fastcgi_temp_file_write_size:
  - syntax: fastcgi_temp_file_write_size size;
  - context: http, server, location

geoip_country:
  - syntax: geoip_country file;
  - context: http

geoip_city:
  - syntax: geoip_city file;
  - context: http

geoip_org:
  - syntax: geoip_org file;
  - context: http

geoip_proxy:
  - syntax: geoip_proxy address | CIDR;
  - context: http

geoip_proxy_recursive:
  - syntax: geoip_proxy_recursive on | off;
  - context: http

gunzip:
  - syntax: gunzip on | off;
  - context: http, server, location

gzip:
  - syntax: gzip on | off;
  - context: http, server, location, if in location

gzip_comp_level:
  - syntax: gzip_comp_level level;
  - context: http, server, location

gzip_min_length:
  - syntax: gzip_min_length length;
  - context: http, server, location

gzip_http_version:
  - syntax: gzip_http_version 1.0 | 1.1;
  - context: http, server, location

gzip_vary:
  - syntax: gzip_vary on | off;
  - context: http, server, location

gzip_static:
  - syntax: gzip_static on | off | always;
  - context: http, server, location

hls_forward_args:
  - syntax: hls_forward_args on | off;
  - context: http, server, location

hls_fragment:
  - syntax: hls_fragment time;
  - context: http, server, location

hls_mp4_buffer_size:
  - syntax: hls_mp4_buffer_size size;
  - context: http, server, location

hls_mp4_max_buffer_size:
  - syntax: hls_mp4_max_buffer_size size;
  - context: http, server, location

image_filter_buffer:
  - syntax: image_filter_buffer size;
  - context: http, server, location

image_filter_interlace:
  - syntax: image_filter_interlace on | off;
  - context: http, server, location

image_filter_jpeg_quality:
  - syntax: image_filter_jpeg_quality quality;
  - context: http, server, location

image_filter_sharpen:
  - syntax: image_filter_sharpen percent;
  - context: http, server, location

image_filter_transparency:
  - syntax: image_filter_transparency on | off;
  - context: http, server, location

limit_conn_status:
  - syntax: limit_conn_status code;
  - context: http, server, location

limit_conn_log_level:
  - syntax: limit_conn_log_level info | notice | warn | error;
  - context: http, server, location

limit_req_log_level:
  - syntax: limit_req_log_level info | notice | warn | error;
  - context: http, server, location

limit_req_status:
  - syntax: limit_req_status code;
  - context: http, server, location

map_hash_bucket_size:
  - syntax: map_hash_bucket_size size;
  - context: http

map_hash_max_size:
  - syntax: map_hash_max_size size;
  - context: http

## Module ngx_http_memcached_module
memcached_bind:
  - syntax: memcached_bind address | off;
  - context: http, server, location

memcached_buffer_size:
  - syntax: memcached_buffer_size size;
  - context: http, server, location

memcached_connect_timeout:
  - syntax: memcached_connect_timeout time;
  - context: http, server, location

memcached_force_ranges:
  - syntax: memcached_force_ranges on | off;
  - context: http, server, location

memcached_gzip_flag:
  - syntax: memcached_gzip_flag flag;
  - context: http, server, location

memcached_next_upstream_timeout:
  - syntax: memcached_next_upstream_timeout time;
  - context: http, server, location

memcached_next_upstream_tries:
  - syntax: memcached_next_upstream_tries number;
  - context: http, server, location

memcached_pass:
  - syntax: memcached_pass address;
  - context: location, if in location

memcached_read_timeout:
  - syntax: memcached_read_timeout time;
  - context: http, server, location

memcached_send_timeout:
  - syntax: memcached_send_timeout time;
  - context: http, server, location

mp4_buffer_size:
  - syntax: mp4_buffer_size size;
  - context: http, server, location

mp4_max_buffer_size:
  - syntax: mp4_max_buffer_size size;
  - context: http, server, location

mp4_limit_rate:
  - syntax: mp4_limit_rate on | off | factor;
  - context: http, server, location

mp4_limit_rate_after:
  - syntax: mp4_limit_rate_after time;
  - context: http, server, location

perl_modules:
  - syntax: perl_modules path;
  - context: http

perl_require:
  - syntax: perl_require module;
  - context: http

proxy_bind:
  - syntax: proxy_bind address | off;
  - context: http, server, location

proxy_buffer_size:
  - syntax: proxy_buffer_size size;
  - context: http, server, location

proxy_buffering:
  - syntax: proxy_buffering on | off;
  - context: http, server, location

proxy_busy_buffers_size:
  - syntax: proxy_busy_buffers_size size;
  - context: http, server, location

proxy_cache:
  - syntax: proxy_cache zone | off;
  - context: http, server, location

proxy_cache_key:
  - syntax: proxy_cache_key string;
  - context: http, server, location

proxy_cache_lock:
  - syntax: proxy_cache_lock on | off;
  - context: http, server, location

proxy_cache_lock_age:
  - syntax: proxy_cache_lock_age time;
  - context: http, server, location

proxy_cache_lock_timeout:
  - syntax: proxy_cache_lock_timeout time;
  - context: http, server, location

proxy_cache_min_uses:
  - syntax: proxy_cache_min_uses number;
  - context: http, server, location

proxy_cache_revalidate:
  - syntax: proxy_cache_revalidate on | off;
  - context: http, server, location

proxy_connect_timeout:
  - syntax: proxy_connect_timeout time;
  - context: http, server, location

proxy_force_ranges:
  - syntax: proxy_force_ranges on | off;
  - context: http, server, location

proxy_headers_hash_bucket_size:
  - syntax: proxy_headers_hash_bucket_size size;
  - context: http, server, location

proxy_headers_hash_max_size:
  - syntax: proxy_headers_hash_max_size size;
  - context: http, server, location

proxy_hide_header:
  - syntax: proxy_hide_header field;
  - context: http, server, location

proxy_http_version:
  - syntax: proxy_http_version 1.0 | 1.1;
  - context: http, server, location

proxy_ignore_client_abort:
  - syntax: proxy_ignore_client_abort on | off;
  - context: http, server, location

proxy_intercept_errors:
  - syntax: proxy_intercept_errors on | off;
  - context: http, server, location

proxy_limit_rate:
  - syntax: proxy_limit_rate rate;
  - context: http, server, location

proxy_max_temp_file_size:
  - syntax: proxy_max_temp_file_size size;
  - context: http, server, location

proxy_method:
  - syntax: proxy_method method;
  - context: http, server, location

proxy_next_upstream_timeout:
  - syntax: proxy_next_upstream_timeout time;
  - context: http, server, location

proxy_next_upstream_tries:
  - syntax: proxy_next_upstream_tries number;
  - context: http, server, location

proxy_pass:
  - syntax: proxy_pass URL;
  - context: location, if in location, limit_except

proxy_pass_header:
  - syntax: proxy_pass_header field;
  - context: http, server, location

proxy_read_timeout:
  - syntax: proxy_read_timeout time;
  - context: http, server, location

proxy_pass_request_body:
  - syntax: proxy_pass_request_body on | off;
  - context: http, server, location

proxy_pass_request_headers:
  - syntax: proxy_pass_request_headers on | off;
  - context: http, server, location

proxy_send_lowat:
  - syntax: proxy_send_lowat size;
  - context: http, server, location

proxy_send_timeout:
  - syntax: proxy_send_timeout time;
  - context: http, server, location

proxy_set_body:
  - syntax: proxy_set_body value;
  - context: http, server, location

proxy_request_buffering:
  - syntax: proxy_request_buffering on | off;
  - context: http, server, location

proxy_ssl_certificate:
  - syntax: proxy_ssl_certificate file;
  - context: http, server, location

proxy_ssl_certificate_key:
  - syntax: proxy_ssl_certificate_key file;
  - context: http, server, location

proxy_ssl_ciphers:
  - syntax: proxy_ssl_ciphers ciphers;
  - context: http, server, location

proxy_ssl_crl:
  - syntax: proxy_ssl_crl file;
  - context: http, server, location

proxy_ssl_name:
  - syntax: proxy_ssl_name name;
  - context: http, server, location

proxy_ssl_password_file:
  - syntax: proxy_ssl_password_file file;
  - context: http, server, location

proxy_ssl_server_name:
  - syntax: proxy_ssl_server_name on | off;
  - context: http, server, location

proxy_ssl_session_reuse:
  - syntax: proxy_ssl_session_reuse on | off;
  - context: http, server, location

proxy_ssl_trusted_certificate:
  - syntax: proxy_ssl_trusted_certificate file;
  - context: http, server, location

proxy_ssl_verify:
  - syntax: proxy_ssl_verify on | off;
  - context: http, server, location

proxy_ssl_verify_depth:
  - syntax: proxy_ssl_verify_depth number;
  - context: http, server, location

proxy_store:
  - syntax: proxy_store on | off | string;
  - context: http, server, location

proxy_temp_file_write_size:
  - syntax: proxy_temp_file_write_size size;
  - context: http, server, location

random_index:
  - syntax: random_index on | off;
  - context: location

set_real_ip_from:
  - syntax: set_real_ip_from address | CIDR | unix:;
  - context: http, server, location

real_ip_header:
  - syntax: real_ip_header field | X-Real-IP | X-Forwarded-For | proxy_protocol;
  - context: http, server, location

real_ip_recursive:
  - syntax: real_ip_recursive on | off;
  - context: http, server, location

referer_hash_bucket_size:
  - syntax: referer_hash_bucket_size size;
  - context: server, location

referer_hash_max_size:
  - syntax: referer_hash_max_size size;
  - context: server, location

rewrite_log:
  - syntax: rewrite_log on | off;
  - context: http, server, location, if

uninitialized_variable_warn:
  - syntax: uninitialized_variable_warn on | off;
  - context: http, server, location, if

scgi_bind:
  - syntax: scgi_bind address | off;
  - context: http, server, location

scgi_buffer_size:
  - syntax: scgi_buffer_size size;
  - context: http, server, location

scgi_buffering:
  - syntax: scgi_buffering on | off;
  - context: http, server, location

scgi_buffers:
  - syntax: scgi_buffers number size;
  - context: http, server, location

scgi_busy_buffers_size:
  - syntax: scgi_busy_buffers_size size;
  - context: http, server, location

scgi_cache:
  - syntax: scgi_cache zone | off;
  - context: http, server, location

scgi_cache_key:
  - syntax: scgi_cache_key string;
  - context: http, server, location

scgi_cache_lock:
  - syntax: scgi_cache_lock on | off;
  - context: http, server, location

scgi_cache_lock_age:
  - syntax: scgi_cache_lock_age time;
  - context: http, server, location

scgi_cache_lock_timeout:
  - syntax: scgi_cache_lock_timeout time;
  - context: http, server, location

scgi_cache_min_uses:
  - syntax: scgi_cache_min_uses number;
  - context: http, server, location

scgi_cache_revalidate:
  - syntax: scgi_cache_revalidate on | off;
  - context: http, server, location

scgi_connect_timeout:
  - syntax: scgi_connect_timeout time;
  - context: http, server, location

scgi_force_ranges:
  - syntax: scgi_force_ranges on | off;
  - context: http, server, location

scgi_hide_header:
  - syntax: scgi_hide_header field;
  - context: http, server, location

scgi_ignore_client_abort:
  - syntax: scgi_ignore_client_abort on | off;
  - context: http, server, location

scgi_intercept_errors:
  - syntax: scgi_intercept_errors on | off;
  - context: http, server, location

scgi_limit_rate:
  - syntax: scgi_limit_rate rate;
  - context: http, server, location

scgi_max_temp_file_size:
  - syntax: scgi_max_temp_file_size size;
  - context: http, server, location

scgi_next_upstream_timeout:
  - syntax: scgi_next_upstream_timeout time;
  - context: http, server, location

scgi_next_upstream_tries:
  - syntax: scgi_next_upstream_tries number;
  - context: http, server, location

scgi_pass:
  - syntax: scgi_pass address;
  - context: location, if in location

scgi_pass_header:
  - syntax: scgi_pass_header field;
  - context: http, server, location

scgi_read_timeout:
  - syntax: scgi_read_timeout time;
  - context: http, server, location

scgi_pass_request_body:
  - syntax: scgi_pass_request_body on | off;
  - context: http, server, location

scgi_pass_request_headers:
  - syntax: scgi_pass_request_headers on | off;
  - context: http, server, location

scgi_request_buffering:
  - syntax: scgi_request_buffering on | off;
  - context: http, server, location

scgi_send_timeout:
  - syntax: scgi_send_timeout time;
  - context: http, server, location

scgi_store:
  - syntax: scgi_store on | off | string;
  - context: http, server, location

scgi_temp_file_write_size:
  - syntax: scgi_temp_file_write_size size;
  - context: http, server, location

secure_link:
  - syntax: secure_link expression;
  - context: http, server, location

secure_link_md5:
  - syntax: secure_link_md5 expression;
  - context: http, server, location

secure_link_secret:
  - syntax: secure_link_secret word;
  - context: location

session_log:
  - syntax: session_log name | off;
  - context: http, server, location

spdy_chunk_size:
  - syntax: spdy_chunk_size size;
  - context: http, server, location

spdy_headers_comp:
  - syntax: spdy_headers_comp level;
  - context: http, server

ssi:
  - syntax: ssi on | off;
  - context: http, server, location, if in location

ssi_last_modified:
  - syntax: ssi_last_modified on | off;
  - context: http, server, location

ssi_min_file_chunk:
  - syntax: ssi_min_file_chunk size;
  - context: http, server, location

ssi_silent_errors:
  - syntax: ssi_silent_errors on | off;
  - context: http, server, location

ssi_value_length:
  - syntax: ssi_value_length length;
  - context: http, server, location

ssl:
  - syntax: ssl on | off;
  - context: http, server

ssl_buffer_size:
  - syntax: ssl_buffer_size size;
  - context: http, server

ssl_certificate:
  - syntax: ssl_certificate file;
  - context: http, server

ssl_certificate_key:
  - syntax: ssl_certificate_key file;
  - context: http, server

ssl_ciphers:
  - syntax: ssl_ciphers ciphers;
  - context: http, server

ssl_client_certificate:
  - syntax: ssl_client_certificate file;
  - context: http, server

ssl_crl:
  - syntax: ssl_crl file;
  - context: http, server

ssl_dhparam:
  - syntax: ssl_dhparam file;
  - context: http, server

ssl_ecdh_curve:
  - syntax: ssl_ecdh_curve curve;
  - context: http, server

ssl_password_file:
  - syntax: ssl_password_file file;
  - context: http, server

ssl_prefer_server_ciphers:
  - syntax: ssl_prefer_server_ciphers on | off;
  - context: http, server

ssl_session_ticket_key:
  - syntax: ssl_session_ticket_key file;
  - context: http, server

ssl_session_tickets:
  - syntax: ssl_session_tickets on | off;
  - context: http, server

ssl_session_timeout:
  - syntax: ssl_session_timeout time;
  - context: http, server

ssl_stapling:
  - syntax: ssl_stapling on | off;
  - context: http, server

ssl_stapling_file:
  - syntax: ssl_stapling_file file;
  - context: http, server

ssl_stapling_responder:
  - syntax: ssl_stapling_responder url;
  - context: http, server

ssl_stapling_verify:
  - syntax: ssl_stapling_verify on | off;
  - context: http, server

ssl_trusted_certificate:
  - syntax: ssl_trusted_certificate file;
  - context: http, server

ssl_verify_client:
  - syntax: ssl_verify_client on | off | optional | optional_no_ca;
  - context: http, server

ssl_verify_depth:
  - syntax: ssl_verify_depth number;
  - context: http, server

status_zone:
  - syntax: status_zone zone;
  - context: server

sub_filter_last_modified:
  - syntax: sub_filter_last_modified on | off;
  - context: http, server, location

sub_filter_once:
  - syntax: sub_filter_once on | off;
  - context: http, server, location

least_time:
  - syntax: least_time header | last_byte;
  - context: upstream

userid:
  - syntax: userid on | v1 | log | off;
  - context: http, server, location

userid_domain:
  - syntax: userid_domain name | none;
  - context: http, server, location

userid_expires:
  - syntax: userid_expires time | max | off;
  - context: http, server, location

userid_mark:
  - syntax: userid_mark letter | digit | = | off;
  - context: http, server, location

userid_name:
  - syntax: userid_name name;
  - context: http, server, location

userid_p3p:
  - syntax: userid_p3p string | none;
  - context: http, server, location

userid_path:
  - syntax: userid_path path;
  - context: http, server, location

userid_service:
  - syntax: userid_service number;
  - context: http, server, location

uwsgi_bind:
  - syntax: uwsgi_bind address | off;
  - context: http, server, location

uwsgi_buffer_size:
  - syntax: uwsgi_buffer_size size;
  - context: http, server, location

uwsgi_buffering:
  - syntax: uwsgi_buffering on | off;
  - context: http, server, location

uwsgi_busy_buffers_size:
  - syntax: uwsgi_busy_buffers_size size;
  - context: http, server, location

uwsgi_cache:
  - syntax: uwsgi_cache zone | off;
  - context: http, server, location

uwsgi_cache_key:
  - syntax: uwsgi_cache_key string;
  - context: http, server, location

uwsgi_cache_lock:
  - syntax: uwsgi_cache_lock on | off;
  - context: http, server, location

uwsgi_cache_lock_age:
  - syntax: uwsgi_cache_lock_age time;
  - context: http, server, location

uwsgi_cache_lock_timeout:
  - syntax: uwsgi_cache_lock_timeout time;
  - context: http, server, location

uwsgi_cache_min_uses:
  - syntax: uwsgi_cache_min_uses number;
  - context: http, server, location

uwsgi_cache_revalidate:
  - syntax: uwsgi_cache_revalidate on | off;
  - context: http, server, location

uwsgi_connect_timeout:
  - syntax: uwsgi_connect_timeout time;
  - context: http, server, location

uwsgi_force_ranges:
  - syntax: uwsgi_force_ranges on | off;
  - context: http, server, location

uwsgi_hide_header:
  - syntax: uwsgi_hide_header field;
  - context: http, server, location

uwsgi_ignore_client_abort:
  - syntax: uwsgi_ignore_client_abort on | off;
  - context: http, server, location

uwsgi_intercept_errors:
  - syntax: uwsgi_intercept_errors on | off;
  - context: http, server, location

uwsgi_limit_rate:
  - syntax: uwsgi_limit_rate rate;
  - context: http, server, location

uwsgi_max_temp_file_size:
  - syntax: uwsgi_max_temp_file_size size;
  - context: http, server, location

uwsgi_modifier1:
  - syntax: uwsgi_modifier1 number;
  - context: http, server, location

uwsgi_modifier2:
  - syntax: uwsgi_modifier2 number;
  - context: http, server, location

uwsgi_next_upstream_timeout:
  - syntax: uwsgi_next_upstream_timeout time;
  - context: http, server, location

uwsgi_next_upstream_tries:
  - syntax: uwsgi_next_upstream_tries number;
  - context: http, server, location

uwsgi_pass_header:
  - syntax: uwsgi_pass_header field;
  - context: http, server, location

uwsgi_pass_request_body:
  - syntax: uwsgi_pass_request_body on | off;
  - context: http, server, location

uwsgi_pass_request_headers:
  - syntax: uwsgi_pass_request_headers on | off;
  - context: http, server, location

uwsgi_read_timeout:
  - syntax: uwsgi_read_timeout time;
  - context: http, server, location

uwsgi_request_buffering:
  - syntax: uwsgi_request_buffering on | off;
  - context: http, server, location

uwsgi_send_timeout:
  - syntax: uwsgi_send_timeout time;
  - context: http, server, location

uwsgi_ssl_certificate:
  - syntax: uwsgi_ssl_certificate file;
  - context: http, server, location

uwsgi_ssl_certificate_key:
  - syntax: uwsgi_ssl_certificate_key file;
  - context: http, server, location

uwsgi_ssl_ciphers:
  - syntax: uwsgi_ssl_ciphers ciphers;
  - context: http, server, location

uwsgi_ssl_crl:
  - syntax: uwsgi_ssl_crl file;
  - context: http, server, location

uwsgi_ssl_name:
  - syntax: uwsgi_ssl_name name;
  - context: http, server, location

uwsgi_ssl_password_file:
  - syntax: uwsgi_ssl_password_file file;
  - context: http, server, location

uwsgi_ssl_server_name:
  - syntax: uwsgi_ssl_server_name on | off;
  - context: http, server, location

uwsgi_ssl_session_reuse:
  - syntax: uwsgi_ssl_session_reuse on | off;
  - context: http, server, location

uwsgi_ssl_trusted_certificate:
  - syntax: uwsgi_ssl_trusted_certificate file;
  - context: http, server, location

uwsgi_ssl_verify:
  - syntax: uwsgi_ssl_verify on | off;
  - context: http, server, location

uwsgi_ssl_verify_depth:
  - syntax: uwsgi_ssl_verify_depth number;
  - context: http, server, location

uwsgi_store:
  - syntax: uwsgi_store on | off | string;
  - context: http, server, location

uwsgi_temp_file_write_size:
  - syntax: uwsgi_temp_file_write_size size;
  - context: http, server, location

xml_entities:
  - syntax: xml_entities path;
  - context: http, server, location

xslt_last_modified:
  - syntax: xslt_last_modified on | off;
  - context: http, server, location

protocol:
  - syntax: protocol imap | pop3 | smtp;
  - context: server

resolver_timeout:
  - syntax: resolver_timeout time;
  - context: mail, server

auth_http:
  - syntax: auth_http URL;
  - context: mail, server

auth_http_pass_client_cert:
  - syntax: auth_http_pass_client_cert on | off;
  - context: mail, server

auth_http_timeout:
  - syntax: auth_http_timeout time;
  - context: mail, server

proxy_buffer:
  - syntax: proxy_buffer size;
  - context: mail, server

proxy_pass_error_message:
  - syntax: proxy_pass_error_message on | off;
  - context: mail, server

proxy_timeout:
  - syntax: proxy_timeout timeout;
  - context: mail, server

xclient:
  - syntax: xclient on | off;
  - context: mail, server

ssl:
  - syntax: ssl on | off;
  - context: mail, server

ssl_certificate:
  - syntax: ssl_certificate file;
  - context: mail, server

ssl_certificate_key:
  - syntax: ssl_certificate_key file;
  - context: mail, server

ssl_ciphers:
  - syntax: ssl_ciphers ciphers;
  - context: mail, server

ssl_client_certificate:
  - syntax: ssl_client_certificate file;
  - context: mail, server

ssl_crl:
  - syntax: ssl_crl file;
  - context: mail, server

ssl_dhparam:
  - syntax: ssl_dhparam file;
  - context: mail, server

ssl_ecdh_curve:
  - syntax: ssl_ecdh_curve curve;
  - context: mail, server

ssl_password_file:
  - syntax: ssl_password_file file;
  - context: mail, server

ssl_prefer_server_ciphers:
  - syntax: ssl_prefer_server_ciphers on | off;
  - context: mail, server

ssl_session_ticket_key:
  - syntax: ssl_session_ticket_key file;
  - context: mail, server

ssl_session_tickets:
  - syntax: ssl_session_tickets on | off;
  - context: mail, server

ssl_session_timeout:
  - syntax: ssl_session_timeout time;
  - context: mail, server

ssl_trusted_certificate:
  - syntax: ssl_trusted_certificate file;
  - context: mail, server

ssl_verify_client:
  - syntax: ssl_verify_client on | off | optional | optional_no_ca;
  - context: mail, server

ssl_verify_depth:
  - syntax: ssl_verify_depth number;
  - context: mail, server

starttls:
  - syntax: starttls on | off | only;
  - context: mail, server

imap_client_buffer:
  - syntax: imap_client_buffer size;
  - context: mail, server

resolver_timeout:
  - syntax: resolver_timeout time;
  - context: stream, server

proxy_connect_timeout:
  - syntax: proxy_connect_timeout time;
  - context: stream, server

proxy_downstream_buffer:
  - syntax: proxy_downstream_buffer size;
  - context: stream, server

proxy_next_upstream:
  - syntax: proxy_next_upstream on | off;
  - context: stream, server

proxy_next_upstream_timeout:
  - syntax: proxy_next_upstream_timeout time;
  - context: stream, server

proxy_next_upstream_tries:
  - syntax: proxy_next_upstream_tries number;
  - context: stream, server

proxy_pass:
  - syntax: proxy_pass address;
  - context: server

proxy_ssl:
  - syntax: proxy_ssl on | off;
  - context: stream, server

proxy_ssl_certificate:
  - syntax: proxy_ssl_certificate file;
  - context: stream, server

proxy_ssl_certificate_key:
  - syntax: proxy_ssl_certificate_key file;
  - context: stream, server

proxy_ssl_ciphers:
  - syntax: proxy_ssl_ciphers ciphers;
  - context: stream, server

proxy_ssl_crl:
  - syntax: proxy_ssl_crl file;
  - context: stream, server

proxy_ssl_name:
  - syntax: proxy_ssl_name name;
  - context: stream, server

proxy_ssl_password_file:
  - syntax: proxy_ssl_password_file file;
  - context: stream, server

proxy_ssl_server_name:
  - syntax: proxy_ssl_server_name on | off;
  - context: stream, server

proxy_ssl_session_reuse:
  - syntax: proxy_ssl_session_reuse on | off;
  - context: stream, server

proxy_ssl_trusted_certificate:
  - syntax: proxy_ssl_trusted_certificate file;
  - context: stream, server

proxy_ssl_verify:
  - syntax: proxy_ssl_verify on | off;
  - context: stream, server

proxy_ssl_verify_depth:
  - syntax: proxy_ssl_verify_depth number;
  - context: stream, server

proxy_timeout:
  - syntax: proxy_timeout timeout;
  - context: stream, server

proxy_upstream_buffer:
  - syntax: proxy_upstream_buffer size;
  - context: stream, server

ssl_certificate:
  - syntax: ssl_certificate file;
  - context: stream, server

ssl_certificate_key:
  - syntax: ssl_certificate_key file;
  - context: stream, server

ssl_ciphers:
  - syntax: ssl_ciphers ciphers;
  - context: stream, server

ssl_dhparam:
  - syntax: ssl_dhparam file;
  - context: stream, server

ssl_ecdh_curve:
  - syntax: ssl_ecdh_curve curve;
  - context: stream, server

ssl_handshake_timeout:
  - syntax: ssl_handshake_timeout time;
  - context: stream, server

ssl_password_file:
  - syntax: ssl_password_file file;
  - context: stream, server

ssl_prefer_server_ciphers:
  - syntax: ssl_prefer_server_ciphers on | off;
  - context: stream, server

ssl_session_ticket_key:
  - syntax: ssl_session_ticket_key file;
  - context: stream, server

ssl_session_tickets:
  - syntax: ssl_session_tickets on | off;
  - context: stream, server

ssl_session_timeout:
  - syntax: ssl_session_timeout time;
  - context: stream, server

keepalive:
  - syntax: keepalive connections;
  - context: upstream

uwsgi_pass:
  - syntax: uwsgi_pass [ protocol://] address;
  - context: location, if in location


## Has potential for multiple values

keepalive_disable:
  - syntax: keepalive_disable none | browser...;
  - context: http, server, location
