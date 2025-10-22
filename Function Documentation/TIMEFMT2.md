# TIMEFMT2
  All escape codes start with a $. To get a literal $, use $$. Invalid codes will return #-1 INVALID ESCAPE CODE. Other text will be passed through unchanged.

  $a - Abbreviated weekday name  $p - AM/PM  ($P may also work)
  $A - Full weekday name         $S - Seconds after the minute
  $b - Abbreviated month name    $U - Week of the year from 1rst Sunday
  $B - Full month name           $w - Day of the week. 0 = Sunday
  $c - Date and time             $W - Week of the year from 1rst Monday
  $d - Day of the month          $x - Date
  $H - Hour of the 24-hour day   $X - Time
  $I - Hour of the 12-hour day   $y - Two-digit year
  $j - Day of the year           $Y - Four-digit year
  $m - Month of the year         $Z - Time zone
  $M - Minutes after the hour    $$ - $ character.

