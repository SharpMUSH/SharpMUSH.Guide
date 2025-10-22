# SETQ2
  Register names follow the same rules for attribute names, but they must be shorter than 64 characters in length.

  Register names other than a-z or 0-9 have a per-localize limit, defined with @config max_named_qregs. If setq or setr tries to set a named q-register and it exceeds the limit, it will return the string "#-1 TOO MANY REGISTERS". This is the only time setq will return a string. setq() and setr() with registers a-z or 0-9 have nothing to worry about.

  The maximum number of q-registers you can have set is configured via @config max_attrs_per_obj. That number is for the total number of q-registers set in a queue entry: Including across localize()d calls. Beyond that count, you can only use single character registers (a-z 0-9). Attempts to create a new register will simply fail silently, with the exception of setq().

  See [setq3] for examples.

