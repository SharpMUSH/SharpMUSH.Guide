# hyperlinks
# commandlinks
`SOCKSET hyperlinks=<on|off|auto>`<br>
`SOCKSET commandlinks=<on|off|auto>`

Some terminals can make links clickable. With hyperlinks on, a web link is sent as an OSC 8 hyperlink, which opens in your browser when clicked. With commandlinks on, a command link (one that runs a command, such as the topics at the end of a help file) is sent as an MSLP link, which your client sends back to the game as a command when clicked.

Neither is sent unless SharpMUSH knows your client reads it, because a client that does not may print the codes as text. 'auto' (the default) decides from your client:

- hyperlinks: on when your terminal is one known to draw them (see [TERMINAL]), or your client is Mudlet.
- commandlinks: on when your client reports MSLP in its MTTS capabilities.

Use 'on' or 'off' to override that, and 'auto' to go back to it. SOCKSET shows the setting in effect, as "auto (on)" or "auto (off)" when nothing is set. terminfo() includes 'hyperlinks' and 'commandlinks' while they are on.

Example:
```sharp
> SOCKSET hyperlinks=on
Hyperlinks set to 'on'
```


::: seealso
- [@SOCKSET]
- [GRAPHICS]
- [TERMINFO()]
:::

