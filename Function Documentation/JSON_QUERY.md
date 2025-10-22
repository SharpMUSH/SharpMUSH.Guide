# JSON_QUERY()
`json_query(<json>[, <action>[, <arg>, ...<argN>]])`

  This function returns information about JSON data. `<json>` should be a valid JSON string, as returned by the json() function. There are 5 possible `<action>`s:

  Action...    Returns...
  type         The type of `<json>`, one of string, number, boolean, null, array or object. Default if no `<action>` is given.
  size         The size of `<json>`; this is 0 for null objects, 1 for strings/numbers/booleans, the number of array elements, or the number of key/value pairs for objects.
  exists       For arrays and objects, returns 1 if there is an object found by following the path specified in `<arg>`... and 0 if not. If the current arg is an integer and the current json element is an array, uses the `<arg>`th index of the array (Starting at 0) as the new current element. Otherwise, if the current json element is an object, treats the current `<arg>` as a key into the object and its value as the new current element.  Returns #-1 for other types.
  get          For arrays and objects, returns the json element found by following the path laid out in `<args>`... as described above. If no such element exists, returns an empty string. Returns #-1 for other JSON types.
  extract      Like get, but takes a single combined path arg as described in [json paths]. Some caveats: Returns 0 for false, 1 for true, and strings are unquoted.
  unescape     Only valid for JSON strings; returns the unescaped form of `<json>`.

  See [json_query2] for examples.

## See Also
- [json()]
- [json_map()]

