# @nuke
`@destroy[/override] <object>` or `@recyle[/override] <object>`
`@nuke <object>`

The @destroy command marks `<object>` for destruction, or destroys `<object>` instantly if it was already marked for destruction. You must either control `<object>`, control its source or destination room (for exits), or it must be set DESTROY_OK and you must pass its @lock/destroy.

To destroy objects set SAFE, you must use `@destroy/override` or @nuke. If the really_safe @config option is on, even @nuke can't destroy SAFE objects, and you must clear the SAFE flag first.

@recycle is an alias for @destroy. Some MUSHes disable @destroy and only use @recycle, to avoid players mistyping. @nuke is an alias for `@destroy/override`.

See [@destroy2] for a description of the destruction process.

## See Also
- [@undestroy]
- [@create]
- [@dig]
- [@open]
- [DESTROY_OK]
- [SAFE]

