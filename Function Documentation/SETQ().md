# SETQ()
# SETR()
`setq(<register1>, <string1>[, ... , <registerN>, <stringN>])`
`setr(<register1>, <string1>[, ... , <registerN>, <stringN>])`

  The setq() and setr() functions are used to copy strings into local registers assigned arbitrary names (Much like variables in other programming languages.) setq() returns a null string; it is a purely "side effect" function. setr() returns the value stored. Multiple registers can be assigned with a single setq() or setr(), with additional pairs of registers and values in the function's arguments. In this case, setr() returns the value stored in the first register listed. All arguments are evaluated before any registers are set; if you want to use the result of setting one register in setting another, use multiple setq()s.

  Registers set via setq() or setr() can be accessed via the r() function. Single-character registers can also be accessed via the %qN substitution, and ones with longer names via %q`<NAME>` (Note that the <>'s are required.) Attempting to access a register that hasn't been set results in an empty string.

  Register names are case insensitive: setq(A, foo) and setq(a, foo) both set the same register, and %qA and %qa both fetch its value.

  See [setq2] for more on limits, or [setq3] for examples.

## See Also
- [r()]
- [listq()]
- [unsetq()]
- [letq()]
- [localize()]
- [ulocal()]
- [registers()]

