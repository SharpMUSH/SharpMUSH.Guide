# MUNGE2
  For example: Consider attribute PLACES, which contains "Fort Benden Ista", and another attribute DBREFS contains the dbrefs of the main JUMP_OK location of these areas, "#20 #9000 #5000". We want to return a list of dbrefs, corresponding to the names of the places sorted alphabetically. The places sorted this way would be "Benden Fort Ista", so we want the final list to be "#9000 #20 #5000". The functions, using munge(), are simple:

    > &sort me=sort(%0)
    > say munge(sort, v(places), v(dbrefs))
    You say, "#9000 #20 #5000"

  See [munge3] for another example.

