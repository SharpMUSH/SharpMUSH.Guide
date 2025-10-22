# @chzone2
To see the Zone of an object, you can use either 'brief' or 'examine' to examine it. The Zone is listed on the same line as the Owner of the object.

If `<zone>` does not have a Zone @lock when something is @chzoned to it, the lock is automatically set to `_`<zone>` (see [@lock] for more info).

Whenever an object besides a player is @chzoned to a zone object, the WIZARD, ROYALTY, and TRUST flags will be reset, as will all @power's (for security purposes). For similar reasons, it is strongly recommended that you do not @chzone admin- or wizard-owned objects to any zone that less privileged players have access to. Wizards can use the `/preserve` switch to prevent this reset.


## See Also
- [ZONES]
- [@chzoneall]
- [zone()]

