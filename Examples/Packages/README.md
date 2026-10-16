# Example packages

Small packages for learning the `package.yaml` manifest format. None of them ships with the server; the
format reference is `examples/packages/README.md` in the SharpMUSH repository, where the full systems
(jobs, bboards, scene and the rest) are also kept.

| Package | Shows |
|---|---|
| [`hello-world/`](hello-world/) | The smallest manifest: one object, one command attribute, and one `+help` topic |
| [`starter-area/`](starter-area/) | Rooms and exits (`location:` / `destination:`) |
| [`coast-guide/`](coast-guide/) | A content pack (format 1.4): wiki pages and nothing else, bodies in files and inline, a category pinned to the wiki home, a page that requires a permission the package declares |
| [`bbs-lite/`](bbs-lite/) | Dependencies with source hints, typed configure params, cross-package refs, conflicts, locks, prerelease versions |

