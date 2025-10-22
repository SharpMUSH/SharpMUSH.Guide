# @search2
If `<class>`=FLAGS or LFLAGS, only objects with the list of flags specified by `<restriction>` will be listed. For FLAGS, flags to match should be given as a string of single flag letters, with appropriate case. For LFLAGS, flags to match should be given as a space-separated list of flag names.

If `<class>`=POWERS, only objects with the given powers are listed. `<restriction>` should be a space-separated list of power names.

If `<class>`=ELOCK, only objects that pass the given lock string (as in help @lock) are listed. For purposes of indirect locks (@#123), 'search' is the name of the lock.

If `<class>`=EVAL, only objects for which `<restriction>` evaluates to a true boolean value will be listed. The token '##' in `<restriction>`, which is a function, is replaced by each dbref sequentially. Classes EPLAYER, EROOM, EEXIT, and ETHING work like EVAL but are restricted to a single type.

See [@search3]. for more.

