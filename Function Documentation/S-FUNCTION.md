# S-FUNCTION
`s(<string>)`

  This function performs a second round of evaluation on `<string>`, and returns the result. It should be considered extremely dangerous to use on user input, or any other string which you don't have complete control over. There are very few genuine uses for this function; things can normally be achieved another, safer way.

  Example:
```
&test me=$eval *: say When we eval %0, we get [s(%0)]
eval \[ucstr(test)]
You say, "When we eval [ucstr(test)], we get TEST"
```


## See Also
- [objeval()]
- [decompose()]

