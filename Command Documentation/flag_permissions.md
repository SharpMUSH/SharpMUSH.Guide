# flag permissions
The following permissions can be used when specifying whether `<actor>` may set or clear a flag on an `<object>` they control:

- trusted `<actor>` must pass a TRUST check (see help TRUST)
- royalty `<actor>` must be ROYALTY or WIZARD
- wizard `<actor>` must be WIZARD
- god `<actor>` must be God (#1)

The following permissions can be used to specify whether `<looker>` can see the flag on an `<object>`, and are given along with the `<setperms>` in `@flag/add`. By default, anyone can see the flag:

- dark `<actor>` must be Only God (#1) to see the flag on objects
- mdark `<actor>` must be WIZARD or ROYALTY
- odark `<actor>` must own the `<object>` (or be WIZARD or ROYALTY)

The following permissions control other behavior related to the flag:

log Log when the flag is set or cleared. Only meaningful in `<setperms>`.
event Trigger the OBJECT`FLAG event when this flag is set or cleared. Only meaningful in `<setperms>`. See [events] for more information.

