# IVO Album - Max/MSP Performance System

Cinematic ambient music performance system for "Berlin Autumn" themed album. Features live synthesis, algorithmic drum generation, and integrated effects processing.

## Project Structure

```
max-msp/
└── ivo-album/
    └── patches/
        ├── 00-ivo-master-performance.maxpat    # Master control & mixer
        ├── 01-snow-drone.maxpat                # Drone synthesizer
        ├── 02-granular-ostinato.maxpat         # Granular processor
        ├── 03-super-saw.maxpat                 # Supersaw synthesizer
        ├── 04-live-looper.maxpat               # Live looper
        ├── 05-glass-shards.maxpat              # Glass shards synth
        ├── 07-mega-sampler.maxpat              # Autechre FM drum machine
        ├── euclid.js                           # Euclidean rhythm generator
        └── ...
```

## System Architecture

### Master Performance Patch (`00-ivo-master-performance.maxpat`)

Central hub controlling the entire performance system:

#### MIDI Input
- **ROLI Seaboard** - MPE (MIDI Polyphonic Expression) for expressive control
- **Keystep** - Traditional keyboard input with arpeggiator integration

#### 7-Channel Mixer
1. **Snow Drone** - Ambient drone layer
2. **Granular Ostinato** - Textural granular synthesis
3. **Super Saw** - Rich supersaw synth
4. **Live Looper** - Real-time looping
5. **Glass Shards** - Crystalline synth textures
6. **Drums** - Autechre-style FM drum machine
7. **Master** - Combined output

#### Master Effects Chain
- **UAD Lexicon 224** - Reverb (via VST)
- **UAD Galaxy Tape Echo** - Delay/echo (via VST)
- Recording output to disk

#### Performance Controls
- **Smart Randomization**
  - Randomize Rhythm Only (keeps timbres)
  - Randomize Timbre Only (keeps patterns)
  - Chaos Mode (full randomization)
- **Sidechain Ducking** - Kick-triggered ducking on pads/drones
- **Master Clock** - BPM + clock broadcasts to all patches
- **Pattern Randomizer** - Global bang for generative variation

---

## Autechre FM Drum Machine (`07-mega-sampler.maxpat`)

Algorithmic 4-voice FM percussion synthesizer with generative sequencing.

### Features

#### Synthesis Engines
- **Kick** - 2-operator FM with pitch envelope sweep (800Hz → base) + tanh~ distortion
- **Snare** - 2-operator FM + band-pass filtered noise (SVF~ 2000Hz)
- **Hi-hat** - 3-operator metallic FM + high-pass filtered noise (SVF~ 8000Hz)
- **Perc** - 2-operator with full algorithmic randomization (freq 200-2200Hz)

#### Sequencing
- **Euclidean Rhythm Generation** - Bjorklund's algorithm via `euclid.js`
  - Independent steps (1-16) and pulses (1-16) per voice
  - Mathematically distributed beat patterns
- **Probability Gates** - Per-voice probability (0-1) for stochastic triggering
- **Master Clock Sync** - Receives BPM and clock from master patch

#### Modulation
- **Per-Voice LFOs** - 4 independent LFOs modulating FM index/ratio
  - Rate controls (Hz): 0.05-1.0Hz typical
  - Depth controls for modulation amount
  - Creates evolving, breathing timbres (very Autechre)
- **Algorithmic Drift** - Random parameter variation on perc voice

#### Performance Tools
- **16-Slot Preset System** - Pattern save/recall with `pattrstorage`
- **Visual Step Indicator** - 16-step display with current position highlight
- **LED Feedback** - 4 colored LEDs (kick/snare/hihat/perc) show active drums
- **Individual Outputs** - Separate sends (`kick-out`, `snare-out`, etc.) for routing

#### Routing
- `r master-bpm` - Tempo from master
- `r master-clock` - Clock ticks from master
- `r pattern-randomize` - Randomization trigger
- `s~ drum-out` - Main drum mix to master
- `s~ kick-out`, `s~ snare-out`, etc. - Individual drum outputs

---

## Performance Workflow

1. **Start Master Patch** - `00-ivo-master-performance.maxpat`
2. **Set BPM** - Adjust master tempo (broadcast to all patches)
3. **Load Drum Pattern** - Recall preset 1-16 or create new pattern
4. **Adjust Euclidean Rhythms** - Steps/pulses per voice
5. **Tweak Probabilities** - Add stochastic variation (0-1)
6. **Modulate with LFOs** - Adjust rate/depth for movement
7. **Layer Synths** - Bring in drones, pads, textures via mixer
8. **Randomize** - Use smart randomization buttons for instant variation
9. **Record** - Hit record button to capture performance

---

## Technical Details

### Dependencies
- Max/MSP 8.5+
- **Vanilla Max objects only** (no external dependencies)
- UAD Powered Plug-Ins (optional, for reverb/delay)

### Key Algorithms
- **Bjorklund's Euclidean Rhythm** - `euclid.js` (106 lines)
- **FM Synthesis** - 2-op and 3-op configurations
- **Envelope Followers** - For sidechain ducking
- **State-Variable Filters** - `svf~` for resonant filtering

### Audio Routing
- `send~` / `receive~` for all audio connections
- Individual channel gains via `gain~` objects
- Master gain and output to `ezdac~` or recording

---

## Quick Start

1. Open `00-ivo-master-performance.maxpat`
2. Turn on audio (click speaker icon)
3. Set BPM to desired tempo
4. Open drum machine (`07-mega-sampler.maxpat`)
5. Adjust mixer levels for each channel
6. Hit the master clock randomize button for instant patterns
7. Tweak Euclidean parameters and probabilities
8. Save patterns to presets (1-16)

---

## Credits

Built with Max/MSP 8.6
Performance system for "Berlin Autumn" album
Inspired by Autechre's approach to algorithmic FM percussion
