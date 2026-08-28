# JSON_ARRAY()
`json_array(<list>[, <delimiter>])`

  This function assembles a MUSH `<list>` (separated by `<delimiter>`, which defaults to a space) of already-formed JSON values into a JSON array. Each element must itself be valid JSON — typically produced with json(type, value) — and is placed into the array unchanged. json_array() does NOT quote or re-escape its elements.

  Unlike json(array, ...), which takes each element as a separate argument, json_array() takes a single list, so it composes naturally with iter(). If any element is not valid JSON, json_array() returns a #-1 BAD ARGUMENT error.

  See [json_array2] for examples.

**See Also:**
- [json()]
- [json_map()]
- [oob()]

