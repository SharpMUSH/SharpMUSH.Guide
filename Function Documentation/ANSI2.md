# ANSI2
  Old-style valid color codes are:
```
        f - flash                       F - not flash
        h - hilite                      H - not hilite
        u - underscore                  U - not underscore
        i - inverse                     I - not inverse
        n - normal

        d - default foreground          D - default background
        x - black foreground            X - black background
        r - red foreground              R - red background
        g - green foreground            G - green background
        y - yellow foreground           Y - yellow background
        b - blue foreground             B - blue background
        m - magenta foreground          M - magenta background
        c - cyan foreground             C - cyan background
        w - white foreground            W - white background
```
  For example, "ansi(fc, Test)" would hilight "Test" in flashing cyan. Default foreground and background use the client's default color for fore and back.
# ANSI3

  Bright yellow text on a blue background:
  > think ansi(yB, foo)

  Orange text on an ANSI-green background:
  > think ansi(G+orange, bar)

  Underlined pink text on a purple background
  > think ansi(u+lightsalmon/#a020f0, ugly)

  ANSI-blue text on a bisque background
  > think ansi(+yellow/+bisque b, the 'b' overrides the earlier '+yellow')

