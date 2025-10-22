# examine
`examine[/<switches>] <object>[/<attribute>]`

Displays all available information about `<object>`. `<object>` may be an object, 'me' or 'here'. You must control the object to examine it. If you do not own the object, or it is not visible, you will just see the name of the object's owner. May be abbreviated 'ex `<object>`'. If the attribute parameter is given, you will only see that attribute (good for looking at code). You can also wildcard match on attributes.
The * wildcard matches any number of characters except a backtick (`).
The ? wildcard matches a single character except a backtick (`).
The ** wildcard matches any number of characters, including backticks.
For example, to see all the attributes that began with a 'v' you could do ex `<object>`/v**

The `/brief` switch is equivalent to the 'brief' command.
The `/debug` switch is wizard-only and shows raw values for certain fields in an object.
The `/mortal` switch shows an object as if you were a mortal other than the object's owner and is primarily useful to admins. This switch ignores the object's VISUAL flag (but not its attribute flags)
The `/parent` switch show attributes that would be inherited from the object's parents, if you have permission to examine the attributes on the parent.
The `/all` switch shows the values of VEILED attributes.
The `/opaque` switch omits contents listings.


## See Also
- [ATTRIBUTE TREES]
- [brief]
- [lattr()]
- [WILDCARDS]

