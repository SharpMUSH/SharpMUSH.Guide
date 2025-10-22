# JSON_QUERY2
  Examples:
```

    > say json_query(true)
    You say, "boolean"

    > @set me=json:[json(array, "abc", "def", "gh\\"i")]
    > say v(json)
    You say, "["abc", "def", "gh\"i"]"

    > say json_query(v(json))
    You say, "array"
    > say json_query(v(json), size)
    You say, "3"
    > say json_query(v(json), get, 0)
    You say, ""abc""
    > say json_query(v(json), extract, $.\[2\])
    You say, "gh"i"
    > say json_query(json_query(v(json), get, 2), unescape)
    You say, "gh"i"
```

 See [json_query3] for more examples.

