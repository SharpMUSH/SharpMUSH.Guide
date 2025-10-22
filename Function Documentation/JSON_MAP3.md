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

