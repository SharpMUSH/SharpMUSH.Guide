# JSON()
`json(<type>[, <data>[, ..., <dataN>])`

  This function encodes `<data>` as a valid JSON (JavaScript Object Notation) message. `<type>` specifies the type of data to represent; valid `<type>`s and correspending `<data>`s are listed below.

  If any errors occur, json() returns a string starting with #-1.

  For `<type>`...   `<data>` should be...
  null            not given
  boolean         one arg, either "true", "1", "false" or "0"
  string          one arg, any string, including an empty string
  number          one arg, a valid number
  array           zero or more args, each themselves valid JSON
  object          zero or more pairs of arguments, the first a plain string (NOT a quoted JSON string), the second valid JSON of any type

  When `<type>` is "array" or "object", it's recommended that subsequent JSON arguments are created with nested calls to JSON().

  See [json2] for examples.

## See Also
- [oob()]
- [isjson()]
- [json_query()]
- [json_map()]
- [render()]

