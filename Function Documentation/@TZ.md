# @TZ

  The time(), timefmt() and convsecs() functions have an optional time zone argument that's used for formatting the time. Without this time zone specified, the one the game's server is running under is used.

  If the time zone argument is a dbref, the contents of that object's @TZ attribute is used as the zone. The attribute is not evaluated. If the object doesn't have this attribute, the server's time zone will be used.

  If it's the string 'UTC', that time zone is used instead of the local one. If it's a number between -24 and +24, it adds that many hours from UTC/GMT. Fractional times are supported, e.g., -1.5 hours.

  If the MUSH supports it (See @config compile), symbolic time zone names can also be used.

  valid(timezone, `<tz>`) tests if `<tz>` can be used as a timezone.

  See HELP TIMEZONES2 for a list of known time zones and HELP TIME2 for some examples.

