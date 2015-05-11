internal:
  - syntax: internal;
  - context: location

empty_gif:
  - syntax: empty_gif;
  - context: location

f4f:
  - syntax: f4f;
  - context: location

flv:
  - syntax: flv;
  - context: location

hls:
  - syntax: hls;
  - context: location

mp4:
  - syntax: mp4;
  - context: location

break:
  - syntax: break;
  - context: server, location, if

status:
  - syntax: status;
  - context: location

stub_status:
  - syntax: stub_status;
  - context: server, location

ip_hash:
  - syntax: ip_hash;
  - context: upstream

least_conn:
  - syntax: least_conn;
  - context: upstream

upstream_conf:
  - syntax: upstream_conf;
  - context: location

least_conn:
  - syntax: least_conn;
  - context: upstream
