# runout2
Example:
```
> @create Revolver
> @use Revolver=You pull the trigger.
> @ouse Revolver=pulls the trigger.
> @charges Revolver=6
> @ause Revolver=POSE fires into the air.
> @runout Revolver=POSE clicks, but is out of bullets.
```

```
> use revolver
You pull the trigger.
Revolver fires into the air.
> ex revolver/charges
CHARGES [#6$]: 5
```

The next 5 "use revolver"s work the same way, decrementing CHARGES each time.

```
> ex revolver/charges
CHARGES [#6$]: 0
> use revolver
You pull the trigger.
Revolver clicks, but is out of bullets.
> ex revolver/charges
CHARGES [#6$]: 0
```

