# version()
# numversion()
`version()`<br>
`numversion()`

  version() returns "PennMUSH emulated in SharpMUSH " followed by the server's version. numversion() returns the same version as one integer, for comparing versions in softcode: the major version, then three digits each for the next three parts. Version 2.1.3.0 is 2001003000.

  Example:
```sharp
say version()
You say, "PennMUSH emulated in SharpMUSH 2.0.0.0"
say numversion()
You say, "2000000000"
```


::: seealso
- [@version]
:::

