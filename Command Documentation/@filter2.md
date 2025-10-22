# @filter2
Example:
An audible exit leads from the room where Wizard is standing to another room where the puppet "Wiztoy" is standing.
```
> @prefix exit=From inside,
> :tests.
Wizard tests.
Wiztoy> From inside, Wizard tests.
```

```
> @filter exit=* jumps.,* tests.
> :jumps.
Wizard jumps.
> :tests.
Wizard tests.
```

```
> :tests again.
Wizard tests again.
Wiztoy> From inside, Wizard tests again.
```

