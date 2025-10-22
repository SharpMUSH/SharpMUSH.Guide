# @wait3
`@wait/pid <pid>=<seconds>`
`@wait/pid <pid>=[+-]<adjustment>`
`@wait/pid/until <pid>=<time>`

The `/pid` switch can be used to alter the timeout of entries in the wait and semaphore queues. You can set a new wait time, increase or decrease the current time, or set a new absolute time in seconds.

You must control the object doing the wait, or have the halt @power.

