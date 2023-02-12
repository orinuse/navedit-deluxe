# navedit-deluxe
Simplify your edit of Source's navigation meshes down to three clicks and three(?) keys.
Installation details are found in each game's respective folder.

## Design Details
### Regulations

1. Switching modes must be done by the number keys. (Numpad keys in the future)
2. All modes should have its own help block in the CFG, aswell as a way to view help for the current mode via vscript. 

## Modes
To switch nodes, press the non-numpad number keys.

### Rules
Any edits to be made must meet these requirements:
 
1. Each mode must rebind these 6 keys; If custom function are not sufficent, rebind the keys back to Mode 1's.
	1. Right Hand: `MOUSE1`, `MOUSE2` and `MOUSE3`.
	2. Left Hand: `Q`, `R` and `T`.
2. Functions set in these keys must persist across all modes:
	- Z (Brainless Bots; `nbstop_orin`)
	- X (empty)
	- C (empty)
3. All modes must designate functions that see the most use to the mouse keys, whereas the ones used uncommonly binded to the Left Hand keys instead.
	- Keep in mind all binded functions must have a strong role (determined on a case-by-case basis); Do not bind keys for the sake of binding them.

Failing any of these requirements invalidates an edit.

### 1 - Generalist
The default mode of the config, where an user uses for the connection or disconnection of nav areas.

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

### 2 - Area Define
Define a new navigation area and its size; for use if the generated nav is inadequate.

When defining nav areas on props, it may be helpful to force the cursor to stay above your feet level via the `Q` key.

Help block:
```
///////////////////////
// Left click	- Begin an area define
// Right click	- End an on-going area define 
// Middle click	- Select nav area (y tho)
// Scroll wheel	- Warp to marked areas
//
// Q - Toggle 'Feet Cursor'
// R - Split nav areas
// T - Merge nav areas
///////////////////////
```