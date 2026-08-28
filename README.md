[![Sync Documentation from SharpMUSH](https://github.com/SharpMUSH/SharpMUSH.Guide/actions/workflows/sync-documentation.yml/badge.svg)](https://github.com/SharpMUSH/SharpMUSH.Guide/actions/workflows/sync-documentation.yml)

# SharpMUSH.Guide

Reference content for [SharpMUSH](https://github.com/SharpMUSH/SharpMUSH), in
Markdown: every command and function, the configuration options, and worked
softcode examples. The three documentation folders are generated daily from the
server's own helpfiles — edit those upstream, not here.

Published to [Context7](https://context7.com) as the `SharpMUSH` library, so AI
coding agents can query it directly.

## The softcode skill

`skills/writing-sharpmush-softcode` is a skill for writing SharpMUSH softcode:
$-commands, functions, attribute trees, event handlers and HTTP endpoints, plus
the places where habit from other MUSH servers quietly produces code that runs
and does nothing. It lives here so that a correction to the guidance and a
correction to the docs it cites go through one review.

Install it into Claude Code:

```text
/plugin marketplace add SharpMUSH/SharpMUSH.Guide
/plugin install sharpmush-softcode@sharpmush
```
