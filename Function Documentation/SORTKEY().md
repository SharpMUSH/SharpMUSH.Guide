# SORTKEY()
`sortkey([<obj>/]<attrib>, <list>[, <sort type>[, <delimiter>[, <osep>]]])`

  This function creates a list of keys by passing every element of `<list>` into the ufun given in `<attrib>`. The list is then sorted according to the sorting method in `<sort type>`, or is automatically guessed (as per [sorting]).

  This is equivalent to:<br>
    > &munge_sort me=sort(%0[, `<sort type>`])<br>
    > say munge(munge_sort, map(`<attrib>`, `<list>`), `<list>`)

  Only there is no risk with delimiters occurring within the list.

  A simple example, which sorts players by their names:<br>
    > @@ #1 is "God", #2 is "Amby", "#3" is "Bob"<br>
    > &KEY_NAME me=name(%0)<br>
    > say sortkey(key_name, #1 #2 #3)<br>
    You say, "#2 #3 #1"


**See Also:**
- [anonymous attributes]
- [sorting]
- [sortby()]

