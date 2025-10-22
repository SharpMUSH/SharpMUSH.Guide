# SPEAK()
# SPEAKPENN()
`speak(<speaker>, <string>[, <say string>[, [<transform obj>/]<transform attr>[, [<isnull obj>/]<isnull attr>[, <open>[, <close>]]]]])`

  This function is used to format speech-like constructs, and is capable of transforming text within a speech string; it is useful for implementing "language code" and the like.

  If `<speaker>` begins with &, the rest of the `<speaker>` string is treated as the speaker's name, so you can use it for NPCs or tacking on titles (such as with @chatformat). Otherwise, the name of the object `<speaker>` is used.

  When only `<speaker>` and `<string>` are given, this function formats `<string>` as if it were speech from `<speaker>`, as follows.

  If `<string>` is...  the resulting string is...
  :`<pose>`            `<speaker's name>` `<pose>`
  ;`<pose>`            `<speaker's name>``<pose>`
  |`<emit>`            `<emit>`
  `<speech>`           `<speaker's name>` says, "`<speech>`"

  The chat_strip_quote config option affects this function, so if `<speech>` starts with a leading double quote ("), it may be stripped.

  If `<say string>` is specified, it is used instead of "says,".

  See [speak2].

