# Ivo Album - Max/MSP Patches Overview

A collection of generative ambient patches for creating sweet, evolving soundscapes. For baby Ivo.

## Concept

Berlin autumn/winter vibes. Optimistic but muted. The feeling before snow. Somewhere between the colorful warmth of "Ensemble" and the reduction of "Further Reduction".

## The Patches

### 01-snow-drone.maxpat
**Generative harmonic drones**

Five sine wave oscillators creating slowly evolving harmonic textures. Every 5 seconds, each voice randomly shifts to a new frequency within its harmonic range. Creates peaceful, consonant drones perfect for ambient beds.

- Voice 1: Fundamental (80-120 Hz)
- Voice 2: Octave (160-240 Hz)
- Voice 3: Fifth (240-360 Hz)
- Voice 4: Major Third (320-400 Hz)
- Voice 5: Seventh (440-520 Hz)

Built-in reverb. Very simple, very effective.

### 02-snow-visuals.maxpat
**Jitter visuals for the drones**

Slowly evolving Perlin noise patterns with blur, brightness, and subtle movement. Creates abstract winter/snow aesthetics. Runs at 30fps.

- Organic texture generation
- Slow parameter drift via LFOs
- Minimal, contemplative visuals
- Grey/white color palette

### 03-granular-ostinato.maxpat
**Granular ostinato generator**

Load a sound file, generates an 8-step ostinato pattern in C Dorian, then granulates it into evolving textures. The ostinato provides structure while granular processing creates clouds of sound.

Features:
- 8-step sequencer with modal melody
- Variable grain rate and position
- Pitch shifting via groove~
- Multiple delay taps for rhythm
- Heavy reverb for space

Perfect for creating repeating patterns that evolve over time.

### 04-field-processor.maxpat
**Berlin field recording processor**

Transform field recordings (trams, parks, city sounds) into abstract ambient textures. Load files or record live input.

Processing chain:
- Very slow playback (0.25x default)
- Spectral freeze (toggle to hold frequencies)
- Pitch shift (0.5x = octave down)
- Multiple delay taps (2347ms, 3571ms, 4789ms)
- Lowpass filter for warmth
- Heavy reverb

Turn mundane city sounds into otherworldly drones.

### 05-pure-tones.maxpat
**Clean sine waves with gentle modulation**

Three sine oscillators with very slow random pitch and amplitude drift. Simple but beautiful. For optimistic, clear moments.

- Voice 1: Low (100-130 Hz)
- Voice 2: Mid (200-280 Hz)
- Voice 3: High shimmer (600-900 Hz)

Changes every 8 seconds. Subtle tremolo for movement. Light reverb to keep it clean.

## Workflow Suggestions

### Recording Sessions

1. **Set up multiple patches** - Run different patches simultaneously in separate Max windows
2. **Record long takes** - 20-30 minute sessions, let the generative systems evolve
3. **Don't interfere too much** - Set parameters, then let it run
4. **Record everything** - You never know what moments will be magical

### Layering

- **Drone + Pure Tones** - Harmonic bed with clear melodic elements
- **Granular Ostinato + Field Processing** - Rhythmic structure meets abstract texture
- **All patches together** - Create dense, complex soundscapes

### Post-Production

- Edit long takes for the best moments
- Minimal additional processing (already processed in patches)
- Focus on arrangement and composition
- Let silence be part of the music

## Technical Notes

### CPU Usage

These patches use:
- Multiple oscillators
- FFT processing (pfft~)
- Reverb (freeverb~)
- Jitter rendering

If CPU gets high:
- Increase audio buffer size (Options → Audio Settings)
- Turn off Jitter visuals when not needed
- Render patches individually

### File Management

- Save field recordings to `media/`
- Export long takes to `media/sessions/`
- Keep multiple versions of patches in `patches/`
- Document changes in `docs/`

### Extending the Patches

All patches are JSON - you can:
- Edit them directly (carefully!)
- Duplicate and modify
- Create variations
- Build new abstractions

## The Ivo Aesthetic

**Sonic Goals:**
- Sweet but not saccharine
- Optimistic but grounded
- Colorful but muted (Berlin grey/white)
- Evolving but patient
- Abstract but emotional

**Avoid:**
- Too much brightness (keep it muted)
- Harsh sounds (all about softness)
- Obvious repetition (generative variation)
- Over-processing (trust the patches)

## Next Steps

1. **Test the patches** on your music machine
2. **Tweak parameters** to taste
3. **Record sessions** - lots of them
4. **Collect field recordings** around Berlin
5. **Create combinations** - layer patches together
6. **Edit and arrange** your favorites

## Notes for Future Yair

These patches are starting points. Don't be precious about them. Break them, modify them, make them yours. The goal is to create something new, not to follow rules.

The beauty is in the generative systems - they surprise you. Let them.

For Ivo. For Berlin. For autumn turning to winter.

---

*Created October 2025*
*Tools: Max/MSP, Jitter, probably too much coffee*
