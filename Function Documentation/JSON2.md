# JSON2
  > think json(null)
  null

  > think json(string, Look\, it's "JSON"!)
  "Look, it's \"JSON\"!"

  > think json(array, json(number, pi()), json(string, Pie), json(bool, true))
  [3.141593, "Pie", true]

  > &oneobject me=json(object, name, json(string, name(%0)), dbref, json(string, %0), created, json(number, csecs(%0)))
  > think u(oneobject, #1)
  {"name": "One", "dbref": "#1", "created": 1431039583}

  > think json(array, u(oneobject, #0), u(oneobject, #1), u(oneobject, #2))
  [
   {"name": "Room Zero", "dbref": "#0", "created": 1431039583},
   {"name": "One", "dbref": "#1", "created": 1431039583},
   {"name": "Master Room", "dbref": "#2", "created": 1431039583}
  ]

