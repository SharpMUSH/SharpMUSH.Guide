# @SOCKSET
# SOCKSET
`SOCKSET [<option>=<value>]`
`@sockset [<descriptor>][=<option>, <value>[, ..., <optionN>, <valueN>]]`

SOCKSET is a socket command which sets or queries socket-specific options. These options are usually set automatically, or negotiated by the MUSH and your client, but this command lets you override those settings.

With no args, SOCKSET shows the current value of the socket options. With an `<option>=<value>` pair, it attempts to set the given option.

@sockset is a similar in-game command, but can specify which descriptor to change options for, and can set multiple options at once. Only Wizards can change the options for other players' descriptors. `<descriptor>` defaults to your least-idle descriptor, when used by a player; for non-players, it has no default.

Options:
- colorstyle: See [colorstyle]
- outputprefix: Same as OUTPUTPREFIX
- outputsuffix: Same as OUTPUTSUFFIX
- pueblo: Sets Pueblo-related options. If value has md5=...", then it will set the pueblo checksum. If empty, Pueblo mode is turned off.
- telnet: Yes or no, to enable/disable telnet negotiation
- width: Set your width(), same as SCREENWIDTH
- height: Set your height(), same as SCREENHEIGHT
- terminaltype: Your terminal type, used by terminfo()
- prompt_newlines: Set whether a newline is shown after prompts from @prompt, same as PROMPT_NEWLINES
- stripaccents: Strip accents for this connection. Like the NOACCENTS flag, but connection-specific. Set by default on connections which negotiate charset as [US-]ASCII
- noquota: Input command quota is set to max every refresh. Can only be set by a logged-in Wizard.

Note that changing 'telnet' or 'pueblo' may stop your client from parsing or displaying output correctly; only use if you know what you're doing!


## See Also
- [SOCKET COMMANDS]
- [terminfo()]
- [Pueblo]
- [colorstyle]
- [@prompt]

