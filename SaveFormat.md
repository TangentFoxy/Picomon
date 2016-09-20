# Save Format

PICO-8 is limited to saving 256 bytes of data in 64 indexes (4 bytes per index).
These indexes store the fixed-point number values PICO-8 uses.

I would like to save integers (0-255) in bytes rather than being limited to 64
numbers. I need to develop a function to allow saving in this manner.

## What needs to be saved

- Picomon
- Picodex
- Items
- Medals (*cough* badges *cough*)
- Location (cartridge, map, map location)
- Other (flags for events or whatever)

### Picomon

To save a picomon, the minimum that is needed is 2 ints. One for name, one for
level. I would *like* to store the sprite, moveset, and stats as well, but
there is very little space for storage.

(Minimal idea is to have all stats based purely on level and name, so that
storing your picomon is very simple. This is a collection game after all!
Maybe store an additional "random" value to modify stats with.)

### Picodex

Will be stored in a single value (or a few), as a bitfield representing if a
picomon has been caught or not.

### Items

Simply an array of however many items can be stored, of ints representing
which item is in that slot (and zero for nothing).

### Medals

A bitfield for each. Perhaps also a sprite so that old badges can be shown
in new cartridges. I have to be careful with what can be carried between
cartridges...

### Location

Optimally, 4 bytes: x, y, map, cartridge. Actually, can use even fewer
bytes by focusing on what values are possible and likely.

### Other

This will hopefully be the biggest area of memory left open, for custom
stuff or the ability to be expanded upon in the future. I want to be as
minimal as possible early on!
