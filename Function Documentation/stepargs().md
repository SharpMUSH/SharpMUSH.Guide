# stepargs()
`stepargs([<obj>/]<attr>, <list>, <names>[, <delim>[, <osep>]])`

  stepargs() is step() with named arguments. `<names>` is a space-separated list of up to 30 names; the list is taken that many elements at a time, and each element is passed under the name in its place, read with %`\<name\>` or r(`<name>`, args). The attribute gets no %0-%9. If the elements can't be split up evenly, the last names of the last call are unset. A name may appear only once; an empty or repeated name list returns `#-1 ARGUMENT NAME INVALID`.

  Example:
```sharp
&ROW me=%<name> has %<count> [if(eq(%<count>,1),post,posts)].
think stepargs(ROW, Bob 3 Alice 1, name count,, %r)
```
Output: `Bob has 3 posts.` and `Alice has 1 post.`, one per line.

::: seealso
- [STEP()]
- [UARGS()]
- [substitutions]
:::

