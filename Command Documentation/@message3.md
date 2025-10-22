# @message3
A (very) basic language system:
```
> &skill`spanish Juan=2
> &skill`spanish Bob=1
> &cmd.spanish Globals=$+spanish *: @nspemit %#=You say (Spanish), "%0"; @message/oemit/spoof %#=setr(0,%n says (Spanish)\, "%0"), %!/TRANSLATE, ##, SPANISH, %q0
> &translate Globals=switch(default(%0/skill`%1, 2), 2, %2, speak(%#, |%2,, %!/translate`some))
> &translate`some Globals="[iter(%0,if(rand(2),%i0,...))]"
> +spanish The rain in Spain falls mainly on the plain
```

You see:
```
You say (Spanish), "The rain in Spain falls mainly on the plain"
```
Bob sees (something like):
```
Mike says (Spanish), "The rain ... ... falls ... ... ... ..."
```
Juan sees:
```
Mike says (Spanish), "The rain in Spain falls mainly on the plain"
```

