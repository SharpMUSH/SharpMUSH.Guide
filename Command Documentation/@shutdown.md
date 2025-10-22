# @shutdown
`@shutdown[/panic][/reboot][/paranoid]`

@shutdown shuts down the game. It may only be used by Wizards.

`@shutdown/panic` performs a panic shutdown of the game, using a seperate database file, not the normal one. It may only be used by God.

`@shutdown/reboot` restarts the game without disconnecting the users. This is necessary to load changes to the MUSH's configuration files (mush.cnf, restrict.cnf, etc), though not changes to names.cnf, which take effect without a reboot.

If the `/paranoid` switch is added, the shutdown dump will be a paranoid dump (see @dump).

