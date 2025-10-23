# A Simple Who command
## Code
```
@create Generic Command Holder
@set Generic Command Holder=!no_command
&cmd`who Generic Command Holder=$+swho:@nspemit %:=u(fun`header,+swho)%r[u(fun`who)]%r[u(fun`footer)]
&fun`header Generic Command Holder=center(\[%b%0%b\],width(%#),-)
&fun`who Generic Command Holder=map(fun`who`line,lwho(),%b,%r)
&fun`who`line Generic Command Holder=align(24 >20 >20,name(%0),timestring(idle(%0)),timestring(conn(%0)))
&fun`footer Generic Command Holder=repeat(-,width(%#))
```

## Invoking the command:
`+swho`

## Expected Output
```
--------------------------------------------[ +swho ]--------------------------------------------
Thylonicus                             6m 37s           1h  0m 21s
Shaenyl                               18m 13s           1h 46m 37s
Alastair                           1h 43m 38s          11h 26m 39s
Sumta                                 17m 37s          12h 32m  8s
Mercutio                                   0s       2d  8h 19m 34s
Balerion                       6d  9h  2m 14s       6d  9h  2m 15s
Nymeria                        7d  6h  3m  2s       7d  6h  3m  2s
qa'toq                         2d  4h  9m 55s       7d  6h  6m 35s
hellspawn                              6m 25s      10d  3h 20m  5s
Ambrosia                      12d  7h 44m 37s      12d  7h 44m 37s
Sigc                           1d 12h 28m 22s      15d 11h 37m 14s
Nhoj                          87d 11h 58m 43s      87d 11h 58m 47s
Rince                        209d 10h 31m 27s     210d 20h 53m 26s
eery                         158d  8h 23m 43s     216d  8h 48m 43s
Zebranky                     142d  3h 29m 10s     324d  1h  1m 44s
grapenut                      15d  5h  8m  2s     360d  5h  3m 13s
Glass                         87d  9h 33m 31s     487d  9h 53m 27s
Raevnos                        8d  0h  8m 55s    1021d 23h 31m 42s
-------------------------------------------------------------------------------------------------
```