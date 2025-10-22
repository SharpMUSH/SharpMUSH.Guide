# @if2
Examples:
```
> @if 1=say Yes, say No
You say, "Yes"
```

```
> @if 0=say Yes, say No
You say, "No"
```

```
> &foo me=$foo *: say Checking... ; @if %0=say Yes, {say No ; say Sorry!}
```

```
> foo 1
You say, "Checking..."
You say, "Yes"
```

```
> foo 0
You say, "Checking..."
You say, "No"
You say, "Sorry!"
```

