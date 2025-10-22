# JSON_MAP2
  A very basic example:
```
&json me=We got [art(%0)] %0: %1
```

  > think json_map(me/json, "foo")
  We got a string: foo

  > think json_map(me/json, \["foo"\, 5\], %r)
  We got a string: foo
  We got a number: 5

  > think json_map(me/json, \["foo"\, \["bar"\, 10\]\], %r)
  We got a string: foo
  We got an array: ["bar",10]

  See [json_map3] for a more complex example.
# JSON_MAP3
  A JSON pretty-printer, using nested calls to json_map() to handle nested
  JSON objects/arrays:
  > &pretty_json me=u(me/pretty_json_sub,,%0,,0,strmatch(%0,\\{*))
  > &pretty_json_sub me=repeat(%t,%3)[if(%4,json(string,%2):%b)][switch(%1,\{*,\{%r[json_map(%=,%1,\,%r,inc(%3),1)]%r[repeat(%t,%3)]\},\[*,\[%r[json_map(%=,%1,\,%r,inc(%3),0)]%r[repeat(%t,%3)]\],json(%0,%1))]

  > &json me=[5, null, ["nested!", 999, {"foo":5, "bar":"\"Whee\""}], 7]
  > th u(me/pretty_json, v(json)
  [
      5,
      #-1,
      [
          "nested!",
          999,
          {
              "foo": 5,
              "bar": "\"Whee\""
          }
      ],
      7
  ]

