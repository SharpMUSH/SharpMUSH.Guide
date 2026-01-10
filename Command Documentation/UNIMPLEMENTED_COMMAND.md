# UNIMPLEMENTED_COMMAND
This internal command is run when someone attempts to use an unimplemented command. Currently, this only occurs when a command has been added with @command/add but has not been properly @hooked to run softcode. UNIMPLEMENTED_COMMAND cannot be run directly.

By default, the command just shows the message "This command has not been implemented.", but you can @hook it to perform other actions.


## See Also
- [huh_command]
- [warn_on_missing]
- [@command]
- [@hook]

