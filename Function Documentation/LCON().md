# LCON()
`lcon(<object>[, <type>])`

  Returns a list of the dbrefs of objects which are located in `<object>`.

  You can get the complete contents of any object you may examine, regardless of whether or not objects are dark. You can get the partial contents (obeying DARK/LIGHT/etc.) of your current location or the enactor (%#). You CANNOT get the contents of anything else, regardless of whether or not you have objects in it.

  When used on exits, this function returns #-1.

  For compatability with other codebases, a `<type>` can be given to limit the results. Valid `<type>`s are:
    player             - equivalent to lplayers(`<object>`)
    connect            - equivalent to lvplayers(`<object>`)
    thing (or object)  - equivalent to lthings(`<object>`)
    listen             - return only listening objects
    puppet             - return only THINGs set PUPPET


## See Also
- [lexits()]
- [lplayers()]
- [lthings()]
- [con()]
- [next()]
- [lvcon()]

