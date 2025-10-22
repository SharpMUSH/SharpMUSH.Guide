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

