# SEARCH2

  If `<class>` is one of the eval classes (EVAL, EEXITS, EROOMS, ETHINGS or EPLAYERS), note that any brackets, percent signs, or other special characters should be escaped, as the code in `<restriction>` will be evaluated twice - once as an argument to lsearch(), and then again for each object looked at in the search. Before the per-object evaluation, the string "##" is replaced with the object dbref.

  lsearch() is free unless it includes either an eval-class search or an elock search that contains an eval or indirect lock. Otherwise, it costs find_cost pennies to perform the lsearch.

  lsearchr() is like an lsearch() run through revwords(). Results are returned from highest dbref to lowest. search() is an alias for lsearch().

  See [lsearch3] for examples.


## See Also
- [@search]
- [@find]
- [lparent()]
- [stats()]

