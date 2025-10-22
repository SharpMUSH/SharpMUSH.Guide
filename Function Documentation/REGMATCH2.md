# REGMATCH2

  For example, in
    > think regmatch(cookies=30, (.+)=(\[0-9\]*) )
  (note use of escaping for MUSH parser), then the 0th substring matched is 'cookies=30', the 1st substring is 'cookies', and the 2nd substring is '30'. If `<register list>` is '0:0 1:3 2:5', then %q0 will become "cookies=30", %q3 will become "cookies", and %q5 will become "30".

  If `<register list>` was '0:0 2:5', then the "cookies" substring would simply be discarded. '1:food 2:amount' would store "cookies" in %q`<food>` and "30" in %q`<amount>`.

  See [regexp syntax] for an explanation of regular expressions.

