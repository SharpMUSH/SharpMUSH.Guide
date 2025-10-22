# BENCHMARK()
`benchmark(<expression>, <number>[, <sendto>])`

  Evaluates `<expression>` `<number>` times, and returns the average, minimum, and maximum time it took to evaluate `<expression>` in microseconds. If a `<sendto>` argument is given, benchmark() instead pemits the times to the object `<sendto>`, and returns the result of the last evaluation of `<expression>`.

  Example:
```
think benchmark(iter(lnum(1,100), ##), 200)
Average: 520.47   Min: 340   Max: 1382
think benchmark(iter(lnum(1,100), %i0), 200)
Average: 110.27   Min: 106   Max: 281
```

