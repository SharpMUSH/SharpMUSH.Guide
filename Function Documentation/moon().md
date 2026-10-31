# moon()
`moon([<seconds>[, <numeric>]])`

  Describes the phase of the moon at `<seconds>` (a time as secs() gives it), or now. The answer is one of these, with the percentage of the moon that is lit:

- `The Moon is New`
- `The Moon is Waxing Crescent (12% of Full)`
- `The Moon is Waxing Half (50% of Full)`
- `The Moon is Waxing Gibbous (80% of Full)`
- `The Moon is Full`
- `The Moon is Waning Gibbous (80% of Full)`, and so on back to New.

  With `<numeric>` true, it returns just the percentage, positive while the moon is waxing and negative while it is waning.

  The phase is worked out as RhostMUSH does, from where the sun and moon are twelve hours after `<seconds>`; it is waxing when more is lit a further half day on. Over 99.4% lit is Full, under 0.5% is New, and between 49.7% and 50.3% is Half.

  Examples:
```sharp
think moon(947172800)
The Moon is New
think moon(948382400)
The Moon is Full
think moon(999999999)
The Moon is Waning Gibbous (72% of Full)
think moon(948000000, 1)
74
```

::: seealso
- [SECS()]
- [TIME()]
:::

