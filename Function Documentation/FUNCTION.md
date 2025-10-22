# FUNCTION
  Functions are specialized commands used to manipulate strings and other input. Functions take the general form: `[FUNCTION(<input>)]`

  The brackets are used to delimit and force evaluation of the function (or nested functions). The brackets can also be used to group functions for the purposes of string concatenation. In general, more than one pair of brackets is not required, but you can nest an arbitrary number of brackets.

  Examples:
```
say first(rest(This is a nice day))
You say, "is"
```

    > @va me=This is a
    > @vb me=nice day
    > say first(rest(v(va) [v(vb)]))
    You say, "is"

  See [functions2] for more.

