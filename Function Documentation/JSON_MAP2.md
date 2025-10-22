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

