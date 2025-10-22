# @dolist
`@dolist[/<switches>][/notify][/delimit <delim>] <list>=<action list>`

@dolist queues the `<action list>` for execution once for each element in `<list>`. `<list>` is space-separated, unless the `/delimit` switch is given, in which case it is a `<delim>`-separated list.

The %i0 substitution, or the function itext(0), can be used in the `<action list>` to get the current element of the `<list>`, and the inum(0) function returns the position of the current element. ilev() returns the nesting depth of @dolists. The %iL substitution returns the itext() for the outermost @dolist, and is equivilent to itext(ilev()).

For backwards compatability, the string "##" is also replaced with the current element of the list, and "#@" the current position. However, these replacements occur BEFORE evaluation, which means that they always return the values for the outermost @dolist, and are thus unsuitable for nesting. It also makes them unsafe for use on user-input or strings which may contain special characters; using the %i* sub or itext() instead is very strongly recommended.

See [@dolist2].
# @dolist2
If the `/notify` switch is given, the command "@notify me" is queued after all copies of `<action list>` have been queued. This is useful for object synchronization with semaphores.

If the `/inline` switch is given, @dolist will run the new action lists instantly, instead of queueing them to be run later.

When using `@dolist/inline`, an @break in an `<action list>` will stop the calling action list (and any further `<action list>`s) from running. Each `<action list>` will also be able to see/alter the q-registers for the calling action list. The following switches can be used with `/inline` to alter this behaviour:
- /nobreak: @breaks in `<action list>` do not effect to the calling action list
- /localize: q-registers are saved before each `<action>` is run, and restored after it completes
- /clearreg: q-registers are all reset before each `<action>` is run. Most useful when used in combination with /localize.

`@dolist/inplace` is an alias for `@dolist/inline/nobreak/localize`.

See [@dolist3] for examples.

## See Also
- [iter()]
- [itext()]
- [map()]
- [@notify]
- [SEMAPHORES]
- [ACTION LISTS]
# @dolist3
Examples:
```
> @dolist a b c=say %i0 is number [inum(0)]
You say, "a is number 1"
You say, "b is number 2"
You say, "c is number 3"
```

```
> &test me=$test: say Starting ; @wait me={say Done} ;
                  @dolist/notify a b c=say %i0 is [inum(0)]
> test
You say, "Starting"
You say, "a is 1"
You say, "b is 2"
You say, "c is 3"
Notified.
You say, "Done"
```

```
> @dolist a b c=@dolist 1 2 3=say %iL/%i0
You say, "a/1"
You say, "a/2"
You say, "a/3"
You say, "b/1"
You say, "b/2"
You say, "b/3"
You say, "c/1"
You say, "c/2"
You say, "c/3"
```

