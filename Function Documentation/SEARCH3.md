# SEARCH3
  lsearch() Examples:

  lsearch(all, flags, Wc)                  <-- lists all connected wizards.
  lsearch(me, type, room)                  <-- lists all rooms owned by me.
  lsearch(me, type, room, flag, W)         <-- lists Wizard rooms owned by me.
  lsearch(me, type, room, 100, 200)        <-- same, but only w/db# 100-200
  lsearch(all, eplayer, \[eq(money(##),100)\]) <-- lists all players with 100 coins.
  lsearch(all, type, player, elock, (FLAG^WIZARD|FLAG^ROYALTY)&!FLAG^IC) ^-- list all wiz and roy players that are not IC.
  lsearch(all, type, player, elock, sex:m*) <- lists all players with an @sex beginning with 'm'
  lsearch(me, elock, !desc:*)              <-- lists all objects you own that don't have an @desc set

