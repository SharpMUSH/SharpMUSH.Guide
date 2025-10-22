# SETQ4
  The registers set by setq() can be used in later commands in the same thread. That is, the registers are set to null on all $-commands, ^-commands, A-attribute triggers, etc., but are then retained from that point forward through the execution of all your code. Code branches like @wait and @switch retain the register values from the time of the branch.

  Example:
```
say setr(what,foo); @wait 0=say %q<what>; say setr(what,bar)
Object says "foo"
Object says "bar"
Object says "foo"
```

