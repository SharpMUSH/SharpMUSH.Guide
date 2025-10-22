# enter
`enter <object>`

Used to enter a thing or player. You can only enter an object if you own it or if it is set ENTER_OK. You must also pass the enter-lock, if it is set. Entering an object triggers is @enter/@oenter/@oxenter messages and its @aenter actions. If you fail the enter-lock, the object's @efail/@oefail/@aefail messages and actions are triggered.

Insides of objects are best used for vehicles, or storage spaces when you don't have a home. You can describe the interior of an object differently from its exterior by using @idescribe.

See: [@enter], [@efail], [@ealias], [leave], [@lock], [@idescribe], [INTERIORS]

