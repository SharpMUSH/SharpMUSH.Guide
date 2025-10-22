# VALID()
`valid(<category>, <string>[, <target>])`

  The valid() function checks to see if `<string>` can be used as a valid `<category>`, and returns 1 if so, 0 if not, and #-1 if an invalid category is used. For some categories, a `<target>` can be given to make the check more specific.

  The categories are:
   name        Test for a valid object name.
   attrname    Test for a valid attribute name.
   attrvalue   Test if `<string>` is a valid value for the attribute `<target>`. Meaningful for standard attributes with @attrib/enum or /limit.
   playername  Test if `<target>` could @name himself to `<string>`. `<target>` defaults to the caller.
   password    Test for a valid password.
   command     Test for a valid command name for @command/add.
   function    Test for a valid function name for @function.
   flag        Test for a valid flag/power name for @flag/add and @power/add
   qreg        Test for a valid name for a q-register.
   colorname   Test for a valid color name for ansi()/colors().
   ansicodes   Test for a valid color code sequence for ansi(`<string>`, ...).
   channel     Test for a valid channel name. If `<target>` is given, check to see if channel `<target>` could be renamed to `<string>`.
   timezone    Test for a valid timezone; see [timezones]
   locktype    Test for a valid locktype for @lock/`<string>` `<target>`. `<target>` defaults to the caller.
   lockkey     Test for a valid lockkey for @lock me=`<string>`

  Note that, for "playername", valid() returns 0 if the name is valid but currently in use by a player other than `<target>`.

  For "ansicodes", when not using new-style color names or hex codes, valid() always returns 1, and invalid codes are simply ignored, the same as when used in the ansi() function.

  See [valid2] for examples.

## See Also
- [colors()]
- [ansi()]

