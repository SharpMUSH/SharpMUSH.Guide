# LOCALIZE()
`localize(<code>)`

  localize() saves the q-registers, evaluates its argument, and restores the registers afterwards. It has the same effect as ulocal(), but doesn't require setting the code into an attribute.

  Examples:
```sharp
say setr(0, Outside)-[setr(0, Inside)]-%q0
You say, "Outside-Inside-Inside"
```

    > &INSIDE me=setr(0,Inside)<br>
    > say setr(0, Outside)-[ulocal(INSIDE)]-%q0<br>
    You say, "Outside-Inside-Outside"

    > say setr(0, Outside)-[localize(setr(0, Inside))]-%q0<br>
    You say, "Outside-Inside-Outside"


**See Also:**
- [letq()]
- [setq()]
- [setr()]
- [r()]
- [ulocal()]
- [uldefault()]

