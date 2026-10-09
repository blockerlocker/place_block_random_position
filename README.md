For Minecraft 26.4

When the player places a block, the block is randomly teleported to another position within a set radius. By default the radius is 3, but you can change it by running `/data modify storage place_block_random_position:settings radius set value <NEW_VALUE>` where `<NEW_VALUE>` is what you want to set the radius to.

This pack uses a slightly modified version of the data pack library [Iris by Aeldrion](https://github.com/Aeldrion/Iris) in order to detect block placement. However, the version of Iris I am using is somewhat outdated, and can fail to accurately detect placing a block on the face of a newer block (for example, placing a block on the side of an Icicle). This is a known bug and I hope to fix it soon, no need to report it.

If you have any other issues, feel free to make a help thread in my Discord server: https://discord.blocker.locker