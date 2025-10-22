# SQL Examples

  Example of using sqlescape() to prevent injection attacks:
    > &SEL_GETID obj=SELECT id FROM mytable WHERE name = '[sqlescape(%0)]'
    > &DOIT obj=$do *: think setq(0,sql(u(SEL_GETID,%0),~,|)); @@ More cmds

  Using mapsql() to format results:
    > @@ Field, Type, Null?, Key?, Default, Extra
    > &each_row me=align(<15 <15 <5 <5 <10 <14,%1,%2,%3,%4,%5,%6)
    > &tabledesc me=mapsql(each_row,describe `[sqlescape(%0)]`,%r,1)
    > think u(tabledesc,quotes)
    Field           Type            Null  Key   Default    Extra
    quoteid         int(11)               PRI              auto_increment
    quote           text

    > &each_bb me=(%0) - %1 (%2)
    > &query me=SELECT `name`, count(*) AS `total` FROM `bbs` GROUP BY `name` ORDER BY `name`
    > think mapsql(each_bb, v(query), %r)
    (1) - Announcements (5)
    (2) - Advertisements (20)

  The same thing can be done using named arguments:
    > &each_bb me=(%0) - [r(name, args)] ([r(total, args)])

  Using sql() to update fields:
    > &update me=UPDATE `foo` SET `time` = '[sqlescape(%0)]' WHERE `loc` = '[sqlescape(%1)]'
    > &foo me=$foo *: think sql(u(update, %0, %L),,0)%q0 rows updated.
    > foo bar
    5 rows updated.


