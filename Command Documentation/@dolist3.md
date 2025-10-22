# @dolist3
Examples:
```
> @dolist a b c=say %i0 is number [inum(0)]
You say, "a is number 1"
You say, "b is number 2"
You say, "c is number 3"
```

```
> &test me=$test: say Starting ; @wait me={say Done} ;
                  @dolist/notify a b c=say %i0 is [inum(0)]
> test
You say, "Starting"
You say, "a is 1"
You say, "b is 2"
You say, "c is 3"
Notified.
You say, "Done"
```

```
> @dolist a b c=@dolist 1 2 3=say %iL/%i0
You say, "a/1"
You say, "a/2"
You say, "a/3"
You say, "b/1"
You say, "b/2"
You say, "b/3"
You say, "c/1"
You say, "c/2"
You say, "c/3"
```

