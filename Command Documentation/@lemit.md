# @lemit
`@lemit[/<switch>] <message>`

Emits a message to the outermost container object. For example, if you are carrying a bird, and are inside a vehicle which is in room #10, and you force the bird to @lemit "Cheep", everyone in room #10 will hear "Cheep". This command is the same as "@emit/room".

With the `/silent` switch, no confirmation message is shown. With `/noisy`, it is. If neither is given, the silent_pemit option determines if it is shown.
The `/noeval` switch prevents `<message>` from being evaluated.
The `/spoof` switch causes nospoof notifications to show the enactor's dbref instead of the executor's dbref, and requires control over the enactor or the Can_spoof power.


## See Also
- [@remit]
- [@nslemit]

