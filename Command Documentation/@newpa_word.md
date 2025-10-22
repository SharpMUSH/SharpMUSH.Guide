# @newpassword
`@newpassword <player>=<password>`
`@newpassword/generate <player>`

This wizard-only command changes `<player>`'s password. If `<player>` is connected, she will be informed that the password was changed and who by, but not what it was changed to.

The `<player>` argument is evaluated, but the `<password>` argument is not when the command is entered directly from a client.

If the `/generate` switch is given, a new, random password is generated automatically, and shown to the enactor (but not to `<player>`).
The `<password>` must not contain whitespace, unprintable characters, or '='.


## See Also
- [@password]
- [checkpass()]

