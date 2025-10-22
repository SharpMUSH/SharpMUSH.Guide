# SETQ2
  Register names follow the same rules for attribute names, but they must be shorter than 64 characters in length.

  Register names other than a-z or 0-9 have a per-localize limit, defined with @config max_named_qregs. If setq or setr tries to set a named q-register and it exceeds the limit, it will return the string "#-1 TOO MANY REGISTERS". This is the only time setq will return a string. setq() and setr() with registers a-z or 0-9 have nothing to worry about.

  The maximum number of q-registers you can have set is configured via @config max_attrs_per_obj. That number is for the total number of q-registers set in a queue entry: Including across localize()d calls. Beyond that count, you can only use single character registers (a-z 0-9). Attempts to create a new register will simply fail silently, with the exception of setq().

  See [setq3] for examples.
# SETQ3
  The setq() function is probably best used at the start of the string being manipulated, such as in the following example:

    > &TEST object=strlen(%0)
    > &CMD object=$test *: say setq(0,u(TEST,%0))Test. %0 has length %q0.
    > test Foo
    Object says, "Test. Foo has length 3."

  In this case, it is a waste to use setq(), since we only use the function result once, but if TEST was a complex function being used multiple times within the same command, it would be much more efficient to use the local register, since TEST would then only be evaluated once. setq() can thus be used to improve the readability of MUSH code, as well as to cut down the amount of time needed to do complex evaluations.

  Swapping the contents of registers can be done without writing to temporary registers by setting both registers at once, so the code:

  > think setq(0,foo,one,bar)%q0%q`<one>` - [setq(0,r(one),one,%q0)]%q0%q`<one>`
  foobar - barfoo

  See [setq4] for scoping rules of setq().
# SETQ4
  The registers set by setq() can be used in later commands in the same thread. That is, the registers are set to null on all $-commands, ^-commands, A-attribute triggers, etc., but are then retained from that point forward through the execution of all your code. Code branches like @wait and @switch retain the register values from the time of the branch.

  Example:
```
say setr(what,foo); @wait 0=say %q<what>; say setr(what,bar)
Object says "foo"
Object says "bar"
Object says "foo"
```

