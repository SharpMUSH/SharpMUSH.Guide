# JSON_QUERY3
 Examples:
```

    > @set me=json:[json(object, foo, "bar", baz, 12345, fnord, json(array, 1, 2, 3))]
    > say v(json)
    You say, "{"foo": "bar", "baz": 12345, "fnord": [1,2,3]}"
    > say json_query(v(json), exists, foo)
    You say, "1"
    > say json_query(v(json), exists, bar)
    You say, "0"
    > say json_query(v(json), get, baz)
    You say, "12345"
    > say json_query(v(json), get, fnord, 1)
    You say, "2"
    > say json_query(v(json), extract, $.fnord\[1\])
    You say, "2"
```

