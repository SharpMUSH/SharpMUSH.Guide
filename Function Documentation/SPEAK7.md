# SPEAK7

  Here's another example, where words between + signs are reversed, but those within double-quotes are untouched (demonstrating a technique useful in something where you want to allow users to mix ordinary speech with transformed speech).

    > &REV_FN me=switch(%2,0,backwards,capstr(subj(%1)) says backwards), "[revwords(%0)]"
    > @emit speak(me,:tests. "Normal speech." +Mixed up speech+ Success!,, REV_FN,,+)
    Wizard tests. "Normal speech." He says backwards, "speech up Mixed" Success!


