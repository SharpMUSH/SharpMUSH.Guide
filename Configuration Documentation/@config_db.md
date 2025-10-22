# @config db
These are database options.

- `player_start=<dbref>`: What room newly created players are in.
- `master_room=<dbref>`: The location of the master room.
- `ancestor_room=<dbref>`: If set to a good object, this is considered a global parent for all rooms. If -1 or a nonexistant object, then disabled.
- `ancestor_exit=<dbref>`: As ancestor_room for exits.
- `ancestor_thing=<dbref>`: As ancestor_room for things.
- `ancestor_player=<dbref>`: As ancestor_room for players.
- `base_room=<dbref>`: The starting room used to determine if other rooms are disconnected.
- `default_home=<dbref>`: The room to send things to when they're homeless.
- `exits_connect_rooms=<boolean>`: Is a room with any exit at all in not considered disconnected for FLOATING checks?
- `zone_control_zmp_only=<boolean>`: Do we only perform control checks on ZMPs, or do we check ZMOs and ZMRs too?


