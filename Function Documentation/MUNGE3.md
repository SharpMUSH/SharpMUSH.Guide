# MUNGE3
  Another common task that munge() is well suited for is sorting a list of dbrefs of players by order of connection. This example uses #apply to avoid the need for the sort attribute, and also unlike the other example, it builds the list to sort on out of the list to return.

    > &faction_members me=#3 #12 #234
    > say munge(#apply/sort, map(#apply/conn, v(faction_members)), v(faction_members))
    You say, "#12 #234 #3"


## See Also
- [anonymous attributes]

