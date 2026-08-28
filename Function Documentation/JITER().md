# JITER()
`jiter(<attribute list>, <input>[, <osep>])`

  jiter() — juxtapositioned iteration — evaluates each attribute in the space-separated `<attribute list>` with the SAME `<input>` passed as %0, and returns the results side by side, joined by `<osep>` (default: one space).

  Where iter() and map() walk a list of data through one function, and chain() threads one value THROUGH a list of attributes (each step receiving the previous step's result), jiter() fans one input ACROSS a list of attributes — every step receives the original input. The classic use is computing the fields of a record from a single object.

  Each attribute is evaluated as by ufun(). Object names in the list may not contain spaces (use "me" or a dbref), since spaces separate the attributes.

  Example:
```sharp
> &FNAME me=name(%0)
> &FTYPE me=type(%0)
> say jiter(FNAME FTYPE, %#, |)
You say, "One|PLAYER"
```


**See Also:**
- [chain()]
- [map()]
- [iter()]
- [fold()]
- [ufun()]

