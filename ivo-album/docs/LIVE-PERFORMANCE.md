# Live A/V Performance Setup

## Concept

Use Max/MSP for generative audio + Jitter for reactive visuals. Roli for expressive control. Keyboard for scene switching. Everything connected and controllable in real-time.

## The Setup

### Required Patches (Open in this order):

1. **00-master-control.maxpat** - Input hub (Roli + keyboard)
2. **99-live-performance.maxpat** - Performance mixer/interface
3. **01-snow-drone.maxpat** - Layer 1 (Drone)
4. **03-granular-ostinato.maxpat** - Layer 2 (Granular)
5. **04-field-processor.maxpat** - Layer 3 (Field recordings)
6. **05-pure-tones.maxpat** - Layer 4 (Pure tones)
7. **02-snow-visuals.maxpat** - Jitter visuals

### Hardware:

- **Audio Interface**: UAD or similar (2+ outputs for stereo)
- **Roli Seaboard Block**: MPE control
- **Computer Keyboard**: Scene switching
- **Projector/Screen**: For Jitter visuals

## Performance Flow

### Scene Structure (30-40 min set):

**Scene 1: Intro (5 min)** - Key: 1
- Layer 1 only (Drone)
- Build tension slowly
- Minimal Roli movement

**Scene 2: Build (8 min)** - Key: 2
- Add Layer 2 (Granular)
- Increase Roli expression
- Visuals start appearing

**Scene 3: Peak (10 min)** - Key: 3
- Add Layer 3 (Field recordings)
- Full Roli expression
- Heavy visuals

**Scene 4: Full (10 min)** - Key: 4
- All layers active
- Maximum density
- Peak energy

**Scene 5: Outro (7 min)** - Key: 5
- Layer 4 only (Pure tones)
- Calm, resolution
- Visuals fade

### Roli Control During Performance:

- **Press (Pressure)** → Global reverb amount
  - Light touch = dry
  - Heavy press = drenched in reverb

- **Slide (Y-axis)** → Filter cutoff
  - Slide up = brighter
  - Slide down = darker

- **Glide (X-axis)** → Pitch modulation
  - Left/right = vibrato/wobble

- **Strike (Notes)** → Harmonic content
  - Play melodic lines during calmer sections
  - Sustained notes during drones

## Live Mixing Strategy

### Layer Balance:

- **Drone**: Foundation (never too loud)
- **Granular**: Texture (can swell and recede)
- **Field**: Color (bring in/out for transitions)
- **Tones**: Focus (melodic moments)

### Transitions:

Use keyboard scenes for big changes, or:
- Toggle individual layers for improvisation
- Fade layers in/out with gain faders
- Use Roli pressure to create dynamic swells

## Visual Sync

The Jitter patch responds to:
- Audio amplitude (gets more intense with louder sound)
- Slow evolution (matches generative nature of audio)
- Can be toggled on/off for minimal moments

## Technical Setup

### Before the Show:

1. **Test all patches** on your performance machine
2. **Load samples** into granular and field processor
3. **Set buffer size** (512 or 1024 samples for stable performance)
4. **Check Roli calibration** (Roli Dashboard app)
5. **Test projection** (make sure Jitter window is fullscreen)
6. **Do a dry run** with all patches open

### During Setup:

1. Open patches in order (listed above)
2. Enable audio (click speakers on each patch)
3. Start performance patch presentation mode
4. Set master gain to safe level
5. Test Roli response
6. Fullscreen the Jitter window on projector

### Emergency Procedures:

- **SPACE key** = Panic (stops everything)
- **Close Jitter** if visuals lag
- **Reduce buffer** if audio crackles
- **Bypass plugins** if CPU spikes

## Advanced: Audio Routing

If you want to route to PA system:

```
Max/MSP → Audio Interface → Mixer → PA

Outputs:
- Out 1-2: Main stereo mix
- Out 3-4: (Optional) Stems for external processing
```

## Advanced: MIDI Recording

Record your Roli performance:

1. Add `midirecord` object to master-control patch
2. Press R to record MIDI
3. Play back later for studio versions

## Tips for Performance

1. **Let the patches breathe** - don't constantly tweak
2. **Use scenes for structure** - improvise within scenes
3. **Roli is expressive** - small movements = big changes
4. **Watch your levels** - ambient shouldn't be loud
5. **Embrace silence** - turn layers off sometimes
6. **Trust the generative** - patches evolve on their own
7. **Visual sync** - let visuals complement, not distract

## What Could Go Wrong

**Audio dropouts:**
- Increase buffer size
- Close unused apps
- Disable WiFi

**Roli not responding:**
- Check USB connection
- Restart Roli Dashboard
- Check MPE mode is on

**Visuals lagging:**
- Reduce Jitter frame rate (30fps → 15fps)
- Close visual patch if needed
- Check GPU isn't overheating

**Patches not responding:**
- Check send/receive names match
- Restart patches in order
- Check audio is enabled

## Post-Show

1. **Record output** if possible (for documentation)
2. **Take notes** on what worked
3. **Save presets** for good moments
4. **Export Roli MIDI** for studio versions

---

This is living document. Update after each performance.
