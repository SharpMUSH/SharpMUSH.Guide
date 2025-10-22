# @attrlock
`@atrlock <object>/<attribute>`
`@atrlock <object>/<attribute=[on|off]`

The first form of this command tells you whether or not the given attribute is locked (whether it has the "locked" attribute flag set).

The second form attempts to lock (for 'on') or unlock (for 'off') the given attribute. You automatically gain ownership of the attribute (as per @atrchown) when you lock it. Locked attributes cannot be altered by anyone but Wizards and the attribute's owner (though the owner may be unable to alter the attribute for other reasons, such as not controlling `<object>`). You must be able to set an attribute in order to lock it.

If you wish to lock an attribute without gaining ownership, you can set it "locked" with `@set <obj>/<attr>=locked` - be aware that you'll be unable to make any changes to the attribute after this, including unlocking it!


## See Also
- [atrlock()]
- [@atrchown]
- [ATTRIBUTES]
- [NON-STANDARD ATTRIBUTES]

