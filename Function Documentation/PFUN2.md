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
# PFUN3
  Example:

    > &root Parent=ParentRoot
    > &root`foo parent=ParentRoot`foo
    > think ufun(me/root) / [ufun(me/root`foo)]
    ParentRoot / ParentRoot`foo
    > &root`bar me=ChildRoot`bar
    > think ufun(me/root) / [ufun(me/root`foo)]
     / ParentRoot`foo

  Setting a ROOT`FOO attribute on the child automatically creates an empty ROOT attribute, which blocks the inherited ROOT attribute. The pfun() function allows you to get around this:

    > &root me=pfun(root)
    > think ufun(me/root) / [ufun(me/root`foo)] / [ufun(me/root`bar)]
    ParentRoot / ParentRoot`foo / ChildRoot`bar

  Good for inherited @chatformats which use CHATFORMAT``<channel>` leaf attrs to store channel-specific formats and the like.

