# terminal
`SOCKSET terminal=<name|auto>`<br>
`@SOCKSET [me|<descriptor>]=terminal,<name|auto>`

SharpMUSH works out which terminal you use from the terminal type your client reports, or from its answer when you use 'SOCKSET graphics=detect'. That decides which links are sent (see [HYPERLINKS]) and, once pictures are on, how they are drawn (see [GRAPHICS]). Most clients report a generic type such as xterm-256color, which names no terminal.

Naming your terminal here tells SharpMUSH what it is, for one that does not say (Windows Terminal never does). 'auto' goes back to what your client reported. SOCKSET shows the terminal in use, as "auto (<terminal>)" when you have not named one.

The terminals SharpMUSH knows:

- kitty, ghostty, wezterm, iterm2, konsole, foot, xterm, windows-terminal, mintty, vscode (Visual Studio Code's terminal), contour, rio, mlterm, alacritty, vte (GNOME Terminal, Tilix, Terminator and other VTE terminals), tmux

Example:
```
> SOCKSET terminal=windows-terminal
Terminal set to 'windows-terminal'
```


::: seealso
- [GRAPHICS]
- [ANIMATION]
- [HYPERLINKS]
- [@SOCKSET]
:::

