# @retry2
Example: 'while'
```
> &sing me=$sing *:say %0 bottles of beer! ; @retry gt(%0,0)=dec(%0) ; say Go get some more!
> sing 3
You say, "3 bottles of beer!"
You say, "2 bottles of beer!"
You say, "1 bottles of beer!"
You say, "0 bottles of beer!"
You say, "Go get some more!"
```

Implementing a folding algorithm:
(Yes, I know lmath is better, but this is just an example! :D)
```
> &add me=$add *:@retry words(%0)=rest(%0),add(first(%0),0%1) ; think %1
> add 4 3 2 1
10
```

