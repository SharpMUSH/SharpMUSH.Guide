# @verb
`@verb <victim>=<actor>,<what>,<whatd>,<owhat>,<owhatd>,<awhat>,<args>`

This command provides a way to do user-defined verbs with associated @attr/@oattr/@aattr groups. Invoking it does the following:

`<actor>` sees the contents of `<victim>`'s `<what>` attribute, or `<whatd>` if `<victim>` doesn't have a `<what>`.
Everyone in the same room as `<actor>` sees the contents of `<victim>`'s `<owhat>` attribute, with `<actor>`'s name prepended, or `<owhatd>`, also with `<actor>`'s name prepended, if `<victim>` doesn't have an `<owhat>`.
`<victim>` executes the contents of his `<awhat>` attribute.

By supplying up to 29 `<args>`, you may pass those values on the stack (i.e. %0, %1, %2, etc. up through %9, and `r(0,args)` to `r(29,args)`).

See [@verb2].

