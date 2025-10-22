# SPEAK4

  Examples:
```
@va me="Fragment %2 is: %0"
```

    > @emit speak(me, test, ,va)
    Wizard says, "Fragment 0 is: test"

    > @emit speak(me, "test, ,va)
    Wizard says, "Fragment 0 is: test"

    > @emit speak(me, "test, yells:, va)
    Wizard yells: "Fragment 0 is: test"

    > @emit speak(me, :tests. "Hi.", ,va)
    Wizard tests. "Fragment 1 is: Hi."

    > @emit speak(me, ;'s testing. "Hi.", ,va)
    Wizard's testing. "Fragment 1 is: Hi."

    > @emit speak(me, |This is a test. "Hi.", ,va)
    This is a test. "Fragment 1 is: Hi."

    > @emit speak(me, :tests. "Hi." And... "Bye." The end., ,va)
    Wizard tests. "Fragment 1 is: Hi." And... "Fragment 2 is: Bye." The end.

    > @emit speak(me, :tests. "Hi." And... `<<Bye.>`> The end., ,va, , `<<, >`>)
    Wizard tests. "Hi." And... "Fragment 1 is: Bye." The end.

  See [speak5].

