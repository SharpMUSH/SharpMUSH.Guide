# stext()
# slev()
# %$
# %$0
`slev()`<br>
`stext([\<n\>])`<br>
  %$`\<n\>`

  slev() returns the current nesting depth of switch*(), case*(), reswitch*(), if(), ifelse() and @switch/@selects. An if() or ifelse() counts while its branch runs, with its evaluated condition as the `<string>`. stext() returns the `<string>` being matched for the current switch, or the `\<n\>`th switch where n=0 is the current switch, n=1 is the switch the current switch is nested in, and so on. Unlike the "#$" token, which names the outermost switch it is written in, it can name any level.

  stext(L) returns the `<string>` for the outermost switch, and is equivilent to stext(slev()). %$`\<n\>` is equivilent to stext(`\<n\>`), for `\<n\>`s of 0-9 or L.

  Examples:
```sharp
&cmd.whois me=$whois *: @pemit %#=switch(pmatch(%0),#-*, I don't know '%0', '%0' is %$0)
@switch foo=f*, say switch(bar, b*,%$1 %$0!)
You say, "foo bar!"
```


::: seealso
- [switch()]
- [RESWITCH()]
- [@switch]
:::

