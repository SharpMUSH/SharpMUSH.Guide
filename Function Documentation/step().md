# step()
`step([<obj>/]<attr>, <list>, <step>[, <delim>[, <osep>]])`

  This function is similar to map(), except you can pass up to 30 elements of the list at a time, in %0-%9 and %`<10>`-%`<29>` (or r(10,args)-r(29,args)). `<step>` must be between 1 and 30. A step of 1 calls the attribute once per element with %1 unset. If the elements of the list can't be split up evenly, the last evaluation will run with some of the registers unset; the %+ substitution or the registers() function can be used to see which/how many are set.

  Example:
```sharp
&foo me=%0 - %1 - %2
think step(foo, a b c d e, 3,, %r)
a - b - c
d - e -
```

  Using registers() to avoid extra delimiters:<br>
    > &foo me=iter(sort(registers(,args),n),r(%i0,args),,%b-%b)<br>
    > think step(foo, a b c d e, 3,, %r)<br>
    a - b - c<br>
    d - e


::: seealso
- [STEPARGS()]
- [MAP()]
- [iter()]
- [fold()]
- [anonymous attributes]
- [REGISTERS()]
:::

