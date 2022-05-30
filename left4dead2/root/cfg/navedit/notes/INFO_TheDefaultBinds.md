__Default Keybinds__
If you have any you don't like, go ahead and change it on your own end. Fyi, none of these are numpad keys. (`KP_` prefix)

*****************
** Editing I/O **
*****************
MOUSE1 - nav_mark
MOUSE2 - nav_connect
MOUSE3 - nav_disconnect

U	- nav_corner_select
T	- nav_corner_raise
Y	- nav_corner_lower
E	- nav_merge
R	- nav_split
P	- nav_corner_place_on_ground
G	- nav_begin_area
H	- nav_end_area
`-`	- nav_splice
`\`	- nav_precise
`;`	- nav_subdivide

Q - Toggles `tf_show_mesh_decoration`; a warning will inform regarding how to avoid a crash
Z 	- Toggle frozen bots
X 	- Whether if the cursor should not go below your feet
C	- Sorts nav area IDs accordingly; this helps with AI optimization
`/`	- Toggle `nb_debug PATH`
`'`	- Toggle current timescale for easier debugging; timescale options are `0.8`, `0.6` and `1.0`

******************
**   File I/O   **
******************
HOME	- Run the "keyboard_controls" CFG file; you should make your own with `key_listboundkeys`
1	 	- nav_delete
2	 	- Save current nav file
3	 	- Load last saved nav file; re-confirmation is required
4	 	- Attempt to analyze current nav file while also removing all bots; re-confirmation is required