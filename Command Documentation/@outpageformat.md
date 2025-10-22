# @outpageformat
`@outpageformat <object>[=<message>]`
`@pageformat <object>[=<message>]`

`@pageformat` changes the message seen by `<object>` when it receives a page.
`@outpageformat` sets the message seen by `<object>` when it sends a page.

%0 will be set to the page message (not including :, ; or ").
%1 will be set to ':' ';' or '"' for pose, semipose and normal page, respectively.
%2 will be set to the alias of the pager, if any.
%3 will be a space-separated list of recipient dbrefs.
%4 will be set to the default message.

See [@pageformat2] for examples.


## See Also
- [page]
- [speak()]
- [@chatformat]
- [@speechmod]
- [@message]

