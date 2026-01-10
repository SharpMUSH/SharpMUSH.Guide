# @pageformat
# @outpageformat
`@outpageformat <object>[=<message>]`
`@pageformat <object>[=<message>]`

`@pageformat` changes the message seen by `<object>` when it receives a page.
`@outpageformat` sets the message seen by `<object>` when it sends a page.

%0 will be set to the page message (not including :, ; or ").
%1 will be set to ':' ';' or '"' for pose, semipose and normal page, respectively.
%2 will be set to the alias of the pager, if any.
%3 will be a space-separated list of recipient dbrefs.
%4 will be set to the default message.

See [@pageformat2] for examples.


## See Also
- [page]
- [speak()]
- [@chatformat]
- [@speechmod]
- [@message]
# @pageformat2
# @outpageformat2
For simple page timestamps:
```
> @pageformat me=\[[time()]\] %4
> @outpageformat me=\[[time()]\] %4
```

To obtain 'page_aliases' behavior:
```
> @pageformat me=[setq(0,%n[if(%2,%b(%2))],1,switch(%3,%!,,itemize(iter(%3, name(##),%b,|),|)))][switch(%1,",%q0 pages[if(%q1,%b%q1)]: %0,:,From afar[if(%q1,%b(to %q1))]\, %q0 %0,From afar[if(%q1,%b(to %q1))]\, %q0%0)]
```

To obtain no 'page_aliases' behavior:
```
> @pageformat me=[setq(1,switch(%3,%!,,itemize(iter(%3,name(##),%b,|),|)))][switch(%1,",%n pages[if(%q1,%b%q1)]: %0,:,From afar[if(%q1,%b(to %q1))]\, %n %0,From afar[if(%q1,%b(to %q1))]\, %n%0)]
```

