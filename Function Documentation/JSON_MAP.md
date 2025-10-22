# JSON_MAP()
`json_map([<object>/]<attribute>, <json>[, <osep>[, <arg>[, ..., <argN>]]])`

  This function iterates over a JSON string, calling the specified `<attribute>` for each element of the JSON. If `<json>` represents a basic JSON type (null, boolean, string or number), the attribute will be called once. For arrays and objects, it will be called once for each element of the array/object.

  When the attribute is called, %0 will be the type of the json object and %1 will be the value. When `<json>` is an array, %2 will be the array position of the current element. For objects, %2 will be the label of the current element. You can pass user-specified arguments to the attribute; the first `<arg>` will be available as %3, the second as %4, and so on.

  `<osep>` defaults to a space.

  See [json_map2] for examples.

## See Also
- [json()]
- [json_query()]

