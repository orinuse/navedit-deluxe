**************************
** Tips for Nav Editing **
**************************
++ Why Subdivide / Split Navs? ++
---------------------------------
To maintain moderately-sized navigation areas, which prevents impairing a bot's pathfinding precision, else they may have linear movement that seems "bot-like". This happens because the bots's pathfinding assigns only one "path segment" within each non-destination navigation area, which is located at the navigation area's center point.

Imagining an example scenario might help. Say there's a medium-sized mini garage with a medkit in it, and a bot wants to grab the medkit:
- If there is just a single nav area:
- - There can only be twp path segments in the garage, one for the navigation area itself, and one for the destination: the medkit.
- - The bot's path is very predictable in this case, he'll just walk straight to the medkit.
- If the nav area is split into 9: 
- - Now the path segment count isn't predictable, maybe its 4-7 path segments? (with one being the medkit).
- - The bot can alternate its movement thanks to more path segments. Maybe he'll walk a zig-zag? Maybe a crooked line instead? Beats me.
- - - This also means that a bot can react much better in combat, knowing better how to dodge and retreat.

++ "nav_compress_id" ++
-----------------------
Deserves an honourable mention. Note "nav_generate_incremental" automatically does this after its done.

The name is misleading for modern navigation meshes, its less of a "nav_compress_id" and more a "nav_sort_id". This command reorganises all IDs to be one number after another accordingly, rather than one-to-six numbers after another.

So... what does this comamnd do? I guess one is, comparing the new IDs to their old ones lets you guess how much nav areas were removed/merged. Another one I can think of, makes IDs doable   to be remembered, may be useful for commands that need it, like "nav_warp_to_mark".

Does this affect performance? Maybe, but it will be very little. It might reduce workload for programs that want to interact with the navigation mesh at best.

++ NAV_MESH_PRECISE ++
----------------------
Disables 'Obstacle Avoidance' bot behavior; 'Obstacle Avoidance' prevents bots from being too close to things like geometry, so they can't be stuck. This behavior can be noticed when they walk through small doorway entrances.
- If 'nb_debug' is active, the behavior is highlighted by the occasional boxes that appear around the bot.
- - GREEN: Nothing is in our way
- - RED: Something is in our way, and the code should do something about it. (In TF2, this shows as red for players too, but bots disregard avoiding the players since its assumed they will kill them anyways)
Sometimes, this behavior removes an trait of tf2 players, which is walking along walls/props with no disregard if they're too close. It can look predictable or unorganic, and this nav attribute solves this.

Example places to use:
- Good for slopes *or* geometry that tends to serve no harm to stay near
- - E.G. ctf_2fort's sewer pipes or koth_harvest's wooden railings near the main point.