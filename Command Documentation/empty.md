# empty
`empty <object>`

The empty command attempts to move all the contents of `<object>` to `<object>`'s location. You must either be holding `<object>` (in which case the command is like getting `<object>`'s `<item>` for each item) or be in the same location as `<object>` (in which case the command is like getting `<object>`'s `<item>` and dropping it).

The empty command assumes that all `<object>`'s items pass through the hands of the player running the command. Therefore, the same kinds of locks and messages that are applied in a possessive get (and, possibly, a drop) are applied to each item in `<object>`. It is therefore possible to fail to empty an object for many reasons, even when you could do so using "extraphysical" methods (teleporting items, forcing the object to drop them, or forcing the items to leave the object.)


## See Also
- [get]
- [drop]

