# animation
`SOCKSET animation=<on|off>`<br>
`@SOCKSET [me|<descriptor>]=animation,<on|off>`

With animation on, a moving picture (an animated GIF) plays, as long as pictures are on (see [GRAPHICS]) and drawn in a way that can move: kitty sends every frame, and iterm2 sends the picture as an animated GIF. With it off (the default), or drawn as sixel or blocks, a moving picture shows its first frame.

A terminal known not to play moving pictures (Ghostty, Konsole, mintty and Visual Studio Code among them) is sent the first frame even with animation on. terminfo() includes 'animation' while moving pictures play.

Example:
```
> SOCKSET animation=on
Animation set to 'on'
```


::: seealso
- [GRAPHICS]
- [TERMINAL]
- [@SOCKSET]
:::

