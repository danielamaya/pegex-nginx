ssl_session_cache:
  - syntax: ssl_session_cache off | none | [ builtin [: size ]] [ shared: name: size ];
  - context: stream, server

zone:
  - syntax: zone name size;
  - context: upstream

hash:
  - syntax: hash key [ consistent ];
  - context: upstream

client_body_temp_path:
  - syntax: client_body_temp_path path [ level1 [ level2 [ level3 ]]];
  - context: http, server, location

disable_symlinks:
  - syntax: disable_symlinks off; disable_symlinks on | if_not_owner [ from = part ];
  - context: http, server, location

error_page:
  - syntax: error_page code... [ = [ response ]] uri;
  - context: http, server, location, if in location

keepalive_timeout:
  - syntax: keepalive_timeout timeout [ header_timeout ];
  - context: http, server, location

large_client_header_buffers:
  - syntax: large_client_header_buffers number size;
  - context: http, server

listen:
  - syntax: listen address [: port ] [ default_server ] [ ssl ] [ spdy ] [ proxy_protocol ] [ setfib = number ] [ fastopen = number ] [ backlog = number ] [ rcvbuf = size ] [ sndbuf = size ] [ accept_filter = filter ] [ deferred ] [ bind ] [ ipv6only = on | off ] [ so_keepalive = on | off |[ keepidle ]:[ keepintvl ]:[ keepcnt ]]; listen port [ default_server ] [ ssl ] [ spdy ] [ proxy_protocol ] [ setfib = number ] [ fastopen = number ] [ backlog = number ] [ rcvbuf = size ] [ sndbuf = size ] [ accept_filter = filter ] [ deferred ] [ bind ] [ ipv6only = on | off ] [ so_keepalive = on | off |[ keepidle ]:[ keepintvl ]:[ keepcnt ]]; listen unix: path [ default_server ] [ ssl ] [ spdy ] [ proxy_protocol ] [ backlog = number ] [ rcvbuf = size ] [ sndbuf = size ] [ accept_filter = filter ] [ deferred ] [ bind ] [ so_keepalive = on | off |[ keepidle ]:[ keepintvl ]:[ keepcnt ]];
  - context: server

open_file_cache:
  - syntax: open_file_cache off; open_file_cache max = N [ inactive = time ];
  - context: http, server, location

resolver:
  - syntax: resolver address... [ valid = time ] [ ipv6 = on | off ];
  - context: http, server, location

try_files:
  - syntax: try_files file... uri; try_files file... = code;
  - context: server, location

modern_browser:
  - syntax: modern_browser browser version; modern_browser unlisted;
  - context: http, server, location

dav_access:
  - syntax: dav_access users: permissions...;
  - context: http, server, location

fastcgi_buffers:
  - syntax: fastcgi_buffers number size;
  - context: http, server, location

fastcgi_cache_path:
  - syntax: fastcgi_cache_path path [ levels = levels ] [ use_temp_path = on | off ] keys_zone = name: size [ inactive = time ] [ max_size = size ] [ loader_files = number ] [ loader_sleep = time ] [ loader_threshold = time ];
  - context: http

fastcgi_cache_valid:
  - syntax: fastcgi_cache_valid [ code...] time;
  - context: http, server, location

fastcgi_param:
  - syntax: fastcgi_param parameter value [ if_not_empty ];
  - context: http, server, location

fastcgi_store_access:
  - syntax: fastcgi_store_access users: permissions...;
  - context: http, server, location


fastcgi_temp_path:
  - syntax: fastcgi_temp_path path [ level1 [ level2 [ level3 ]]];
  - context: http, server, location

gunzip_buffers:
  - syntax: gunzip_buffers number size;
  - context: http, server, location

gzip_buffers:
  - syntax: gzip_buffers number size;
  - context: http, server, location

expires:
  - syntax: expires [ modified ] time; expires epoch | max | off;
  - context: http, server, location, if in location

hls_buffers:
  - syntax: hls_buffers number size;
  - context: http, server, location

image_filter:
  - syntax: image_filter off; image_filter test; image_filter size; image_filter rotate 90 | 180 | 270; image_filter resize width height; image_filter crop width height;
  - context: location

limit_conn:
  - syntax: limit_conn zone number;
  - context: http, server, location

limit_conn_zone:
  - syntax: limit_conn_zone key zone = name: size;
  - context: http

limit_zone:
  - syntax: limit_zone name $variable size;
  - context: http

limit_req:
  - syntax: limit_req zone = name [ burst = number ] [ nodelay ];
  - context: http, server, location

limit_req_zone:
  - syntax: limit_req_zone key zone = name: size rate = rate;
  - context: http

access_log:
  - syntax: access_log path [ format [ buffer = size [ flush = time ]] [ if = condition ]]; access_log path format gzip[= level ] [ buffer = size ] [ flush = time ] [ if = condition ]; access_log syslog: server = address [, parameter = value ] [ format [ if = condition ]]; access_log off;
  - context: http, server, location, if in location, limit_except




open_log_file_cache:
  - syntax: open_log_file_cache max = N [ inactive = time ] [ min_uses = N ] [ valid = time ]; open_log_file_cache off;
  - context: http, server, location

perl:
  - syntax: perl module:: function |'sub { ... }';
  - context: location, limit_except


perl_set:
  - syntax: perl_set $variable module:: function |'sub { ... }';
  - context: http


proxy_buffers:
  - syntax: proxy_buffers number size;
  - context: http, server, location

proxy_cache_path:
  - syntax: proxy_cache_path path [ levels = levels ] [ use_temp_path = on | off ] keys_zone = name: size [ inactive = time ] [ max_size = size ] [ loader_files = number ] [ loader_sleep = time ] [ loader_threshold = time ];
  - context: http

