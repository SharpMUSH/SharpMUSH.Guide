# STEP()
`step([<obj>/]<attr>, <list>, <step>[, <delim>[, <osep>]])`

  This function is similar to map(), except you can pass up to 30 elements of the list at a time, in %0-%9 and v(10)-v(29). `<step>` must be between 1 and 30, with a step of 1 equivalent to map(). If the elements of the list can't be split up evenly, the last evaluation will run with some of the registers unset; the %+ substitution or the registers() function can be used to see which/how many are set.

  Example:
```
&foo me=%0 - %1 - %2
think step(foo, a b c d e, 3,, %r)
a - b - c
d - e -
```

  Using registers() to avoid extra delimiters:
    > &foo me=iter(registers(,args),v(%i0),,%b-%b)
    > think step(foo, a b c d e, 3,, %r)
    a - b - c
    d - e


## See Also
- [map()]
- [iter()]
- [fold()]
- [anonymous attributes]
- [registers()]

