# MIX2
  Examples of mix():

    > &add_nums me=add(%0, %1)
    > say mix(add_nums,1 2 3 4 5, 2 4 6 8 10)
    You say, "3 6 9 12 15"

    > &lengths me=strlen(%0) and [strlen(%1)].
    > say mix(lengths, some random, words)
    You say, "4 and 5. 6 and 0."

    > &add_nums me=lmath(add, %0 %1 %2)
    > say mix(add_nums, 1:2:3, 4:5:6, 7:8:9, :)
    You say, "12:15:18"


## See Also
- [anonymous attributes]
- [map()]
- [step()]

