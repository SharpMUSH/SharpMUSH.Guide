# SPEAK2

  Examples:
```
say [name(me)]
You say, "Wizard"
```

    > @emit [speak(me, :tests.)]
    Wizard tests.

    > @emit [speak(me, ;'s testing.)]
    Wizard's testing.

    > @emit [speak(me, |Test.)]
    Test.

    > @emit [speak(me, "Test.)]
    Wizard says, "Test."

    > @emit [speak(me, Test.)]
    Wizard says, "Test."

    > @emit [speak(me, Test., yells:)]
    Wizard yells: "Test."

    > @emit [speak(&Fido the Wonder Dog,:woofs!)]
    Fido the Wonder Dog woofs!

    > @emit [speak(&Mr. President,:has been misunderestimated.)]
    Mr. President has been misunderestimated.

  See [speak3].

