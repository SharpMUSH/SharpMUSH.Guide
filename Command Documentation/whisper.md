# whisper
`whisper <player>=<message>`
`whisper/silent <player>=<message>`
`whisper/noisy <player>=<message>`
`whisper/noeval <player>=<message>`
`whisper/list <players>=<message>`

Whispers the message to the named person, if they are nearby. If `<message>` is prefixed with a ':' or ';' it will be posed or semiposed, respectively.

With the `/noisy` switch, other players in the room may be informed who you whisper to (but not what you whisper); the probability that a noisy whisper will be heard is set by the 'whisper_loudness' @config option. With the `/silent` switch, the whisper will not be overheard. (When neither switch is given, the default behaviour is controlled by the 'noisy_whisper' @config option.)

`<message>` will not be evaluated if the `/noeval` switch is given.

The `/list` switch lets you whisper to multiple people at once. In this case, `<players>` is a space-separated list of names, and names with spaces should be enclosed in double-quotes, as per page/list.


## See Also
- [page]
- [pose]
- [@pemit]

