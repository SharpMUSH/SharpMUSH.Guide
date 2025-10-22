# @startup
`@startup <object>[=<action list>]`

Sets the list of actions on `<object>` that will happen whenever the MUSH is restarted. This lets you start up objects that need to be running continuously. It is also useful for setting up @functions and @hooks, which are not saved across restarts.

@startup is also triggered when an object is @restarted or @undestroyed.

Note that @startups are NEVER inherited from parent objects.


## See Also
- [@restart]
- [@undestroy]
- [ACTION LISTS]
- [@function]
- [@command]
- [@hook]

