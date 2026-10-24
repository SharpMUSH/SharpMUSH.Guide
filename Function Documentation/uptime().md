# uptime()
`UPTIME([<type>[, <precision>]])`

  This function returns the time, as a number of seconds, that something happend (or will happen). Exactly what is returned depends on the given `<type>`, which should be one of:

    upsince   - The time the MUSH was started. This is the default.<br>
    reboot    - The time the MUSH was last rebooted.<br>
    save      - Always -1: SharpMUSH has no scheduled save.<br>
    nextsave  - Always -1.<br>
    dbck      - Always -1: SharpMUSH has no scheduled dbck.<br>
    purge     - The time of the next automatic purge.<br>
    warnings  - The time of the next automatic warnings check, or -1 if automated warnings are disabled.


::: seealso
- [@uptime]
- [SECS()]
- [CONVSECS()]
- [time()]
- [STARTTIME()]
- [STARTTIME()]
- [RESTARTS()]
- [@dbck]
- [@purge]
- [@warnings]
- [@config]
- [@dump]
- [@shutdown]
:::

