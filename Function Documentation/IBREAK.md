# IBREAK()
`ibreak([<level>])`

  The ibreak() function stops an iter() from running at the end of the current loop. When used in nested iter()s, you can give a `<level>` to specify how many iter()s to break from. iter() will stop evaluating at the end of the current loop, and NOT immediately after ibreak() is called.

  Examples:
```
say iter(1 2 3 4 5,switch(%i0,3,ibreak())Test %i0!)
You say, "Test 1! Test 2! Test 3!"
```

    > say iter(1 2 3 4 5,switch(%i0,3,ibreak(),Test %i0!))
    You say, "Test 1! Test 2! "

    > say iter(a b c, iter(1 2 3, switch(%i0%i1, 2c, ibreak(2), %$0)))
    You say, "1a 2a 3a 1b 2b 3b 1c "


## See Also
- [iter()]
- [itext()]
- [inum()]
- [ilev()]

