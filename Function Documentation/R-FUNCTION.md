# R()
# %q
# R-FUNCTION
`r(<register>[, <type>])`

  The r() function can be used to access registers. It can retrieve the value of q-registers set with setq() and related functions, as well as the 30 stack values (the first ten of which are also available via %0-%9), and also iter() and switch() context (also available through itext() and stext(), respectively). The registers() function can be used to obtain a list of available registers.

  `<type>` defaults to "qregisters", and must be one of:

    qregisters - registers set with setq(), setr() and similar functions
    args       - the stack, usually accessed via %0-%9. There are up to 30 stack registers, plus named stack registers from regexp $-commands
    iter       - itext() context from iter() or @dolist. Must be an int, or "L" for the outermost itext().
    switch     - stext() context from switch() or @switch. Must be an int, or "L" for the outermost stext()
    regexp     - regexp capture names from re*() regexp functions

  qregisters can also be accessed via the %qX (for one-char register names) or %q`<X>` (for registers with longer names) substitutions.


## See Also
- [setq()]
- [letq()]
- [listq()]
- [unsetq()]
- [registers()]
- [v()]
- [itext()]
- [stext()]
- [ilev()]
- [slev()]

