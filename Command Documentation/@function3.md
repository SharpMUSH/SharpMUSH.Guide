# @function3
Global user-defined functions are not automatically loaded when the game is restarted. In order to avoid objects which attempt to use functions that have not been loaded, a @startup containing @function commands should be set on a wizard object with as low a dbref number as possible; God (#1) is suggested for this use. You can also create functions from the alias.cnf file.

For example, if you have one object that stores all your global functions, you could set the following command (the object is #100 in the example):
```
@startup #1=@dolist lattr(#100)=@function ##=#100,##
```

And then store each function as an attribute of the same name on object #100.

See [@function4].

