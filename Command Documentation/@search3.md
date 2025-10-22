# @search3
If `<class>`=MINDB, only objects with dbrefs of `<restriction>` or higher will be listed. If `<class>`=MAXDB, only objects with dbrefs of `<restriction>` or lower will be listed.

If `<class>`=START, then @search will start returning results at the `<restriction>`th result.

If `<class>`=COUNT, then @search will only return up to `<restriction>` results.

If `<class>`=COMMAND, then @search will only return objects that respond to `<restriction>` as an $-command.

If `<class>`=LISTEN, then @search will only return objects that respond to `<restriction>` through a listen.

See [@search4].

