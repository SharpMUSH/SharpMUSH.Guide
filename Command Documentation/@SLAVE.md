# @SLAVE
`@slave/restart [info|ssl]`

@slave is a wizard-only command used to control the various subprocesses used by the mush to do various things. The only switch it currently takes is `/restart`, which will shut down and relaunch the slave daemon process in question.

Two different daemons are used:

info: Resolves IP addresses into host names whenever a new connection is established.
ssl : Handles encrypted SSL connections across @shutdown/reboots.

