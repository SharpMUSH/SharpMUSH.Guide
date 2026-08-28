# JSON_GROUP_BY()
`json_group_by([<object>/]<attribute>, <list>[, <delimiter>])`

  json_group_by() buckets the elements of `<list>` by a computed key: `<attribute>` (or a #lambda) is evaluated once per element — the element passed as %0, as in filter() and map() — and its result becomes that element's group key. The result is a JSON object mapping each key, in first-seen order, to a JSON array of the elements that produced it.

  Because the key is computed by an attribute, it can be anything derived from the element: an attribute fetched off a dbref, a substring, a classification. An empty list yields {}. Use json_query() to take the result apart.

  Example — group the contents of a room by faction:
```sharp
> &FACTIONOF me=get(%0/FACTION)
> think json_group_by(FACTIONOF, lcon(here))
{"Rebels":["#12","#40"],"Empire":["#7"]}
```


**See Also:**
- [json()]
- [json_array()]
- [json_query()]
- [filter()]
- [map()]
- [chain()]

