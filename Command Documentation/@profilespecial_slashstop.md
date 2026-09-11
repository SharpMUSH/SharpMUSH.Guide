# @profile
# @profile/start
# @profile/stop

`@profile/start [<seconds>]`

`@profile/stop`

`@profile`

Starts, stops, or displays a temporary profile of function and command invocations.
The default duration is 60 seconds; choose a whole number from 1 to 300. Starting a
new profile replaces your account's previous profile. Recording ends automatically
at expiry, on permission loss, or on restart. Stopped results expire after 15 minutes and may be evicted sooner when another
profile needs capacity. There can be at most eight profiles on the server, with
one per account.

Profiling requires `diagnostics.profile` and queue inspection permission for an
explicitly linked active character executing as itself. Owning an object does not
give its callbacks your account permissions. Both the game commands and the portal
at `/admin/diagnostics` use the same authorization service. The portal requires you
to select the linked character whose authority will be used.

Rows contain source/attribute when known, invocation kind and name, count, failure
count, total inclusive elapsed milliseconds, and longest invocation. Inclusive time
includes nested calls and awaits: nested rows overlap and must not be summed as
CPU usage or added to queue execution time. A source attribute is shown only when
it belongs to the recorded executor. Unknown context stays unknown.

Sampling uses the existing invocation telemetry hooks. It is bounded to 256 distinct
keys per profile and a shared mailbox of 4,096 pending samples; excess samples may
be omitted. Reports always describe this limit and do not expose loss counts that
could reveal activity outside your permissions. A background collector checks
current account and source authority before accepting each batch. Reading results
rechecks access, so revocation also hides previously collected data. No code,
arguments, register values, return values, or arbitrary error messages are captured.

Example:

```sharp
@profile/start 30
think add(2,3)
@profile
@profile/stop
@ps/history 10
```

The profile can include the `ADD` and `THINK` invocations in their visible context.
Commands submitted directly through the game produce queue history; inspecting or
profiling does not change their execution order or admission limits.

