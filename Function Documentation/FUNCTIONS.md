# FUNCTIONS
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
# FUNCTIONS2
  There are two types of functions, "built-in functions" and "global user functions", also known as "@functions". You can get a complete list of functions on this game with "@list/functions".

  Built-in functions are written in the game hardcode, while @functions are written in softcode, and then made global with the "@function" command. Both are used in exactly the same manner. For more information on @functions, see [@function].


## See Also
- [MUSHCODE]
- [FUNCTION LIST]

