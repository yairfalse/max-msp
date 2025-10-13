# Mega Sampler - Beast Mode

**File**: `patches/07-mega-sampler.maxpat`

## What It Does

The nuclear option. Load any sample and absolutely destroy/beautify it with:
- Scale quantization (12 scales + 3 generative modes)
- 3-voice harmonizer
- Extreme granular processing
- Endless reverb
- Pitch shifting (±3 octaves)

## Features

### Scale Selector

Choose your harmonic universe:

**Traditional Scales:**
- Chromatic (12-TET) - All notes
- C Major - Happy
- C Minor - Sad
- C Dorian - Modal jazz/ambient
- Pentatonic Major - Simple, bright
- Pentatonic Minor - Simple, dark
- Whole Tone - Dreamy, Debussy
- Harmonic Minor - Exotic
- Phrygian - Spanish, dark

**Generative Scales:**
- Random - Completely chaotic intervals
- Fibonacci - 0 1 2 3 5 8 (math-based)
- Golden Ratio - Phi-based intervals

When you play Roli, notes snap to selected scale!

### Harmonizer

3-voice harmonizer with adjustable intervals:
- Voice 1, 2, 3: Set interval in semitones (-24 to +24)
- Default: 5th (7), Octave (12), Octave+5th (19)
- Create instant chords from single notes

Examples:
- Major chord: 0, 4, 7
- Minor chord: 0, 3, 7
- Power chord: 0, 7, 12
- Cluster: 0, 1, 2 (dissonant!)
- Shimmer: 12, 19, 24 (octaves up)

### Mega Granular

Extreme granular engine:
- **Grain Size**: 1-500ms (tiny clicks to smooth textures)
- **Grain Density**: 1-100 grains/second
- **Pitch Shift**: 0.125-8.0 (±3 octaves)
- **Position Spread**: 0-1 (randomness)

### Endless Reverb

Shimmer verb on steroids:
- **Room Size**: 0.5-1.0 (0.99-1.0 = infinite)
- **Damping**: 0-1 (0=bright, 1=dark)
- **Wet/Dry**: 0-1 (crank to 1.0 for full wet)

At size=1.0, damp=0.2, mix=1.0 = ENDLESS SHIMMER

### Quick Presets

**Shimmer Verb:**
- Size: 1.0
- Grain pitch: 2.0 (octave up)
- Harmonizer: 12, 19, 24
- Result: Angelic shimmer

**Grain Cloud:**
- Size: 50ms
- Density: 80
- Spread: 0.8
- Result: Dense texture cloud

**Destroy:**
- Size: 5ms
- Pitch: 0.25 (2 octaves down)
- Density: 100
- Result: Glitchy chaos

**Ambient Wash:**
- Size: 200ms
- Pitch: 0.5
- Reverb: 0.95
- Result: Smooth wash

## Workflow

1. **Load sample** (field recording, synth, voice, anything)
2. **Choose scale** (try Dorian or Pentatonic for ambient)
3. **Set harmonizer intervals** (5th + octave is safe)
4. **Play Roli** - notes snap to scale, harmonized
5. **Tweak granular** for texture
6. **Crank reverb** for endless space
7. **Destroy reality**

## Performance Tips

- Start with traditional scales, move to generative later
- Use Fibonacci scale for mathematical beauty
- Harmonizer at 12, 19, 24 = instant shimmer
- Grain size 100-200ms = smooth ambient
- Grain size 1-20ms = glitchy IDM
- Reverb size 0.99+ wet 1.0 = never-ending
- Load drone samples and freeze them in time

## Integration

Works with master-control patch:
- Roli input is quantized to scale
- Can be Layer 5 in live performance
- Add to scene 4 for maximum chaos

---

This is the secret weapon. Use wisely.
