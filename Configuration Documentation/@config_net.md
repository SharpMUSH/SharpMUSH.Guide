# @config net
Networking and connection-related options.

- `mud_name=<string>`: The name of the mush for mudname() and @version and the like.
- `mud_url=<string>`: If this is set, the welcome message for the mush is bracketed in <!-- ... --> for all clients, and web browsers are redirected to the url described in mud_url.
- `http_handler=<dbref/number>`: If this is set, support HTTP requests to MUSH port.
- `http_per_second=<number>`: If this is set, limit HTTP requests allowed per second.
- `use_dns=<boolean>`: Are IP addresses resolved into hostnames?
- `logins=<boolean>`: Are mortal logins enabled?
- `player_creation=<boolean>`: Can CREATE be used from the login screen?
- `guests=<boolean>`: Are guest logins allowed?
- `pueblo=<boolean>`: Is Pueblo support turned on?
- `sql_platform=<string>`: What kind of SQL server are we using? ("mysql", "postgreql", "sqlite" or "disabled")
- `sql_host=<string>`: What is the hostname or ip address of the SQL server
- `ssl_require_client_cert=<boolean>`: Are client certificates verified in SSL connections?


