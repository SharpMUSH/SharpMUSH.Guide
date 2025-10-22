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