proxy_cache_valid:
  - syntax: proxy_cache_valid [ code...] time;
  - context: http, server, location

proxy_cookie_domain:
  - syntax: proxy_cookie_domain off; proxy_cookie_domain domain replacement;
  - context: http, server, location

proxy_cookie_path:
  - syntax: proxy_cookie_path off; proxy_cookie_path path replacement;
  - context: http, server, location

proxy_redirect:
  - syntax: proxy_redirect default; proxy_redirect off; proxy_redirect redirect replacement;
  - context: http, server, location

proxy_set_header:
  - syntax: proxy_set_header field value;
  - context: http, server, location

proxy_store_access:
  - syntax: proxy_store_access users: permissions...;
  - context: http, server, location


proxy_temp_path:
  - syntax: proxy_temp_path path [ level1 [ level2 [ level3 ]]];
  - context: http, server, location

return:
  - syntax: return code [ text ]; return code URL; return URL;
  - context: server, location, if

rewrite:
  - syntax: rewrite regex replacement [ flag ];
  - context: server, location, if

set:
  - syntax: set $variable value;
  - context: server, location, if

scgi_cache_path:
  - syntax: scgi_cache_path path [ levels = levels ] [ use_temp_path = on | off ] keys_zone = name: size [ inactive = time ] [ max_size = size ] [ loader_files = number ] [ loader_sleep = time ] [ loader_threshold = time ];
  - context: http


scgi_cache_valid:
  - syntax: scgi_cache_valid [ code...] time;
  - context: http, server, location

scgi_param:
  - syntax: scgi_param parameter value [ if_not_empty ];
  - context: http, server, location

scgi_store_access:
  - syntax: scgi_store_access users: permissions...;
  - context: http, server, location

scgi_temp_path:
  - syntax: scgi_temp_path path [ level1 [ level2 [ level3 ]]];
  - context: http, server, location



session_log_zone:
  - syntax: session_log_zone path zone = name: size [ format = format ] [ timeout = time ] [ id = id ] [ md5 = md5 ] ;
  - context: http

split_clients:
  - syntax: split_clients string $variable { ... }
  - context: http

ssl_session_cache:
  - syntax: ssl_session_cache off | none | [ builtin [: size ]] [ shared: name: size ];
  - context: http, server

status_format:
  - syntax: status_format json; status_format jsonp [ callback ];
  - context: http, server, location

sub_filter:
  - syntax: sub_filter string replacement;
  - context: http, server, location

server:
  - syntax: server address [ parameters ];
  - context: upstream

hash:
  - syntax: hash key [ consistent ];
  - context: upstream

queue:
  - syntax: queue number [ timeout = time ];
  - context: upstream

sticky:
  - syntax: sticky cookie name [ expires= time ] [ domain= domain ] [ httponly ] [ secure ] [ path= path ]; sticky route $variable...; sticky learn create= $variable lookup= $variable zone= name: size [ timeout= time ];
  - context: upstream

sticky_cookie_insert:
  - syntax: sticky_cookie_insert name [ expires= time ] [ domain= domain ] [ path= path ];
  - context: upstream

uwsgi_buffers:
  - syntax: uwsgi_buffers number size;
  - context: http, server, location

uwsgi_cache_path:
  - syntax: uwsgi_cache_path path [ levels = levels ] [ use_temp_path = on | off ] keys_zone = name: size [ inactive = time ] [ max_size = size ] [ loader_files = number ] [ loader_sleep = time ] [ loader_threshold = time ];
  - context: http

uwsgi_cache_valid:
  - syntax: uwsgi_cache_valid [ code...] time;
  - context: http, server, location

uwsgi_param:
  - syntax: uwsgi_param parameter value [ if_not_empty ];
  - context: http, server, location

uwsgi_store_access:
  - syntax: uwsgi_store_access users: permissions...;
  - context: http, server, location

uwsgi_temp_path:
  - syntax: uwsgi_temp_path path [ level1 [ level2 [ level3 ]]];
  - context: http, server, location

xslt_param:
  - syntax: xslt_param parameter value;
  - context: http, server, location

xslt_string_param:
  - syntax: xslt_string_param parameter value;
  - context: http, server, location

xslt_stylesheet:
  - syntax: xslt_stylesheet stylesheet [ parameter = value...];
  - context: location

listen:
  - syntax: listen address: port [ bind ];
  - context: server

resolver:
  - syntax: resolver address... [ valid = time ]; resolver off;
  - context: mail, server

auth_http_header:
  - syntax: auth_http_header header value;
  - context: mail, server

ssl_session_cache:
  - syntax: ssl_session_cache off | none | [ builtin [: size ]] [ shared: name: size ];
  - context: mail, server

listen:
  - syntax: listen address: port [ ssl ] [ bind ] [ ipv6only = on | off ] [ so_keepalive = on | off |[ keepidle ]:[ keepintvl ]:[ keepcnt ]];
  - context: server

resolver:
  - syntax: resolver address... [ valid = time ] [ ipv6 = on | off ];
  - context: stream, server

# health_check interval=2s fails=1 passes=5 uri=/test.php match=statusok;
health_check:
  - syntax: health_check [ parameters ];
  - context: location

health_check:
  - syntax: health_check [ parameters ];
  - context: server

add_header:
  - syntax: add_header name value [ always ];
  - context: http, server, location, if in location

log_format:
  - syntax: log_format name string...;
  - context: http

session_log_format:
  - syntax: session_log_format name string...;
  - context: http

zone:
  - syntax: zone name size;
  - context: upstream
