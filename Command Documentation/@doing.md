# @doing
`@doing <object>[=<message>]`

With a `<message>` argument, this command sets `<object>`'s DOING attribute to `<message>`. The DOING attribute is only meaningful for players; the evaluated result is shown on the output of the normal MUSH WHO command, and on the login screen WHO.

With no `<message>` the attribute is cleared.

The object comes first, so `@doing Exploring` looks for an object named Exploring. To set your own:

```
@doing me=Exploring the docks
```

To change the message shown above player @doings in WHO, use @poll.


::: seealso
- [@poll]
- [who]
- [DOING()]
:::

