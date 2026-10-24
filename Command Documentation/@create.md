# @create
`@create <name>[=<cost>[,<dbref>]]`

This command creates a new thing called `<name>`. SharpMUSH has no money, so creating an object costs nothing and `<cost>` is accepted and ignored.

Output: the new thing's dbref, as `create()` returns it.

When quotas are enabled, each object you create uses part of your building quota; see [@quota].

Wizards and objects with the PICK_DBREFS power can also specify the `<dbref>` of a garbage object to use when creating the object. Otherwise, the object is given the next available dbref.


::: seealso
- [give]
- [@quota]
- [MONEY]
- [@clone]
- [CREATE()]
- [@dig]
- [@open]
- [@pcreate]
:::

