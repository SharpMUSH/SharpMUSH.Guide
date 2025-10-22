# CONNLOG2
  `<spec>` is one or more of the following:

  Time-based constraints:
    * between, `<startsecs>`, `<endsecs>` - connections that existed during the given time frame.
    * at, `<secs>` - connections that existed at the given time.
    * before, `<secs>` - connections that existed before the given time.
    * after, `<secs>` - connections that existed after the given time.
  Only one time-based constraints can be used in a query. All times are the number of seconds since the epoch, as returned by secs().

  Source-based constraits:
    * ip, `<pattern>` - connections from IP addresses that match the wildcard `<pattern>`.
    * hostname, `<pattern>` - connections from hostnames that match the wildcard `<pattern>`.

  Others:
    * count - if given, instead of returning a list of connections, returns the total number of matching connections.

  See [connlog3] for examples.

## See Also
- [addrlog()]
- [connrecord()]
# CONNLOG3
  Examples:
```
think connlog(logged in, after, secscalc(now, -15 minutes))
shows all connections that were present during the last 15 minutes
```

   > think connlog(all, ip, 127.0.0.1)
   shows all connections ever made from localhost.

   > think connlog(all, count, before, secs())
   shows the total number of connections made since logging began.


