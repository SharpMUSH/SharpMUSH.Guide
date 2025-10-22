# @hook7
The following named registers may be available (via `r(<name>,args)`) in your @hook, depending on the command hooked and the arguments given when run; use `registers(,args)` to get the available registers. `/before`, `/after` and `/ignore` hooks can also use the %u substitution to access the entire command string entered.

| Register | Description |
| --- | --- |
| **Always available:** | |
| ARGS | The entire argument string, before evaluation. Always available. |
| LS | If the command doesn't have multiple left-side args, LS is set to the entire left-side arg (before the = for EQSPLIT commands) |
| LSAC | For commands with multiple left-side-args, the number of left-side args given |
| LSAx | The xth left-side-arg, where x is between 1 and LSAC |
| **Available for EQSPLIT commands:** | |
| EQUALS | If the = was given, this is set to "=" |
| RS | For commands without multiple right-side args, this is the entire right-side arg (after the =) |
| RSAC | For commands with multiple right-side-args, the number of right-side args given |
| RSAx | The xth right-side-arg, where x is between 1 and RSAC |
| **Available for SWITCHES commands (such as @lock):** | |
| SWITCHES | The switch string given. (Note: Currently, switches given to normal commands are not available here, but can be accessed via the %u substitution.) |

