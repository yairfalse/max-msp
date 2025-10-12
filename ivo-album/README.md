# Ivo Album

Generative ambient Max/MSP patches. Berlin autumn/winter 2025.

## The Patches

### Control
- **00-master-control.maxpat** - Roli MPE + keyboard control

### Generators
- **01-snow-drone.maxpat** - 5-voice harmonic drones
- **01b-snow-drone-pro.maxpat** - Drone with UAD/Eventide chain
- **02-snow-visuals.maxpat** - Jitter visuals
- **03-granular-ostinato.maxpat** - Granular ostinato generator
- **04-field-processor.maxpat** - Field recording processor
- **05-pure-tones.maxpat** - Pure sine tones with modulation
- **06-uad-native-test.maxpat** - UAD Native plugin tester

## Quick Start

1. Open `00-master-control.maxpat` for input control
2. Open any generator patch
3. Enable audio and start the patch
4. Record long sessions (20-30 min)

## Keyboard Controls

- **1-5**: Select patch
- **R**: Toggle recording
- **F**: Freeze spectral processing
- **SPACE**: Panic (stop all)

## Roli MPE

- **Press** → Reverb amount
- **Slide** → Filter cutoff
- **Glide** → Modulation depth

## Structure

```
ivo-album/
├── patches/          # Main patches
├── abstractions/     # Subpatches
├── media/           # Audio files
│   ├── sessions/    # Recordings
│   └── samples/     # Source material
└── docs/            # Documentation
```

See `docs/OVERVIEW.md` for detailed patch descriptions.

---

For Ivo.
