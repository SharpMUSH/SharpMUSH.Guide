# What is SharpMUSH?
SharpMUSH is a MUSH server with modern amenities that allow easier administration of a server, and a more modern approach to the MUSH server. It inherits a feature referred to as ‘Softcode’ (A Domain Specific Language), that allows players and admin to further spice up their roleplay, create new objects, rooms, and add other enhancements into the game world. It features a modern web interface, allowing for easy access to the server from anywhere, and modern amenities such as a Scene Logging System.

# Important Considerations
- SharpMUSH is a single instance software. 
- SharpMUSH allows a user to use a Telnet or Websocket connection to interact with it.
- SharpMUSH functions are synchronous across the whole system.
- SharpMUSH command lists are synchronous across the whole system.
- Some SharpMUSH commands are asynchronous across the whole system, when they interact with the command queue. (For instance: @dolist, @wait)
- SharpMUSH functions are considered of the functional paradigm.
- Functions and Commands take in lists by means of delimiters, or singular values. Always reference their documentation to see which they act upon.
- SharpMUSH commands and command-lists are of the imperative paradigm.
- Most code changes to SharpMUSH will be done using Softcode rather than changing the server's C# code.
- Users can generally create commands and the like on their own objects, or even themselves, to enhance their experience with the game. These are local to the Location that the object carrying a command is in.
- It is important to consider Locks, Object Permissions, and the Permissions on the 'Owner' of an object when creating functionality.
- Wizards (A level of permissions giving almost full reign over the serverbase) do most of the administration of SharpMUSH. 
- Wizards can make commands globally accessible by storing them in the 'Master Room'. This is usually #2, unless otherwise defined by the Configuration option.