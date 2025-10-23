# Function Snippets
## List Grab
Contents to store
```
elements(%0,lmath(min,firstof(filterbool(#lambda/%%0,iter(%1,match(%0,%i0,%2),%2)),0)),%2)
```

### Call
> `u(listgrab, <list>, <patternlist>, [delimiter])`
> => result

### Expected behavior
Extension of grab() which returns the first word in <list> which matches any of the patterns in <patternlist> (%1). 
Both <list> and <patternlist> must use the same [delimiter], if specified (defaults to space.)

### Example usage:
`think listgrab(foo bar baz qux,ba* qu*)`
> bar

## All List Grab
Contents to store
```
elements(%0,lmatch(%1,%2,strfirstof(%3,%b)),strfirstof(%3,%b),strfirstof(%4,%b))
```

### Call
> `u(agrab, <values>, <columninfo>, <columnnames>, <delim>, <osep>)`
> columnvalues

### Documentation
This function allows you to grab the values in a delimited <values> list, by giving the function a <columninfo> for its second attribute that contains the aliases or names of the locations of the values. The <columnnames> list then withdraws the values found at the locations in the <values> list, corresponding to the names found in <columninfo>. The <delim>item is the delimiter, and the <osep>is the outseperator. 

### Notes
lmatch is not a standard function. See the 'List Match' example for lmatch.

### Example usage
`think u(agrab,-5 6 88 3,DEX AGI MAG FIRE,MAG DEX)`
> 88 -5 

## List Match
Contents to store
```
iter(%1,match(%0,%i0,strfirstof(%2,%b)),strfirstof(%2,%b),strfirstof(%3,%b))
```

### Call
> `u(lmatch, <originlist>, <searchitemlist>, <delim>, <osep>)`
> foundlist

### Documentation
This function compares <searchitemlist> to <originlist>, and returns the locations of the found items from <searchitemlist> in <originlist> as FOUNDLIST. The <delim> and <osep> are delimiter and Out Seperator.