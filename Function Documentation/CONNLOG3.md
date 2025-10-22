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


