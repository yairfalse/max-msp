# Glass Shards - Physical Modeling Synth

Glassy, crystalline textures with broken/fractured processing for the snow aesthetic.

## Signal Flow

1. **Exciter Source** (3 types):
   - Strike: Impulse (click~) - sharp attack
   - Bow: Continuous noise - sustained
   - Breath: Filtered noise (reson~) - airy

2. **Physical Modeling**:
   - 4 harmonic resonators in series (reson~ @ 0.995 Q)
   - Frequencies: fundamental, octave, octave+fifth, 2 octaves
   - Tracks arpeggiator notes via `r seq-note`
   - Material presets change resonator Q values

3. **Broken FX Chain**:
   - Bit crusher: 8-128 bits (lo-fi digital artifacts)
   - Downsampler: 1-32x (aliasing, crunch)
   - Stutter: 0-20Hz LFO creates rhythmic glitches

4. **Shimmer Reverb**:
   - Pitchshift +12 semitones → freeverb~
   - Size: 0.8-1.0 (massive space)
   - Damping: 0-0.3 (bright, glassy)
   - Wet: 0.6-1.0 (very wet)

## Roli Controls

- **Pressure** (CC74): Controls broken FX intensity (bit crush amount)
- **Slide** (CC73): Sweeps resonator filter (200-8000Hz) for material brightness
- **Notes**: Tracked by arpeggiator, converted to resonator frequencies

## Material Presets

- **Glass (Bright)**: High Q, bright harmonics
- **Crystal (Mid)**: Medium Q, balanced
- **Ice (Dark)**: Lower Q, darker tone

## Quick Presets

- **Pristine Glass**: Clean, no broken FX, light shimmer
- **Broken Crystals**: Medium bit crush, slow stutter, heavy shimmer
- **Shattered Ice**: Dark material, max broken FX, infinite reverb
- **Shimmer Heaven**: Strike exciter, max reverb, octave up
- **Dark Fracture**: Bow exciter, ice material, heavy stutter

## Integration

Outputs to `s~ glass-out` for master mixer integration.

## Tips

- Use Strike mode for rhythmic, percussive glass sounds
- Bow mode for sustained pad-like textures
- Crank broken FX for degraded, winter-damaged aesthetic
- Try low stutter rates (0.5-2Hz) for slow, breathing textures
- Combine with field recordings for hybrid textures
