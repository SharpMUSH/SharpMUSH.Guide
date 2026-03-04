# UPTIME()
`UPTIME([<type>])`

  This function returns the time, as a number of seconds, that something happend (or will happen). Exactly what is returned depends on the given `<type>`, which should be one of:

    upsince   - The time the MUSH was started. This is the default.<br>
    reboot    - The time the MUSH was last rebooted.<br>
    save      - The time the MUSH last saved, or -1 if it hasn't.<br>
    nextsave  - The time of the next automatic save.<br>
    dbck      - The time of the next automatic dbck.<br>
    purge     - The time of the next automatic purge.<br>
    warnings  - The time of the next automatic warnings check, or -1 if automated warnings are disabled.


**See Also:**
- [@uptime]
- [secs()]
- [convsecs()]
- [time()]
- [starttime()]
- [restarttime()]
- [restarts()]
- [@dbck]
- [@purge]
- [@warnings]
- [@config]
- [@dump]
- [@shutdown]

