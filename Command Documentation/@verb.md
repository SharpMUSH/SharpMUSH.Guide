# @verb
`@verb <victim>=<actor>,<what>,<whatd>,<owhat>,<owhatd>,<awhat>,<args>`

This command provides a way to do user-defined verbs with associated @attr/@oattr/@aattr groups. Invoking it does the following:

`<actor>` sees the contents of `<victim>`'s `<what>` attribute, or `<whatd>` if `<victim>` doesn't have a `<what>`.
Everyone in the same room as `<actor>` sees the contents of `<victim>`'s `<owhat>` attribute, with `<actor>`'s name prepended, or `<owhatd>`, also with `<actor>`'s name prepended, if `<victim>` doesn't have an `<owhat>`.
`<victim>` executes the contents of his `<awhat>` attribute.

By supplying up to 29 `<args>`, you may pass those values on the stack (i.e. %0, %1, %2, etc. up through %9, and `r(0,args)` to `r(29,args)`).

See [@verb2].
# @verb2
In order to use this command, at least one of the following criterion must apply:
1. The object which did the @verb is a wizard.
2. The object which did the @verb controls both `<actor>` and `<victim>`
3. The thing which triggered the @verb (such as through a $-command on the object which did the @verb) must be `<actor>`, AND the object which did the @verb must be either privileged or control `<victim>` or `<victim>` must be VISUAL.

See [@verb3] for examples.

## See Also
- [USER-DEFINED COMMANDS]
- [STACK]
- [VERBS]
- [@trigger]
# @verb3
Examples:
```
> &VERB_EXAMPLE Test Object=$test:@verb me=%#,TEST,You just tested.,OTEST,just tested the example.,ATEST,%n
> test
You just tested.
[others see] Cyclonus just tested the example.
```

```
> &TEST Test Object=You have just tested this object!
> &ATEST Test Object=@emit %0 has failed!
> &OTEST Test Object=tests test object.
> test
You have just tested this object!
[others see] Cyclonus tests test object.
Cyclonus has failed!
```

See [@verb4] for another example.
# @verb4
In order to make this into a global command that anyone can use, we need to put it on a WIZARD object in the Master Room.
```
> &DO_TEST Global=$test *: @assert setr(0,locate(%#,%0,n))=@pemit %#=I don't see that here. ; @verb %q0=%#, TEST, You test [capstr(%0)]., OTEST,tests [capstr(%0)]. ,ATEST
```

```
> &TEST Example=You test this fun example.
> &ATEST Example=POSE has been tested!
> test example
You test this fun example.
[others see] You test Example.
Example has been tested!
```

