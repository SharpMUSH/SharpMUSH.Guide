# SWITCH2
  Examples:
```
say switch(test, *a*, foo, *b*, bar, *t*, neat, baz)
You say, "neat"
```

    > say switchall(ack, *a*, foo, *b*, bar, *c*, neat, baz)
    You say, "fooneat"

    > say switch(moof, *a*, foo, *b*, bar, *t*, neat, baz)
    You say, "baz"

    > say switch(moof, *a*, foo, *b*, bar, *t*, neat, #$)
    You say, "moof"

    > say case(moof, *f, foo, moof, bar, baz)
    You say, "bar"

    > say switch(foo bazaar,f?o b*r,$0-$1)
    You say, "o-azaa"

