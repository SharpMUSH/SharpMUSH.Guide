# walk
`walk <exit> [<exit> ...]`

Goes through each exit in turn, as if you typed each one. Separate the exits with spaces, and put an exit whose name has a space in double quotes. If one of them fails, you stop in the room you reached and the rest are not tried. The portal's World map copies a route as one `walk` line, so it can be pasted into any client.

`walk` outputs the dbref of the last room you reached. `walk` is a SharpMUSH addition.

```sharp
> walk north up
```
Output: the Lighthouse, then the Lamp room, as you would see them walking each exit.

```sharp
> walk north sideways up
```
Output: the Lighthouse, then "You can't go that way." You stay in the Lighthouse.

```sharp
> walk "Harbour road" north
```
Output: the Quay, then the Lighthouse.


::: seealso
- [go]
- [EXITS]
- [movement]
:::

