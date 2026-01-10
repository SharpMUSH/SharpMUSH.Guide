# @entrances
`@entrances[/<switch>] [<object>][=<begin>[, <end>]]`

This command will show you all objects linked to `<object>`. If you don't specify an `<object>`, your current location is used. You can limit the range of the dbrefs searched by specifying `<begin>` and `<end>`.

You can use any combination of switches to limit the types of objects:
- /exits show only exits linked to `<object>`
- /things show only things which have their homes in `<object>`
- /players show only players who have their homes in `<object>`
- /rooms show only rooms which have a drop-to of `<object>`

If you control `<object>`, or have the Search or See_All powers, all objects linked to `<object>` are listed. Otherwise, only objects which you can examine will be shown.


## See Also
- [@link]
- [@search]
- [entrances()]

