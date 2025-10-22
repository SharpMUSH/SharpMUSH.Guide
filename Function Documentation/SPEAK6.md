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

