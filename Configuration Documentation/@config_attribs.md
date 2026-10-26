# @config attribs
These options control some attribute behavior.

- `adestroy=<boolean>`: Is the @adestroy attribute used?
- `amail=<boolean>`: Is the @amail attribute used?
- `player_listen=<boolean>`: Is @listen checked on players?
- `player_ahear=<boolean>`: Is @ahear triggered on players?
- `startups=<boolean>`: Run every @startup attribute when the server starts? Turn it off to keep a broken @startup from running; @restart still works.
- `room_connects=<boolean>`: Are @aconnect and @adisconnect triggered on rooms?
- `read_remote_desc=<boolean>`: Can players look at a far-away object that has no @describe? When it is off, they get "You can't see that from here." An object with a @describe can be looked at from afar unless the attribute is NEARBY.
- `empty_attrs=<boolean>`: Can attributes be set to an empty string?
- `gender_attr=<string>`: The attribute that holds an object's gender, which pronoun substitution reads and [@gender] sets. SEX when blank, and by default.
- `reverse_shs=<boolean>`: Accepted but ignored; it has no effect on passwords or logins.
- `subj_pronoun_attr=<dbref>/<attribute>`: An attribute that gives the subjective pronoun (%s) in place of the built-in one. It is evaluated as with u(), with %0 set to the pronoun the gender would give, and its result is used. Unset by default.
- `obj_pronoun_attr=<dbref>/<attribute>`: The same for the objective pronoun (%o).
- `poss_pronoun_attr=<dbref>/<attribute>`: The same for the possessive pronoun (%p).
- `abs_pronoun_attr=<dbref>/<attribute>`: The same for the absolute possessive pronoun (%a).


