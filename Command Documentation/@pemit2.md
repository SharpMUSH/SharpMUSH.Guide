# @pemit2
The @pemit command can take the following additional switches:
- /contents -- equivalent to @remit.
- /silent -- does not tell the @pemit'ing object a confirmation message.
- /noisy -- tells the @pemit'ing object a confirmation message.
- /noeval -- `<message>` will not be evaluated for substitutions
- /spoof -- the enactor's dbref will be used for nospoof notifications instead of the executor's dbref. Requires control over enactor or Can_spoof power.

You cannot @pemit to objects set HAVEN, or objects whose @lock/page you do not pass, unless you are set WIZARD or have the pemit_all @power.


## See Also
- [@emit]
- [@nspemit]
- [@oemit]
- [@remit]
- [NOSPOOF]
- [SPOOFING]
- [page]

