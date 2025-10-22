# @verb3
Examples:
```
> &VERB_EXAMPLE Test Object=$test:@verb me=%#,TEST,You just tested.,OTEST,just tested the example.,ATEST,%n
> test
You just tested.
[others see] Cyclonus just tested the example.
```

```
> &TEST Test Object=You have just tested this object!
> &ATEST Test Object=@emit %0 has failed!
> &OTEST Test Object=tests test object.
> test
You have just tested this object!
[others see] Cyclonus tests test object.
Cyclonus has failed!
```

See [@verb4] for another example.

