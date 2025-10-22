# valid2

  > think valid(name,Foobar)
  1
  > think valid(attrname,Foo bar)
  0

  A player can change his own name to a variation of his current name, but other players cannot:
  > think pmatch(Foobar)/%#
  #3/#4
  > think valid(playername, FOOBAR)
  0
  > think valid(playername, FOOBAR, #3)
  1


