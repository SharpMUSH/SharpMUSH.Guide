# @account
`@account <name>`<br>
`@account/list [<pattern>]`<br>
`@account/newpassword <name>=<password>`<br>
`@account/disable <name>`<br>
`@account/enable <name>`<br>
`@account/close <name>`<br>
`@account/delete <name>`<br>
`@account/link <name>=<player>`<br>
`@account/unlink <name>=<player>`<br>
`@account/claim <character>=<password>`

Administers the web-portal accounts that characters are linked to. Wizard-only, except `/claim`.

`/claim` is for anyone playing a character that is on an account: it links `<character>` to that same account. The password is `<character>`'s own, or, for a character on another account of yours, that account's password, which moves the character over. See [accounts claiming].

With no switch, shows one account's details. `/list` lists every account, or those whose username contains `<pattern>`, each with its state; a `*` after a name marks an account that must change its password at next login. `/newpassword` sets a password and requires the holder to change it at their next login. `/disable` and `/enable` suspend and restore access, and `/close` and `/delete` retire the account; the record is kept either way, so the characters linked to it are never orphaned. The account that holds God (#1) can never be disabled, closed, deleted or banned.

`/link` adds a character to the account without its password: one made with [@pcreate], imported, or whose holder lost its password. A character already on another account is refused until `/unlink` takes it off that one. Only God links God, and only a wizard links a wizard. `/unlink` takes a character off the account; the character itself is kept. God (#1) is never unlinked from its account. Players link their own characters with [claim]. See [accounts staff].

Accounts are a SharpMUSH concept; PennMUSH has no equivalent command.


::: seealso
- [@pcreate]
- [@newpassword]
- [register]
- [accounts]
:::

