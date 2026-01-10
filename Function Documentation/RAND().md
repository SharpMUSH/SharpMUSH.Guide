# RAND()
`rand()`
`rand(<num>)`
`rand(<min>, <max>)`

  Return a random number.

  The first form returns a floating-point number in the range 0 <= n < 1.

  The second form returns an integer between 0 and `<num>`-1, inclusive (or between 0 and `<num>`+1, for negative `<num>`s).

  The third returns an integer between `<min>` and `<max>`, inclusive.

  If called with an invalid argument, rand() returns an error message
  beginning with #-1.


## See Also
- [randword()]

