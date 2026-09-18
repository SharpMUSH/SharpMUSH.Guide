# @account
`@account <name>`<br>
`@account/list [<pattern>]`<br>
`@account/newpassword <name>=<password>`<br>
`@account/disable <name>`<br>
`@account/enable <name>`<br>
`@account/close <name>`<br>
`@account/delete <name>`

Administers the web-portal accounts that characters are linked to. Wizard-only.

With no switch, shows one account's details. `/list` lists every account, or those whose username contains `<pattern>`. `/newpassword` sets a password and requires the holder to change it at their next login. `/disable` and `/enable` suspend and restore access, and `/close` and `/delete` retire the account — the record is kept either way, so the characters linked to it are never orphaned.

Accounts are a SharpMUSH concept; PennMUSH has no equivalent command.


**See Also:**
- [@pcreate]
- [@newpassword]
- [register]

