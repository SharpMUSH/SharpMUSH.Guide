# @secret
`@secret[/list]`<br>
`@secret <name>=<value>`<br>
`@secret/clear <name>`

Manages the secrets the server keeps for itself: passwords, tokens and signing keys, such as the SQL password (`sql.password`). A stored value is encrypted with the server's key ring, which is kept outside the world, so a copy of the world alone opens no secret. Nothing shows a value again: not this command, not the web portal, and no function. Softcode cannot read a secret.

With no argument, or `/list`, @secret lists every secret the server or a plugin reads, and every stored one: where its value comes from, when (UTC) and by whom it was stored, and what it is for. A secret whose stored value this server cannot decrypt shows as `unreadable: set it again`.

`@secret <name>=<value>` stores `<value>` as `<name>`, replacing what was stored. The command is not evaluated, so the value is stored exactly as typed. A name is lower-case letters and digits, in parts joined by `.`.

`/clear` removes the stored value.

An operator can set a secret outside the game instead, and that overrides the stored value: an environment variable `SHARPMUSH_SECRET_<NAME>` (the name in upper case, with `.` written as `_`, so `sql.password` is `SHARPMUSH_SECRET_SQL_PASSWORD`), or a file named for the secret in `/run/secrets` (where Docker and Kubernetes put secrets; `SHARPMUSH_SECRETS_PATH` names another directory).

Importing a PennMUSH `mush.cnf` in the web portal stores its `sql_password` as the `sql.password` secret, never as a configuration option.

A typed value passes through your client, which may keep it in a log. Use the web portal's Secrets page, or an override, where that matters.

Using @secret needs the `config.admin` permission. A plugin may name another permission that manages its own secret.

Output: nothing; it tells you what it did.

### Examples
```
> @secret sql.password=hunter2
sql.password is set. Its value is never shown again.
> @secret
+-------------------------------< Secrets (1) >------------------------------+
| Secret        Value       Stored                   For                     |
| -------------------------------------------------------------------------- |
| sql.password  stored      2026-10-14 23:38 by      The password of         |
|                           God(#1)                  sql_username on the SQL |
|                                                    server.                 |
+----------------------------------------------------------------------------+
> @secret/clear sql.password
sql.password is cleared.
```


::: seealso
- [@config]
- [@sql]
:::

