# @trigger3
Examples:
```
> &GREET me=POSE waves hi.
> @trigger me/GREET
Cyclonus waves hi.
```

```
> &GREET me=POSE waves to %0! ; say Hi there, %1.
> @trigger me/GREET=Gears, Arcee
Cyclonus waves to Gears.
You say, "Hi there, Arcee."
```

```
> &foo Globals=$foo *: @assert setr(0,locate(%#,%0,*))=@nspemit %#=Who? ; @nspemit %#=You foo [name(%q0)]. ; @trigger %q0/AFOO
> &AFOO Bar=:is foo'd by %n!
> FOO BAR
Bar is foo'd by Globals!
```

```
> &foo Globals=$foo *: @assert setr(0,locate(%#,%0,*))=@nspemit %#=Who? ; @nspemit %#=You foo [name(%q0)]. ; @trigger/spoof %q0/AFOO
> FOO BAR
Bar is foo'd by Cyclonus!
```

