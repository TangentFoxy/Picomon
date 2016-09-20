## Functions needed

- [ ] Load a sprite (or sprites?) from text.
- [ ] Load a Picomon (actually, multiple) from text.
- [ ] Load a map from text.

### interface text boxes

To save sprite space, make one corner of the interface and use horizontal and vertical flipping to draw the other corners.
Make the lines of the interface `line()` calls.

(Note: As part of the interface is black lines, the transparency color needs to be changed.)

### reserved sprite space

Make a few spaces of sprite reserved for loading sprite data from text. My idea/example is storing Picomon in text, loading
them in as needed (either on a map or in a battle).
