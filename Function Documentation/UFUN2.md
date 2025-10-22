# UFUN2
  The attribute is evaluated by the object it's set on, with that object's priviledges, and NOT by the object using ufun(). Because of this, allowing arbitrary use of ufun() can be insecure.

  You must be able to examine an attribute to ufun() it. If the safer_ufun @config option is on, you must also have equal priviliges (in terms of mortal/Royalty/Wizard/God) to the object the attribute is on. However, attributes with the 'public' flag on can be evaluated by anyone. This is necessary for attributes like 'describe', but should not be set on attributes containing code unless you're sure it's safe for anyone to use them.

  See [ufun3].

