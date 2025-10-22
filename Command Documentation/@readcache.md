# @readcache
`@readcache`

This wizard-only command reloads the cached text files (listed under '@config messages') and rebuilds the indexes for help, news and similar commands.

On some systems (where '@config compile' shows 'Changed help files will be automatically reindexed.'), updates to these files are noticed and loaded automatically. Otherwise, @readcache must be used any time changes are made to one of these files while the game is running.

A site admin can achieve the same effect by sending the MUSH process a kill -1 or kill -HUP.

@readcache does not load updates to the configuration files (mush.cnf, restrict.cnf, etc) - the game must be restarted with `@shutdown/reboot` to reload these.


## See Also
- [@shutdown]

