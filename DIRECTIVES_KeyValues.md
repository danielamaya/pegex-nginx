fastcgi_cache_methods:
  - syntax: fastcgi_cache_methods GET | HEAD | POST...;
  - context: http, server, location

fastcgi_cache_purge:
  - syntax: fastcgi_cache_purge string ...;
  - context: http, server, location

fastcgi_cache_use_stale:
  - syntax: fastcgi_cache_use_stale error | timeout | invalid_header | updating | http_500 | http_503 | http_403 | http_404 | off...;
  - context: http, server, location

fastcgi_ignore_headers:
  - syntax: fastcgi_ignore_headers field...;
  - context: http, server, location

fastcgi_next_upstream:
  - syntax: fastcgi_next_upstream error | timeout | invalid_header | http_500 | http_503 | http_403 | http_404 | off...;
  - context: http, server, location

fastcgi_no_cache:
  - syntax: fastcgi_no_cache string...;
  - context: http, server, location

gzip_disable:
  - syntax: gzip_disable regex...;
  - context: http, server, location

gzip_proxied:
  - syntax: gzip_proxied off | expired | no-cache | no-store | private | no_last_modified | no_etag | auth | any...;
  - context: http, server, location

proxy_cache_bypass:
  - syntax: proxy_cache_bypass string...;
  - context: http, server, location

proxy_cache_methods:
  - syntax: proxy_cache_methods GET | HEAD | POST...;
  - context: http, server, location

memcached_next_upstream:
  - syntax: memcached_next_upstream error | timeout | invalid_response | not_found | off...;
  - context: http, server, location

index:
  - syntax: index file...;
  - context: http, server, location

gzip_types:
  - syntax: gzip_types mime-type...;
  - context: http, server, location

fastcgi_no_cache:
  - syntax: fastcgi_no_cache string...;
  - context: http, server, location

valid_referers:
  - syntax: valid_referers none | blocked | server_names | string...;
  - context: server, location

scgi_cache_bypass:
  - syntax: scgi_cache_bypass string...;
  - context: http, server, location

scgi_cache_methods:
  - syntax: scgi_cache_methods GET | HEAD | POST...;
  - context: http, server, location


scgi_cache_purge:
  - syntax: scgi_cache_purge string ...;
  - context: http, server, location

scgi_cache_use_stale:
  - syntax: scgi_cache_use_stale error | timeout | invalid_header | updating | http_500 | http_503 | http_403 | http_404 | off...;
  - context: http, server, location


scgi_ignore_headers:
  - syntax: scgi_ignore_headers field...;
  - context: http, server, location

scgi_next_upstream:
  - syntax: scgi_next_upstream error | timeout | invalid_header | http_500 | http_503 | http_403 | http_404 | off...;
  - context: http, server, location

ssi_types:
  - syntax: ssi_types mime-type...;
  - context: http, server, location

sub_filter_types:
  - syntax: sub_filter_types mime-type...;
  - context: http, server, location

uwsgi_cache_bypass:
  - syntax: uwsgi_cache_bypass string...;
  - context: http, server, location

uwsgi_cache_methods:
  - syntax: uwsgi_cache_methods GET | HEAD | POST...;
  - context: http, server, location

uwsgi_cache_purge:
  - syntax: uwsgi_cache_purge string ...;
  - context: http, server, location

uwsgi_ignore_headers:
  - syntax: uwsgi_ignore_headers field...;
  - context: http, server, location

ssl_protocols:
  - syntax: ssl_protocols [ SSLv2 ] [ SSLv3 ] [ TLSv1 ] [ TLSv1.1 ] [ TLSv1.2 ];
  - context: http, server

scgi_no_cache:
  - syntax: scgi_no_cache string...;
  - context: http, server, location

uwsgi_no_cache:
  - syntax: uwsgi_no_cache string...;
  - context: http, server, location

uwsgi_ssl_protocols:
  - syntax: uwsgi_ssl_protocols [ SSLv2 ] [ SSLv3 ] [ TLSv1 ] [ TLSv1.1 ] [ TLSv1.2 ];
  - context: http, server, location

xslt_types:
  - syntax: xslt_types mime-type...;
  - context: http, server, location

ssl_protocols:
  - syntax: ssl_protocols [ SSLv2 ] [ SSLv3 ] [ TLSv1 ] [ TLSv1.1 ] [ TLSv1.2 ];
  - context: mail, server

imap_auth:
  - syntax: imap_auth method...;
  - context: mail, server

imap_capabilities:
  - syntax: imap_capabilities extension...;
  - context: mail, server

pop3_auth:
  - syntax: pop3_auth method...;
  - context: mail, server

pop3_capabilities:
  - syntax: pop3_capabilities extension...;
  - context: mail, server

server_name:
  - syntax: server_name name...;
  - context: server

proxy_ssl_protocols:
  - syntax: proxy_ssl_protocols [ SSLv2 ] [ SSLv3 ] [ TLSv1 ] [ TLSv1.1 ] [ TLSv1.2 ];
  - context: stream, server

ssl_protocols:
  - syntax: ssl_protocols [ SSLv2 ] [ SSLv3 ] [ TLSv1 ] [ TLSv1.1 ] [ TLSv1.2 ];
  - context: stream, server

smtp_auth:
  - syntax: smtp_auth method...;
  - context: mail, server

smtp_capabilities:
  - syntax: smtp_capabilities extension...;
  - context: mail, server

keepalive_disable:
  - syntax: keepalive_disable none | browser...;
  - context: http, server, location

fastcgi_cache_bypass:
  - syntax: fastcgi_cache_bypass string...;
  - context: http, server, location

dav_methods:
  - syntax: dav_methods off | method...;
  - context: http, server, location

charset_types:
  - syntax: charset_types mime-type...;
  - context: http, server, location

addition_types:
  - syntax: addition_types mime-type...;
  - context: http, server, location

ancient_browser:
  - syntax: ancient_browser string...;
  - context: http, server, location

proxy_cache_purge:
  - syntax: proxy_cache_purge string ...;
  - context: http, server, location

proxy_cache_use_stale:
  - syntax: proxy_cache_use_stale error | timeout | invalid_header | updating | http_500 | http_502 | http_503 | http_504 | http_403 | http_404 | off...;
  - context: http, server, location

proxy_ignore_headers:
  - syntax: proxy_ignore_headers field...;
  - context: http, server, location

proxy_next_upstream:
  - syntax: proxy_next_upstream error | timeout | invalid_header | http_500 | http_502 | http_503 | http_504 | http_403 | http_404 | off...;
  - context: http, server, location


proxy_no_cache:
  - syntax: proxy_no_cache string...;
  - context: http, server, location

proxy_ssl_protocols:
  - syntax: proxy_ssl_protocols [ SSLv2 ] [ SSLv3 ] [ TLSv1 ] [ TLSv1.1 ] [ TLSv1.2 ];
  - context: http, server, location

uwsgi_next_upstream:
  - syntax: uwsgi_next_upstream error | timeout | invalid_header | http_500 | http_503 | http_403 | http_404 | off...;
  - context: http, server, location

uwsgi_cache_use_stale:
  - syntax: uwsgi_cache_use_stale error | timeout | invalid_header | updating | http_500 | http_503 | http_403 | http_404 | off...;
  - context: http, server, location
