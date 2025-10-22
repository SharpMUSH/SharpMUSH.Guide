# PFUN2
  This function does not have the security problems of using

`ufun(parent(me)/<attribute>)`

  as the attribute is inherited (and evaluated by you, not the parent) - you don't need to be able to examine the parent object, and safer_ufun does not stop the evaluation. Note that no_inherit attribute flags are still checked, as with normal attribute inheritence.

  This function is particularly useful when you want to inherit an attribute tree from a parent, but add further branches.

  See [pfun3] for an example.


## See Also
- [ufun()]
- [get()]
- [parent()]
- [zfun()]
- [PARENTS]

