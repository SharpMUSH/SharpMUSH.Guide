# @force3
Normally, @force creates a new queue entry. `@force/inline` does not.

Examples:
```
> @create Lackey
Created: Object #103
> &order me=$order *:say Lackey, %0 ; @force Lackey=%0 ; say Done?
> order pose salutes!
You say, "Lackey, pose salutes!"
You say, "Done?"
Lackey salutes!
```

```
> &order me=$order *:say Lackey, %0 ; @force/inline Lackey=%0 ; say Done?
> order pose salutes!
You say, "Lackey, pose salutes!"
Lackey salutes!
You say, "Done?"
```


## See Also
- [PUPPET]
- [DBREF]
- [objeval()]

