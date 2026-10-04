# @storage
`@storage`<br>
`@storage/history`<br>
`@storage/purge`

Wizard-only. Reports where the world's disk goes, and what the version histories inside it hold. This is a SharpMUSH command; PennMUSH keeps its database in memory and has no file to report on.

`@storage` alone reports four figures that are easy to confuse:

- the **map limit**, the most the world's file may ever grow to. It is a ceiling, not an allocation: it costs neither disk nor memory until it is used.
- the **file length**, how far the file has grown.
- what is **allocated on disk** for it, which can be less than its length.
- the **live data** inside it, and the **free space** inside it that later writes will reuse.

Deleting things frees space inside the file for reuse. It never shrinks the file. The file only gets smaller when it is replaced with a compacted copy; `deploy/README.md` describes how to do that safely. The report then says what the next `@backup` needs: the copies kept, the size of the next copy, the free space a run checks for before it starts, and the most the backup directory holds during a run. It also lists earlier worlds still on disk, such as the `.previous` world a promoted import replaced. Those are kept until you delete them.

`@storage/history` counts the history the world keeps and gives each kind's retention policy:

- **wiki**: every revision of every wiki page and translation.
- **scene.edits**: every version of every scene pose.
- **scene.deleted**: poses deleted from a scene but still stored. Deleting a pose only hides it.

A *stream* is one page's text in one language, or one pose.

`@storage/purge` runs a retention pass now. It removes what each kind's policy allows. A record that is purged is gone from the live world. It survives only in an archive, if one is configured, and in backups taken before the pass. The pass works in small batches and the game keeps running throughout.

The policy is set on the server, not with `@config`. **The default keeps everything**, so `@storage/purge` purges nothing until a policy is configured. A policy never removes:

- the version a page or pose shows now.
- any pose version that `redo` can still reach.
- anything on a protected wiki page.

Undo stops at the oldest version that survives. A wiki rollback can only go back to a revision that survives. See `deploy/README.md` for the settings.


**See Also:**
- [@backup]
- [@stats]

