# navedit-deluxe
Simplify your edit of Source's navigation meshes down to three clicks and nine keys.
Installation details can be found in each game's respective folder.

## Design Details
TBA

### Rules
Any edits made must meet these requirements:
 
1. Switching modes must be done through the number keys (will include numpad keys in the future).
2. Every mode should have its own help block inside its `.CFG` file, as well as a method for viewing the help block for the current mode via vscript.
3. On mode switch, these 6 keys must be rebound to avoid lingering functions:
	1. Right Hand: `MOUSE1`, `MOUSE2` and `MOUSE3`.
	2. Left Hand: `Q`, `R` and `T`.<br>
	NOTE: If there is no appropiate function for binding, use the "Generalist" mode's keys.
4. Functions set to these keys must persist across all modes:
	- Z (Brainless Bots; `nbstop_orin`)
	- X (GAME-SPECIFIC)
	- C (empty)
5. All modes must designate functions that see the most use to the mouse buttons, with more uncommon ones being bound to the Left Hand keys instead.
	- Keep in mind all bound functions must have a strong role (determined on a case-by-case basis). Do not bind keys just for the sake of binding them.
6. The `Q` key is special and is reserved for mode-specific "toggle" functions if any exist, otherwise it should be left empty.

Neglecting any of these requirements invalidates an edit.

## Modes
WIP

To switch modes, press the non-numpad number keys.

### 1 - Generalist
The default mode of the config, which a user would employ for the connection or disconnection of nav areas.

Help block:
```
///////////////////////
// Left click	- Select nav area(s)
// Right click	- Make a connection
// Middle click	- Destroy a connection
// Scroll wheel	- Warp to marked areas
//
// Q - N/A
// R - Split nav areas
// T - Merge nav areas
///////////////////////
```

### 2 - Area Definition
Define a new navigation area and its size; use if the generated nav is insufficient.

When defining nav areas on props, it may be helpful to anchor the cursor to your feet level via the `Q` key.

Help block:
```
///////////////////////
// Left click	- Begin an area definition
// Right click	- End an on-going area definition
// Middle click	- Select nav area (y tho)
// Scroll wheel	- Warp to marked areas
//
// Q - Toggle 'Feet Cursor'
// R - Split nav areas
// T - Merge nav areas
///////////////////////
```
