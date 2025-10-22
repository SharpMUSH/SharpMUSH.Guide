# ALIGN3
  Examples:
```

    > &line me=align(<3 10 20$,([ljust(get(%0/sex),1,,1)]), name(%0),name(loc(%0)))
    > th iter(lwho(),u(line,##),%b,%r)
      (M) Walker     Tree
      (M) Ashen-Shug Apartment 306
          ar
      (F) Jane Doe   Nowhere
```

```
    > &line me=align(<3 10X 20X$,([ljust(get(%0/sex),1,,1)]), name(%0),name(loc(%0)))
    > th iter(lwho(),u(line,##),%b,%r)
      (M) Walker     Tree
      (M) Ashen-Shug Apartment 306
      (F) Jane Doe   Nowhere
```

        See '[align4]' for more examples.

