# JSON PATHS

  json_mod() and the extract argument for json_query() take a path string that describes what part of a JSON object or array to act on. All paths start with a $ to indicate the base JSON value, and 0 or more specifiers in the following formats:

  .FIELD - the name of a field in a JSON object.
  [N]    - the Nth element of a JSON array. Note that the brackets need to be escaped.


## See Also
- [json_mod()]
- [json_query()]

