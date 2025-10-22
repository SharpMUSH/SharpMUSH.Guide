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

