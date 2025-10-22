# LETQ()
`letq([<reg1>, <value1>[, ... , <regN>, <valueN>], <expr>)`

  letq() saves the current values of the given q-`<reg>`isters, sets them to new `<value>`s, evaluates `<expr>` and then restores the saved registers. It does not restore registers that are not listed. None of the values can see the updated contents of the registers -- they are only visible to `<expr>`.

  It returns the result of `<expr>`.

  Examples:
```
think setr(A, 1):[letq(A, 2, %qA)]:%qA
1:2:1
think setr(A, 1)[setr(B,1)]:[letq(A, 2, %qA[setr(B,2)])]:%qA%qB
11:22:12
```


## See Also
- [setq()]
- [setr()]
- [unsetq()]
- [listq()]
- [localize()]
- [ulocal()]
- [r()]

