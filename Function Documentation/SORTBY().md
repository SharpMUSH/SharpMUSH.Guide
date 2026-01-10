# SORTBY()
`sortby([<obj>/]<attrib>, <list>[, <delimiter>[, <output separator>]])`

  This sorts an arbitrary list according to the ufun `<obj>`/`<attrib>`. This ufun should compare two arbitrary elements, %0 and %1, and return zero (equal), a negative integer (element 1 is less than element 2) or a positive integer (element 1 is greater than element 2), similar to the comp() function.

  A simple example, which imitates a normal alphabetic sort:
    > &ALPHASORT test=comp(%0,%1)
    > say sortby(test/ALPHASORT,foo bar baz)
    You say, "bar baz foo"

  A slightly more complicated sort. #1 is "God", #2 is "Amby", "#3" is "Bob":
    > &NAMESORT me=comp(name(%0),name(%1))
    > say sortby(NAMESORT,#1 #2 #3)
    You say, "#2 #3 #1"

  Warning: the function invocation limit applies to this function. If this limit is exceeded, the function will fail _silently_. List and function sizes should be kept reasonable.


## See Also
- [anonymous attributes]
- [sorting]
- [sort()]
- [sortkey()]

