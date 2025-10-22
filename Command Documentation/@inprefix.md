# @inprefix
`@inprefix <object>[=<message>]`

When an object has an @listen, any string it hears which is propagated to its contents will be prefixed with `<message>`. Useful for vehicles, etc, which have an @listen of "*".

Example:
```
> @create Vehicle
Created: Object #103.
> @create Test
Created: Object #104.
> @inprefix Vehicle=From outside,
> @listen Vehicle=*
> enter Vehicle
> @force #104=:bounces.
From outside, Test bounces.
```


## See Also
- [@prefix]
- [@listen]
- [@infilter]

