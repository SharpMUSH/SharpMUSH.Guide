# @package
`@package/scan <objects>`<br>
`@package <objects>=<package-id>[,<version>[,<description>]]`

Wizard-only. Turns one or more live objects into a softcode package manifest (`package.yaml`), the same format the web authoring panel produces at `/admin/packages/author`. `<objects>` is a space-separated list of dbrefs or names.

`@package/scan` is read-only: it lists each object, the manifest ref it would be given, and any dbrefs the objects reference *outside* the selection.

`@package <objects>=<package-id>` exports the selection and pemits the resulting manifest back to you. Dbrefs that point at another selected object are converted to symbolic `{{ref}}` tokens automatically. `<version>` defaults to `1.0.0` and `<description>` defaults to an auto-generated note.

This single-step export only succeeds when the selection is **self-contained** — every dbref in the objects' attributes points at another selected object. If any attribute references an object outside the selection, that dbref must be classified as a well-known object or a configure parameter, which is done in the web authoring panel; `@package` will tell you which dbrefs are unresolved and point you there.

`@package` obeys the same visibility rules as `@decompile`: an object must pass your examine permission, and only the attributes you can see — VEILED attributes excluded — are scanned or written into the manifest.


**See Also:**
- [@decompile]
- [PACKAGES]

