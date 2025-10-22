# FOLD2

  Examples:
```
&REP_NUM test=%0[repeat(%1,%1)]
say fold(test/rep_num,1 2 3 4 5)
You say, "122333444455555"
say fold(test/rep_num,1 2 3 4 5,List:)
You say, "List:122333444455555"
```

    > &ADD_NUMS test=add(%0,%1)
    > say fold(test/add_nums,1 2 3 4 5)
    You say, "15"

  If your list uses a delimiter, you need to give a `<base case>`. This can be a problem for dynamically generated lists. One solution is to use a register and pop the first element off the list. For example:
```
&GEN_LIST test=lnum(1,rand(5,10),|)
&ADD_NUMS test=add(%0,%1)
say letq(fl, u(gen_list), fold(test/add_nums, rest(%q<fl>,|), first(%q<fl>,|), |))
You say, "36"
```


## See Also
- [anonymous attributes]

