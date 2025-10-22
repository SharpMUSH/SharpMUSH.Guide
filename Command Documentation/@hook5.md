# @hook5
An example of @hook:
```
> &top_line #3=pemit(%#, What follows is the results of a look)
> &bottom_line #3=pemit(%#, You're done looking.)
> @hook/before look=#3, top_line
> @hook/after look=#3, bottom_line
> look
What follows is the results of a look
Room Zero
You are in Room Zero. It's very dark here.
You're done looking.
```

```
> &cmd.say #3=$say *: @remit %L=if(hasflag(%#,OOC),<OOC>%b)%n says, "%0"
> @hook/override say=#3, cmd.say
> @set me=OOC
> "test
<OOC> Robert says, "test"
```

See [@hook6] for /inplace examples.

