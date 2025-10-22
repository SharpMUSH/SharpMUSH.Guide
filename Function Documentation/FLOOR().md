# FLOOR()
`round(<number>, <places>[, <pad>])`
`floor(<number>)`
`ceil(<number>)`

  round() rounds `<number>` to `<places>` decimal places. `<places>` must be between 0 and config(float_precision). If the optional `<pad>` argument is true, the result will be padded with 0s if it would otherwise have fewer than `<places>` digits after the decimal point.

  floor() rounds `<number>` down, and ceil() rounds `<number>` up, to 0 decimal places.

  Examples:
```
think round(3.14159, 2)
3.14
think round(3.5, 3, 1)
3.500
think ceil(3.14159)
4
think floor(3.14159)
3
```


## See Also
- [bound()]
- [trunc()]

