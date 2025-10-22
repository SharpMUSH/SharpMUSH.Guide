# MUNGE2
  For example: Consider attribute PLACES, which contains "Fort Benden Ista", and another attribute DBREFS contains the dbrefs of the main JUMP_OK location of these areas, "#20 #9000 #5000". We want to return a list of dbrefs, corresponding to the names of the places sorted alphabetically. The places sorted this way would be "Benden Fort Ista", so we want the final list to be "#9000 #20 #5000". The functions, using munge(), are simple:

    > &sort me=sort(%0)
    > say munge(sort, v(places), v(dbrefs))
    You say, "#9000 #20 #5000"

  See [munge3] for another example.
# MUNGE3
  Another common task that munge() is well suited for is sorting a list of dbrefs of players by order of connection. This example uses #apply to avoid the need for the sort attribute, and also unlike the other example, it builds the list to sort on out of the list to return.

    > &faction_members me=#3 #12 #234
    > say munge(#apply/sort, map(#apply/conn, v(faction_members)), v(faction_members))
    You say, "#12 #234 #3"


## See Also
- [anonymous attributes]

