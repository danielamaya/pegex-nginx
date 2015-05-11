upstream:
  - syntax: upstream name { ... }
  - context: stream

server:
  - syntax: server address [ parameters ];
  - context: upstream

match:
  - syntax: match name { ... }
  - context: stream

http:
  - syntax: http { ... }
  - context: main

server:
  - syntax: server { ... }
  - context: stream

stream:
  - syntax: stream { ... }
  - context: main

mail:
  - syntax: mail { ... }
  - context: main

server:
  - syntax: server { ... }
  - context: mail

limit_except:
  - syntax: limit_except method... { ... }
  - context: location

location:
  - syntax: location [ = | ~ | ~* | ^~ ] uri { ... } location @ name { ... }
  - context: server, location

server:
  - syntax: server { ... }
  - context: http

types:
  - syntax: types { ... }
  - context: http, server, location

charset_map:
  - syntax: charset_map charset1 charset2 { ... }
  - context: http

geo:
  - syntax: geo [ $address ] $variable { ... }
  - context: http

map:
  - syntax: map string $variable { ... }
  - context: http

if:
  - syntax: if ( condition ) { ... }
  - context: server, location

upstream:
  - syntax: upstream name { ... }
  - context: http

match:
  - syntax: match name { ... }
  - context: http
