# enter
`enter <object>`

Used to enter a thing or player. You can only enter an object if you own it or if it is set ENTER_OK. You must also pass the enter-lock, if it is set. Entering an object triggers is @enter/@oenter/@oxenter messages and its @aenter actions. If you fail the enter-lock, the object's @efail/@oefail/@aefail messages and actions are triggered.

`enter` outputs the dbref of the object you enter.

`enter/quiet` leaves out your @move and @omove messages. With the `mux_quiet` @config option on, it leaves out the object's @enter and @oenter messages and the @oxleave of where you were instead, when you control the object; its @aenter still runs.

Insides of objects are best used for vehicles, or storage spaces when you don't have a home. You can describe the interior of an object differently from its exterior by using @idescribe.

See: [@aenter], [@aefail], [@ealias], [leave], [LOCKING], [@idescribe], [interiors]

