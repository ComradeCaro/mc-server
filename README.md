# mc-server

[![mcman badge](https://img.shields.io/badge/uses-mcman-purple?logo=github)](https://github.com/ParadigmMC/mcman)

This is my personal minecraft server setup made with mcman. You may use this for any purposes whatsoever.

## Running

Running this with start.sh requires placing this within your home directory otherwise use the run.sh script instead. I must note however that correct configuration of mods and the like aren't guaranteed without personally setting up configs for the individual mods

<!-- run 'mcman md' to update! -->

<!--start:mcman-server-->
| Version | Type                            | Loader   |
| ------- | ------------------------------- | -------- |
| 1.21    | [Fabric](https://fabricmc.net/) | *Latest* |
<!--end:mcman-server-->

## Mods

<!--start:mcman-addons-->
| Name                                                                                | Description                                                                                                                                                                                                    | Version |
| ----------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| [Fabric API](https://modrinth.com/mod/fabric-api)                                   | Lightweight and modular API providing common hooks and intercompatibility measures utilized by mods using the Fabric toolchain.                                                                                | latest  |
| [Cloth Config API](https://modrinth.com/mod/cloth-config)                           | Configuration Library for Minecraft Mods                                                                                                                                                                       | latest  |
| [Collective](https://modrinth.com/mod/collective)                                   | 🎓 Collective is a shared library with common code for all of Serilum's mods.                                                                                                                                   | latest  |
| [Fabric Language Kotlin](https://modrinth.com/mod/fabric-language-kotlin)           | This is a mod that enables usage of the Kotlin programming language for Fabric mods.                                                                                                                           | latest  |
| [Puzzles Lib](https://modrinth.com/mod/puzzles-lib)                                 | Why's it called Puzzles you ask? That's the puzzle!                                                                                                                                                            | latest  |
| [Forge Config API Port](https://modrinth.com/mod/forge-config-api-port)             | NeoForge's & Forge's config systems provided to other modding ecosystems. Designed for a multiloader architecture.                                                                                             | latest  |
| [M.R.U](https://modrinth.com/mod/mru)                                               | Mineblock's Repeated Utilities                                                                                                                                                                                 | latest  |
| [Lithium](https://modrinth.com/mod/lithium)                                         | No-compromises game logic/server optimization mod                                                                                                                                                              | latest  |
| [FerriteCore](https://modrinth.com/mod/ferrite-core)                                | Memory usage optimizations                                                                                                                                                                                     | latest  |
| [ModernFix](https://modrinth.com/mod/modernfix)                                     | All-in-one mod that improves performance, reduces memory usage, and fixes many bugs. Compatible with all your favorite performance mods!                                                                       | latest  |
| [Krypton](https://modrinth.com/mod/krypton)                                         | A mod to optimize the Minecraft networking stack                                                                                                                                                               | latest  |
| [Debugify](https://modrinth.com/mod/debugify)                                       | Fixes Minecraft bugs found on the bug tracker                                                                                                                                                                  | latest  |
| [Concurrent Chunk Management Engine (Fabric)](https://modrinth.com/mod/c2me-fabric) | A Fabric mod designed to improve the chunk performance of Minecraft.                                                                                                                                           | latest  |
| [Let Me Despawn](https://modrinth.com/mod/lmd)                                      | Improves performance by tweaking mob despawn rules. Say bye to pesky unintentional persistent mobs.                                                                                                            | latest  |
| [Noisium](https://modrinth.com/mod/noisium)                                         | Optimises worldgen performance for a better gameplay experience.                                                                                                                                               | latest  |
| [ServerCore](https://modrinth.com/mod/servercore)                                   | A mod that aims to optimize the minecraft server.                                                                                                                                                              | latest  |
| [Alternate Current](https://modrinth.com/mod/alternate-current)                     | An efficient and non-locational redstone dust implementation                                                                                                                                                   | latest  |
| [Ksyxis](https://modrinth.com/mod/ksyxis)                                           | Speed up the loading of your world.                                                                                                                                                                            | latest  |
| [Faster Random](https://modrinth.com/mod/faster-random)                             | An up to 100X* faster Random Generator implementation for Minecraft, with near vanilla parity.                                                                                                                 | latest  |
| [RailOptimization](https://modrinth.com/mod/railoptimization)                       | A simple mod that makes powered/activator rails turn on/off up to 4x faster. Fix vital crash.                                                                                                                  | latest  |
| [ScalableLux](https://modrinth.com/mod/scalablelux)                                 | A Fabric mod based on Starlight that improves the performance of light updates in Minecraft.                                                                                                                   | latest  |
| [Chunky](https://modrinth.com/mod/chunky)                                           | Pre-generates chunks, quickly and efficiently                                                                                                                                                                  | latest  |
| [Leaves Be Gone](https://modrinth.com/mod/leaves-be-gone)                           | Quick leaf decay from cutting down trees. Built for fast performance and mod compat!                                                                                                                           | latest  |
| [BanHammer](https://modrinth.com/mod/banhammer)                                     | Simple, customisable punishment utility mod for Fabric                                                                                                                                                         | latest  |
| [Chunky Border](https://modrinth.com/mod/chunkyborder)                              | An add-on for Chunky which lets you create and manage world borders                                                                                                                                            | latest  |
| [Compact Help Command](https://modrinth.com/mod/compact-help-command)               | 🗜 Modifies the /help command to show all information, be colourful and have multiple pages.                                                                                                                    | latest  |
| [Coord Finder](https://modrinth.com/mod/coord-finder)                               | A serverside Fabric mod to share player and place coordinates on your server                                                                                                                                   | latest  |
| [Daily Dad - Server](https://modrinth.com/mod/daily-dad-server)                     | A dad joke whenever you log in to a server                                                                                                                                                                     | latest  |
| [Discord Integration](https://modrinth.com/mod/dcintegration)                       | This mod links your server chat with a channel on your discord server                                                                                                                                          | latest  |
| [Death Backup](https://modrinth.com/mod/death-backup)                               | 💾 Creates back-ups of player inventories before death, which can be loaded via commands.                                                                                                                       | latest  |
| [Floodgate-Fabric](https://modrinth.com/mod/floodgate)                              | Hybrid mode plugin to allow for connections from Geyser to join online mode servers.                                                                                                                           | latest  |
| [Geyser](https://modrinth.com/mod/geyser)                                           | A bridge/proxy allowing you to connect to Minecraft: Java Edition servers with Minecraft: Bedrock Edition.                                                                                                     | latest  |
| [Head Index](https://modrinth.com/mod/headindex)                                    | An easy to use, server-side head database mod for the Fabric Loader.                                                                                                                                           | latest  |
| [Hurricane](https://modrinth.com/mod/hurricane)                                     | A fabric port of GeyserMC's Hurricane plugin. (before: Camotoys GeyserHacks plugin). Fixes Geyser players getting stuck in bamboo & dripstone, as well as allowing them to ride pigs/striders in a "hacky" way | latest  |
| [Image2Map](https://modrinth.com/mod/image2map)                                     | Turn images into maps!                                                                                                                                                                                         | latest  |
| [Inv View](https://modrinth.com/mod/invview)                                        | Allows you to open and manipulate the inventories and ender chests of online and offline players. Server Side                                                                                                  | latest  |
| [JLine for Dedicated Server](https://modrinth.com/mod/jline4mcdsrv)                 | A server side mod to enable command history, auto completion and syntax highlighting on the server console                                                                                                     | latest  |
| [Just Mob Heads](https://modrinth.com/mod/just-mob-heads)                           | 🗿 Adds a configurable chance for mobs to drop their head, using vanilla resources only.                                                                                                                        | latest  |
| [Just Player Heads](https://modrinth.com/mod/just-player-heads)                     | 🗿 Allows the collection of player heads via command or death event.                                                                                                                                            | latest  |
| [Ledger](https://modrinth.com/mod/ledger)                                           | A serverside logging mod                                                                                                                                                                                       | latest  |
| [LuckPerms](https://modrinth.com/mod/luckperms)                                     | A permissions plugin (mod) for Minecraft servers.                                                                                                                                                              | latest  |
| [Maintenance Mode](https://modrinth.com/mod/maintenancemode)                        | Put your server in Maintenance Mode                                                                                                                                                                            | latest  |
| [Helpful Commands](https://modrinth.com/mod/helpfulcommands)                        | Feature-rich mod that adds lots of useful commands to make your experience better and more optimized. Easily configurable and interactive                                                                      | latest  |
| [Melius Commands](https://modrinth.com/mod/melius-commands)                         | This mod allows you to create custom commands.                                                                                                                                                                 | latest  |
| [Mods Command](https://modrinth.com/mod/mods-command)                               | A Fabric mod adding commands to list, search, and get information about installed mods.                                                                                                                        | latest  |
| [Monsters in the Closet](https://modrinth.com/mod/monsters-in-the-closet)           | Highlights the mobs that are preventing you from sleeping                                                                                                                                                      | latest  |
| [No Chat Reports](https://modrinth.com/mod/no-chat-reports)                         | Makes chat unreportable (where possible)                                                                                                                                                                       | latest  |
| [Servux](https://modrinth.com/mod/servux)                                           | Servux is a server-side mod that provides support for some client-side mods, such as sending structure bounding boxes for MiniHUD                                                                              | latest  |
| [Slime](https://modrinth.com/mod/slime)                                             | /slime command to find slime chunks without world seed                                                                                                                                                         | latest  |
| [Snow Under Trees (Fabric)](https://modrinth.com/mod/snow-under-trees-remastered)   | Adds snow under trees in snowy biomes, making the biomes more immersive.                                                                                                                                       | latest  |
| [spark](https://modrinth.com/mod/spark)                                             | spark is a performance profiler for Minecraft clients, servers and proxies.                                                                                                                                    | latest  |
| [StackDeobfuscator](https://modrinth.com/mod/stackdeobf)                            | Remaps logged stacktraces to readable mappings                                                                                                                                                                 | latest  |
| [TabTPS](https://modrinth.com/mod/tabtps)                                           | Monitor your server's performance in the tab menu, boss bar, and action bar                                                                                                                                    | latest  |
| [TAB](https://modrinth.com/mod/tab-was-taken)                                       | An all-in-one solution that works                                                                                                                                                                              | latest  |
| [Vanish](https://modrinth.com/mod/vanish)                                           |  Fabric vanish mod to completely hide from other players using /vanish                                                                                                                                         | latest  |
| [ViaFabric](https://modrinth.com/mod/viafabric)                                     | Allows to connect to older servers with older versions                                                                                                                                                         | latest  |
| [WITS (What Is This Structure?)](https://modrinth.com/mod/wits)                     | Use \wits to see the name of structures at where you are!                                                                                                                                                      | latest  |
| [View Distance Fix](https://modrinth.com/mod/view-distance-fix)                     | A server side Fabric mod that fixes the fog when having a higher render distance on the client than on the server                                                                                              | latest  |
<!--end:mcman-addons-->
