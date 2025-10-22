# @dolist
`@dolist[/<switches>][/notify][/delimit <delim>] <list>=<action list>`

@dolist queues the `<action list>` for execution once for each element in `<list>`. `<list>` is space-separated, unless the `/delimit` switch is given, in which case it is a `<delim>`-separated list.

The %i0 substitution, or the function itext(0), can be used in the `<action list>` to get the current element of the `<list>`, and the inum(0) function returns the position of the current element. ilev() returns the nesting depth of @dolists. The %iL substitution returns the itext() for the outermost @dolist, and is equivilent to itext(ilev()).

For backwards compatability, the string "##" is also replaced with the current element of the list, and "#@" the current position. However, these replacements occur BEFORE evaluation, which means that they always return the values for the outermost @dolist, and are thus unsuitable for nesting. It also makes them unsafe for use on user-input or strings which may contain special characters; using the %i* sub or itext() instead is very strongly recommended.

See [@dolist2].

