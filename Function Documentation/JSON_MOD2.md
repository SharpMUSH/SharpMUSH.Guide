# JSON_MOD2
 Examples:
```

    > say json_mod(json(object, a,1,b,2), patch, json(object, a,42))
    You say, "{"a":43,"b":2}"

    > @set me=json:[json(object, foo, "bar", baz, 12345, fnord, json(array, 1, 2, 3))]
    > say v(json)
    You say, "{"foo": "bar", "baz": 12345, "fnord": [1,2,3]}"
    > say json_mod(v(json), set, $.foo, false)
    You say, "{"foo:false,"baz":12345,"fnord":[1,2,3]}"
    > say json_mod(v(json), insert, $.quux, 1)
    You say, "{"foo:"bar","baz":12345,"fnord":[1,2,3],"quux":1}"
    > say json_mod(v(json), replace, $.quux, 1)
    You say, "{"foo:"bar","baz":12345,"fnord":[1,2,3]}"
    > say json_mod(v(json), remove, $.fnord)
    You say, "{"foo":"bar","baz":12345}"
    > say json_mod(json(array, json(object, id, 2), json(object, id, 1), sort, $.id)
    You say, "[{"id":1},{"id":2}]
```

