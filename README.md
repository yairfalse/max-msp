# Max/MSP Album Project

An experimental ambient music project using Max/MSP patches.

## Project Structure

Max/MSP projects are organized differently than traditional code projects. Here's the recommended structure:

```
max-msp/
├── README.md
├── patches/           # Main patches (.maxpat files)
├── abstractions/      # Reusable subpatches
├── externals/         # Third-party objects/libraries
├── media/            # Audio samples, recordings
├── data/             # JSON, text files for data
├── code/             # JavaScript code for [js] objects
└── docs/             # Documentation, notes
```

## Max/MSP Concepts for Programmers

### Key Differences from Traditional Programming

- **Visual Dataflow**: Instead of text-based code, you connect objects with patch cords. Data flows top-to-bottom, left-to-right.
- **Hot/Cold Inlets**: Right-to-left evaluation. Rightmost inlet is "cold" (stores value), leftmost is "hot" (triggers computation).
- **Message Passing**: Objects communicate via messages (like actor model), not function calls.
- **No Compile Step**: Patches are interpreted in real-time.

### Object Types

- **MSP objects** (audio): Start with `~` (e.g., `cycle~`, `filtergraph~`)
- **Jitter objects** (video/matrix): Start with `jit.` (e.g., `jit.matrix`)
- **Gen objects** (low-level DSP): `gen~` for sample-level audio processing
- **JavaScript**: Use `[js]` object to write actual code

### Version Control

- `.maxpat` files are JSON - they diff well in git
- Keep patches organized and modular (like functions/modules)
- Use abstractions for reusable components (like libraries)
- Comment your patches (cmd+shift+C creates a comment box)

### Best Practices

1. **Modular Design**: Break complex patches into abstractions (subpatches)
2. **Naming**: Use clear names for abstractions (like function names)
3. **Encapsulation**: Use `[patcher]` and `[bpatcher]` to create self-contained modules
4. **Initialization**: Use `[loadbang]` for startup initialization (like `init()`)
5. **Error Handling**: Use `[route]` and message filtering to handle edge cases
6. **Performance**: Audio rate (MSP~) vs control rate (Max) - know the difference
7. **Documentation**: Add comments and use presentation mode for clean interfaces

### Typical Workflow

1. Create main patch in `patches/`
2. Build and test incrementally (like TDD but interactive)
3. Extract reusable parts into `abstractions/`
4. Add JavaScript for complex logic in `code/`
5. Save presets using `[preset]` object

### Learning Resources

- Max/MSP documentation: In-app help (alt+click any object)
- Tutorial patches: File → New From Template
- Forums: cycling74.com/forums

## Getting Started

Open Max/MSP and start with a patch in the `patches/` directory.

### Project Goals

- Experimental ambient music creation
- Break away from modular synth / DAW workflow
- Explore generative and algorithmic techniques
- Create unique textures and soundscapes
