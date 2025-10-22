# @HTTP
`@http <obj>/<attr>=<URL>`
`@http/delete <obj>/<att>=<URL>[,<data>]`
`@http/post <obj>/<att>=<URL>[,<data>]`
`@http/put <obj>/<att>=<URL>[,<data>]`

Attempts to retrieve URL with a HTTP GET request, and upon doing so, queues the action list in `<obj>/<attr>`. The body of the reply from the remote web server is passed as %0, with the HTTP status in %q`<status>` and the Content-Type header in %q`<content-type>`. Any commas in the URL need to be escaped.

The POST switch makes it do a HTTP POST request instead of the default GET, (And PUT and DELETE do the obvious). With these, the 'content-type' q-register controls the type of data; it defaults to 'application/x-www-form-urlencoded'.` If it contains the string "charset=utf-8", `<data>` will be converted to UTF-8, otherwise it is assumed to be Latin-1.

If the q-register 'userpass' is set when running @http, it should hold a string of the form user:password and will be used if needed for HTTP authentication.

Restricted to objects set Wizard or with the Can_HTTP @Power.

Note: The response body has the same 8k limit as other MUSH strings. Anything longer is truncated; this command is best used with APIs that provide short responses.


## See Also
- [urlencode()]
- [urldecode()]

