# @hook6
```
> &dance me=$dance:pose sticks his right foot in ; say Do the hokey pokey ; pose sticks his right foot out
> dance
Walker sticks his right foot in
You say, "Do the hokey pokey"
Walker sticks his right foot out
```

```
> &cmd.say #3=$say *:@remit %l=%n declares, "%0"
> @hook/override say=#3,cmd.say
> dance
Walker sticks his right foot in
Walker sticks his right foot out
Walker declares, "Do the hokey pokey"
```

```
> @hook/override/inplace say=#3,cmd.say
> dance
Walker sticks his right foot in
Walker declares, "Do the hokey pokey"
Walker sticks his right foot out
```

