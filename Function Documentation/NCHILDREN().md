# NCHILDREN()
`lsearch(<player>[, ... , <classN>, <restrictionN>])`
`nlsearch(<player>[, ... , <classN>, <restrictionN>])`
`lsearchr(<player>[, ... , <classN>, <restrictionN>])`
`children(<object>)`
`nchildren(<object>)`

  This function is similar to the @search command, except it returns just a list of dbref numbers. The function must have at least three arguments. You can specify "all" or `<player>` for the `<player>` field; for mortals, only objects they can examine are included. If you do not want to restrict something, use "none" for `<class>` and `<restriction>`.

  The possible `<class>`es and `<restriction>`s are the same as those accepted by @search. lsearch() can accept multiple class/restriction pairs, and applies them in a boolean "AND" fashion, returning only dbrefs that fulfill all restrictions. See [@search] for information about them.

  children() is exactly the same as lsearch([me|all], parent, `<object>`), using "all" for See_All/Search players and "me" for others.

  nlsearch(...) and nchildren(...) return the count of results that would be returned by lsearch() or children() with the same args.

  See [lsearch2].

