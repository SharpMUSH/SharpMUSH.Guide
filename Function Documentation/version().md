# version()
# numversion()
`version()`<br>
`numversion()`

  version() returns "PennMUSH emulated in SharpMUSH " followed by the server's version. numversion() returns the same version as one integer, for comparing versions in softcode: the major version, then three digits each for the minor and patch versions, then 000 where PennMUSH puts its patchlevel. Version 2.1.3 is 2001003000. A prerelease such as 2.1.3-rc.1 gives the same number as 2.1.3.

  Example:
```sharp
say version()
You say, "PennMUSH emulated in SharpMUSH 2.0.0"
say numversion()
You say, "2000000000"
```


::: seealso
- [@version]
:::

