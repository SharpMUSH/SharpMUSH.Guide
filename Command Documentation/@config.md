# @config
`@config`
`@config [<category>|<option>]`
`@config/set <option>=<value>`
`@config/save <option>=<value>`

With no arguments, @config lists the categories of configuration options for the MUSH. With an argument, @config lists the options in the given `<category>`, or shows the current value of the given `<option>`.

The wizard-only `/set` switch changes the value of `<option>` to `<value>`. This change does not last across reboots. God can also use the `/save` switch, which attempts to save the new `<value>` in the mush.cnf configuration file, as well as changing it in-game.

For information about parameters, see [@config parameters]

