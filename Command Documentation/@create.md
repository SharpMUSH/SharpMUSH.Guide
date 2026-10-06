# @create
`@create <name>[=<cost>[,<dbref>]]`

This command creates a new thing called `<name>`. Creating an object costs a certain number of pennies (see '@config object_cost'); you can specify a higher cost if you wish. This cost is refunded to you when the object is destroyed.

Output: the new thing's dbref, as `create()` returns it.

Some MUSHes choose to limit the number of objects you can create by setting a quota.

Wizards and objects with the pick_dbref power can also specify the `<dbref>` of a garbage object to use when creating the object. Otherwise, the object is given the next available dbref.


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

