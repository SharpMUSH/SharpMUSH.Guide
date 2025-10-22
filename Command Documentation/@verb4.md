# @verb4
In order to make this into a global command that anyone can use, we need to put it on a WIZARD object in the Master Room.
```
> &DO_TEST Global=$test *: @assert setr(0,locate(%#,%0,n))=@pemit %#=I don't see that here. ; @verb %q0=%#, TEST, You test [capstr(%0)]., OTEST,tests [capstr(%0)]. ,ATEST
```

```
> &TEST Example=You test this fun example.
> &ATEST Example=POSE has been tested!
> test example
You test this fun example.
[others see] You test Example.
Example has been tested!
```

