# @oemit
`@oemit[/<switch>] [<room>/]<object> [... <object>]=<message>`

This command shows `<message>` to everyone in the location of `<object>` EXCEPT `<object>`. A list of objects can be given, in which case the message is shown in the locations of each, to everyone but those objects. If `<object>` contains a space, it should be enclosed in double-quotes.

If `<room>` is specified (usually as a dbref), this command shows `<message>` to everyone in `<room>` except for the given `<object>`s. In this case, each `<object>` is matched relative to `<room>`. If no matching `<object>`s are found in `<room>`, this is the equivilent of `@remit <room>=<message>`.

The `/noeval` switch prevents the MUSH from evaluating `<message>`.
The `/spoof` switch causes nospoof notifications to show the enactor's dbref instead of the executor's dbref, and requires control over the enactor or the Can_spoof power.

See [@oemit2] for examples.

## See Also
- [@emit]
- [@pemit]
- [@nsoemit]
- [oemit()]
- [nsoemit()]
- [NOSPOOF]
- [SPOOFING]
# @oemit2
Examples:
Show a message in the locations of players Bob and Fred, to everyone except those two players:
```
> @oemit *Bob *Fred=Bob throws a paper aeroplane at Fred.
```

Show a message in #50 to everyone except the object 'Spy'.
```
> @oemit #50/Spy=Sssh!
```

Show a message to everyone in your current location, except the 2nd object called 'foo'.
```
> @oemit %L/"2nd foo"=bar
```

