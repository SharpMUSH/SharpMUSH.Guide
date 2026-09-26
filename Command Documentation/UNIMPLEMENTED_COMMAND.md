# UNIMPLEMENTED_COMMAND
This command shows the message "This command has not been implemented." It can be typed directly and @hooked like any other command.

A command added with @command/add and not @hooked shows the same message, but it does so itself: it does not run UNIMPLEMENTED_COMMAND, so a hook on UNIMPLEMENTED_COMMAND does not change it. To change what an added command does, @hook the added command. This differs from PennMUSH; see [COMPATIBILITY COMMANDS].


**See Also:**
- [huh_command]
- [warn_on_missing]
- [@command]
- [@hook]

