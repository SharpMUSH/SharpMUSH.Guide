# @SPEECHMOD
`@speechmod <object>[=<modifier>]`

When set, this attribute modifies everything `<object>` says, poses, semiposes and @emits. The original text spoken/posed/emitted is passed as %0, with %1 passed as " (for say), : (for pose), ; (for semipose) or | (for @emit).

If the attribute evaluates to an empty string, the original text will be used. Otherwise, the result of the attribute is used.

Example:
```
> @speechmod me=ucstr(%0)!
> say hello
You say, "HELLO!"
> pose waves
Bob WAVES!
```

```
> @speechmod me=switch(%1,",ucstr(%0),:,lcstr(%0))
> say Test
You say, "TEST"
> pose Test
Bob test
> @emit Test
Test
```


## See Also
- [say]
- [pose]
- [@emit]
- [@chatformat]
- [@pageformat]

