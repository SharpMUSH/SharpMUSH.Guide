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
# SPEAK3

  If `<transform>` is specified (an object/attribute pair or attribute, as with map() and similar functions), the speech portions of `<string>` are passed through the transformation function.

  Speech is delimited by double-quotes (i.e., "text"), or by the specified `<open>` and `<close>` strings. For instance, if you wanted `<<text>`> to denote text to be transformed, you would specify `<open>` as `<< and close as >`> in the function call. Only the portions of the string between those delimiters are transformed. If `<close>` is not specified, it defaults to `<open>`.

  The transformation function receives the speech text as %0, the dbref of `<speaker>` as %1, and the speech fragment number as %2. For non-say input strings (i.e., for an original `<string>` beginning with the :, ;, or | tokens), fragments are numbered starting with 1; otherwise, fragments are numbered starting with 0. (A fragment is a chunk of speech text within the overall original input string.)

  See [speak4].
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
# SPEAK5

  If the result of transforming a given speech fragment is a null string, and `<isnull>` is specified (an object/attribute pair or attribute), that function is used evaluate an alternative result, with %0 as the dbref of `<speaker>`, and %1 as the speech fragment number.

  The `<isnull>` functionality can be useful for gracefully handling cases where speech may be processed down to nothing, such as with language code where no words are successfully translated.

  Consider this example, where the speech string may be randomly removed:

    > &MUTTER_FN me=if(rand(2),"%0",)
    > &NONE_FN me=capstr(subj(%0)) mutters something.
    > @emit speak(me, :tests. "Hello there.", mutters:, MUTTER_FN, NONE_FN)
    Wizard tests. "Hello there."
      OR
    Wizard tests. He mutters something.

  See [speak6].
# SPEAK6

  Elegantly handling an empty string when the type of speech is a plain say is a bit more difficult. In order to facilitate this, when the speech type is a plain say, the '`<speaker>` says,' is only prepended to the output if the transformation of the first speech fragment produces something non-null. Also note that quotes are not placed around such speech automatically, to allow the user's code to insert whatever is appropriate.

  Below is a more elegant version of the mutter example. Here, we find the use for say-speech fragments being numbered starting from 0 rather than 1 -- if the speech fragment number is 0, we know we haven't given any output yet.

    > &MUTTER_FN me=if(rand(2),"%0")
    > &NONE_FN me=switch(%1,0,name(%0),capstr(subj(%0)))] mutters something.
    > @emit speak(me, Hello there., mutters:, MUTTER_FN, NONE_FN)
    Wizard mutters: "Hello there."
      OR
    Wizard mutters something.

  See [speak7].
# SPEAK7

  Here's another example, where words between + signs are reversed, but those within double-quotes are untouched (demonstrating a technique useful in something where you want to allow users to mix ordinary speech with transformed speech).

    > &REV_FN me=switch(%2,0,backwards,capstr(subj(%1)) says backwards), "[revwords(%0)]"
    > @emit speak(me,:tests. "Normal speech." +Mixed up speech+ Success!,, REV_FN,,+)
    Wizard tests. "Normal speech." He says backwards, "speech up Mixed" Success!


