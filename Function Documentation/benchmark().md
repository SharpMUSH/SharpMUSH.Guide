# benchmark()
`benchmark(<expression>, <number>[, <sendto>])`

  Evaluates `<expression>` `<number>` times, and returns the average, minimum, and maximum time one evaluation took, in microseconds. `<number>` must be at least 1.

  If a `<sendto>` object is given, benchmark() instead sends the times to `<sendto>`, and returns the result of the last evaluation of `<expression>`. You must be able to @pemit `<sendto>`; if you can't, benchmark() returns #-1 without evaluating anything.

  Examples:
```sharp
think benchmark(iter(lnum(1,100), %i0), 200)
think benchmark(add(1,2), 10, me)
```
  Output: the first prints the timings, such as "Average: 110.27   Min: 106   Max: 281". The second prints 3, and you are sent a line of timings in the same form.

