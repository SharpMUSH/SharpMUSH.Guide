# ETIMEFMT2
  etimefmt()'s escape codes are similar to timefmt()'s. The time is broken up into days, hours, minutes, and seconds, and each value replaces the matching code.

  $s - The number of seconds.    $h - The number of hours.
  $m - The number of minutes.    $d - The number of days.
  $w - The number of weeks.      $y - The number of 365-day years.
  $$ - A literal $.

  You can also put a number between the $ and letter to specify a minimum width for the expanded code. The string is padded with spaces by default - use uppercase to pad with 0s instead ($3S, rather than $3s). An 'x' before the code (but after any number) will automatically add a d, h, m, or s suffix to the time, and a 'z' will not display anything if the field's value is 0. x and z can be combined.

 Normally, a particular time interval is shown using the remainder of the next largest interval - for example, $s with a time of 65 displays 5, not 65. The exception is $d, which only acts like this if $w or $y is also given. A 't' between the $ and code (But after a width) will print out the total seconds, minutes, etc. instead.

  See [etimefmt3] for more examples.

