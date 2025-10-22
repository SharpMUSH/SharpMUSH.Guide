# @filter
`@filter <object>[=<pattern1>[, <pattern2>[, ..., <patternN>]]`

The filter attribute is used in conjunction with the AUDIBLE flag. When set, sound which matches any of the comma-separated list of wildcard patterns in this attribute is not propagated through the audible object.

@filter uses the type of matching described in HELP SWITCH WILDCARDS.

If you need to use a comma in one of the patterns, put a \ before it, do not use {} curly braces.

You can set the regexp flag on the filter attribute to use regular expressions instead of wildcard patterns, and can set the case flag to make the patterns case-sensitive.

Sounds are only forwarded if the speaker also passes `<object>`'s @lock/filter, which receives the sound heard as %0.

See [@filter2] for an example.


## See Also
- [AUDIBLE]
- [@infilter]
- [attribute flags]
- [LISTENING]
- [@forwardlist]
- [@prefix]
- [WILDCARDS]

