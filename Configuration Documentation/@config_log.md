# @config log
These options affect logging.

- `log_commands=<boolean>`: Should every command be written to the command log? Commands by SUSPECT players are always written, and commands by NO_LOG objects never are. Passwords are starred out.
- `log_forces=<boolean>`: Should @force by wizards, and @force of wizard-owned objects, be written to the wizard log?
- `use_connlog=<boolean>`: Can connlog(), connrecord() and addrlog() read the connection log? On by default; when it is off they return `#-1 CONNECTION LOG DISABLED`.

The server writes its logs through Serilog, set in the Serilog section of its appsettings.json. These options are accepted but ignored: `use_syslog`, `error_log`, `command_log`, `wizard_log`, `checkpt_log`, `trace_log`, `connect_log` and `mem_check`. Staff actions are kept in the audit log as well.

