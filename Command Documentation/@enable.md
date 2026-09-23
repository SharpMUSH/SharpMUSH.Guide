# @enable
# @disable
`@enable <option>`<br>
`@disable <option>`

These wizard-only commands change any boolean @config option (see [@config parameters] for a list), answering "Enabled." or "Disabled.". An option that is not on/off, or that @config/set cannot change, is refused.

`@enable <option>` is the same thing as `@config/set <option>=yes`<br>
`@disable <option>` is the same thing as `@config/set <option>=no`

Like @config/set, the change is stored and lasts across restarts.


**See Also:**
- [@config]

