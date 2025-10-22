# LIT()
`lit(<string>)`

  This function returns `<string>` literally - without even squishing spaces, and without evaluating *anything*. This can be useful for writing ASCII maps with spaces or whatever.

  It can be a bit tricky to get a literal string with spaces into an attrib, however, since spaces are usually squished in setting an attribute. This example illustrates how to make it work:

    > @va me=$test: think {[lit(near       far)]}
    Set.
    > ex me/va
    VA [#1]: $test: think {[lit(near       far)]}
    > test
    near       far

  Leaving out the {}'s will not work in the above.


## See Also
- [decompose()]

