# @ps/history

`@ps/history [<limit>]`

Lists recent queue outcomes visible to your linked active character. The default is
50 entries, with a maximum of 100. Each line contains PID (or `-` for rejected work),
full source and owner identities, source attribute when known, kind, outcome, wait milliseconds, elapsed execution
milliseconds, and invocation count. Work cancelled before starting has no execution
measurement. This history contains no command bodies, arguments, register values,
results, or exception messages.

History is local to this server process: at most 1,024 records retained for 15 minutes.
Restarting clears it. Queue limits, cancelled work, execution limits, and failed work
have distinct outcomes. Enqueue/start/end timestamps in the portal are UTC labels;
wait and execution durations use a monotonic clock. Elapsed execution includes waits
for I/O and is not CPU time.

Access uses `queue.inspect.own` for work owned by your active character and
`queue.inspect` for other owners. An explicit own-scope denial cannot be bypassed
with the broader scope. Own history also requires the source and owner identities
to remain current and the character to control that source. The global scope can
inspect metadata for deleted sources. Permissions are checked on every request.


