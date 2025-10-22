# ITER2
  Examples:
```
say iter(This is a test string., strlen(%i0))
You say, "4 2 1 4 7"
```

    > say iter(lnum(5), mul(add(%i0,#@),2))
    You say, "2 6 10 14 18"

    > say iter(lexits(here), name(%i0) (owned by [name(owner(%i0))]))
    You say, "South (owned by Claudia) North (owned by Roy)"

    > &STRLEN_FN me=strlen(%0)
    > say iter(This is a test string., u(STRLEN_FN, %i0))
    You say, "4 2 1 4 7"

  Since this example just evaluates another attribute for each element of the list, it can be done more efficiently using map():
    > say map(strlen_fun, This is a test string.)

    > say iter(lnum(3), %i0, ,%r)
    You say, "0
    1
    2"

  An example of why using ## instead of %i0 can be insecure, and lead to unintended evaluation:
    > say iter((1\,1),add##)
    You say, "2"
    > say iter((1\,1),add%i0)
    You say, "add(1,1)"

