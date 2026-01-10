# SORTING
  In functions where you can specify a sorting method, you can provide one of these sort types:

  Type    Sorts:
   a       Sorts lexicographically (Maybe case-sensitive).
   i       Sorts lexicographically (Always case-insensitive).
   d       Sorts dbrefs.
   n       Sorts integer numbers.
   f       Sorts decimal numbers.
   m       Sorts strings with embedded numbers and dbrefs (as names).
   name    Sorts dbrefs by their names. (Maybe case-sensitive)
   namei   Sorts dbrefs by their names. (Always case-insensitive)
   conn    Sorts dbrefs by their connection time.
   idle    Sorts dbrefs by their idle time.
   owner   Sorts dbrefs by their owner dbrefs.
   loc     Sorts dbrefs by their location dbref.
   ctime   Sorts dbrefs by their creation time.
   mtime   Sorts dbrefs by their modification time.
   lattr   Sorts attribute names.

  The special sort key attr:`<aname>` or attri:`<aname>` will sort dbrefs according to their `<aname>` attributes. For example: Separating by &factions or &species attrs. attr is probably case-sensitive, and attri is case-insensitive.

  Prefixing the sort type with a minus sign, -, reverses the order of the sort.

  Whether or not the 'a' sort type is case-sensitive or not depends on the particular mush and its environment.


## See Also
- [sort()]
- [sortby()]
- [sortkey()]
- [setunion()]
- [setinter()]
- [setdiff()]

