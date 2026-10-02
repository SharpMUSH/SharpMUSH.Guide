# @config chat
These options control chat system settings.

- `chan_cost=<number>`: How many pennies a channel costs to create.
- `max_channels=<number>`: How many channels can exist total.
- `max_player_chans=<number>`: How many channels can each non-admin player create? If 0, mortals cannot create channels.
- `noisy_cemit=<boolean>`: Is @cemit/noisy the default?
- `chan_title_len=<number>`: How long can @channel/title's be?
- `use_muxcomm=<boolean>`: Enable MUX-style channel aliases? See [MUXCOMSYS]
- `chat_token_alias=<character>`: A single character that can be used as well as + for talking on channels (+<chan> <msg>)
- `page_log=<boolean>`: Keep each player's pages so they can read their page history, in game (page/recall) and in the web portal? A SharpMUSH extension, on by default; set it to no to keep no page log. See [page log]
- `page_log_retention_days=<number>`: How many days a logged page is kept. -1 (the default) never deletes.


