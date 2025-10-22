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

