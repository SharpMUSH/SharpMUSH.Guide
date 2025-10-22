# @include
`@include[/<switches>] <object>/<attribute>[=<arg1>,<arg2>,...]`

@include inserts the contents of the attribute provided into the action list in-place, without adding a new queue entry. It is useful to avoid having to copy the same code into multiple commands. The attribute to be included must be visible to the enactor.

Example:
```
&CHECKS me=@assert [orflags(%#,Wr)]; @break [gt(words(lwho()),%0)]
&CMD1 me=$cmd *: @include me/CHECKS; @pemit %#=You passed.
&CMD2 me=$othercmd *: @include me/CHECKS; @@ Do something else...
```

When including attribute contents, @include ignores any ^...: or $...: at the start, so the CHECKS attribute above could also be written like this, to allow for "unit testing":
```
&CHECKS me=$testchk *: @assert [orflags(%#,Wr)]; @break [gt(words(lwho()),%0)]
```

The including environment (%0-%9) is available to the included actions. If arguments are provided to @include, they are substituted for the environment's %0, %1, etc. while the included action list is running. The environment is then restored after the @include.

See [@include2].
# @include2
@include takes the following switches to alter its behaviour:
- /nobreak: Prevents an @break/@assert in the included attribute from breaking the including action list.
- /localize: Saves all q-registers before including the attribute, and restores them after including the attribute.
- /clearregs: Clears all q-registers before including the attribute.


## See Also
- [@trigger]
- [ufun()]
- [@break]

