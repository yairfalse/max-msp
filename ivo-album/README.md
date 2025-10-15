# IVO Album - Max/MSP Performance System

Generative ambient performance system. Berlin autumn/winter 2025.

## System Overview

Complete live performance system with 4 sound sources, central arpeggiator, master mixer, effects chain, and audio-reactive visuals.

### Sound Sources (All MIDI-Controllable)

1. **Snow Drone** (Channel 1) - `01b-snow-drone-pro.maxpat`
   - 5-voice additive drone with harmonic ratios
   - Responds to Keystep MIDI for transposition
   - Toggle to enable/disable

2. **Granular Ostinato** (Channel 2) - `03-granular-ostinato.maxpat`
   - 8-step sequencer with granular synthesis
   - Visual LED indicators for each step
   - BPM display and tempo control
   - Responds to Keystep MIDI for transposition

3. **Super Saw** (Channel 3) - `03-super-saw.maxpat` ⭐ NEW!
   - 9 detuned saw oscillators for thick, wide sound
   - Overdrive distortion with adjustable drive amount
   - Detune amount control (default: 10 cents)
   - Responds to Keystep MIDI
   - Toggle to enable/disable

4. **Live Looper** (Channel 4) - `04-live-looper.maxpat` ⭐ NEW!
   - Record live audio from your audio interface
   - Real-time pitch shifting (±12, ±24 semitones)
   - ROLI MPE control for expressive pitch manipulation
   - Volume slider
   - Loop playback with speed control

### Central Control

**Master Performance Patch** - `00-ivo-master-performance.maxpat`

**MIDI Inputs:**
- **ROLI** (Channel 1) - MPE controller for expression
  - Broadcasts: `s roli-note`, `s roli-velocity`
  - Currently controls: Looper pitch

- **Keystep** (Channel 2) - Sequencer/keyboard
  - Broadcasts: `s seq-note`, `s seq-velocity`
  - Currently controls: Snow Drone, Granular, Super Saw

**Central Arpeggiator** ⭐ NEW!
- Toggle ON/OFF
- Adjustable BPM (20-240, default: 60 for slow arpeggios)
- 8-step sequence: C minor scale (C, D, Eb, F, G, Ab, Bb, C)
- Broadcasts: `s arp-note`
- **To connect to your patches:** Add `r arp-note` objects in any sound patch

**4-Channel Mixer:**
- Individual gain~ faders for each channel
- Cascade mixer combining all sources
- Master fade in/out (10-second ramps)
- Master gain~ fader

**Master FX Chain:**
- 2x VST~ plugin slots
  - Load any VST effects (reverb, delay, etc.)
  - State saving via XML
- Direct output to DAC
- Optional recording to `record~ ivo-session`

**State Management:**
- `pattrstorage` for saving mixer positions and settings
- Buttons: "store 1", "recall 1", "write" (save to disk), "read" (load from disk)
- VST state saving: "writexml vst1-state.xml", "readxml vst1-state.xml"
- Auto-recall on load

### Visuals

**Bauhaus Visuals** - `08-bauhaus-visuals.maxpat`
- Audio-reactive Jitter/OpenGL visuals
- 30fps render loop with auto-start
- Dark background with geometric shapes
- Amplitude detection drives visual parameters

## Quick Start

### Method 1: Use the Launcher (Recommended)

1. Open `00-LAUNCH-ALL.maxpat`
2. Click the green **"OPEN ALL PATCHES"** button
3. Wait 2-3 seconds for all patches to open sequentially
4. In the **Master Performance** patch:
   - Click the **ezdac~** to turn ON audio
5. In each **sound source patch**:
   - Turn ON the toggle to start sound generation

### Method 2: Manual Opening

1. Open `00-ivo-master-performance.maxpat` first
2. Turn ON audio (ezdac~)
3. Open sound source patches as needed:
   - `01b-snow-drone-pro.maxpat`
   - `03-granular-ostinato.maxpat`
   - `03-super-saw.maxpat`
   - `04-live-looper.maxpat`
4. Turn ON toggles in sound patches
5. Optionally open `08-bauhaus-visuals.maxpat`

## Performance Controls

### Playing with MIDI

**Keystep (Channel 2):**
- Plays and transposes: Snow Drone, Granular, Super Saw
- Notes automatically broadcast to all patches via `s seq-note`

**ROLI (MPE, Channel 1):**
- Controls: Looper pitch
- Notes broadcast via `s roli-note`
- Currently only Looper listens to ROLI
- **To add ROLI to other patches:** Add `r roli-note` objects

### Using the Central Arpeggiator

1. In Master patch, find the **=== CENTRAL ARPEGGIATOR ===** section
2. Set your desired **BPM** (try 60 for slow ambient arpeggios)
3. Click the **toggle** to turn ON the arpeggiator
4. It will broadcast an 8-note C minor scale sequence

**Currently:** The arpeggiator broadcasts on `s arp-note`, which means you need to manually add `r arp-note` to any patch you want it to control.

**To connect a patch to the arpeggiator:**
- Open the patch in edit mode
- Add a `r arp-note` object
- Connect it to the MIDI input (usually goes to `mtof` or similar)

### Mixer Control

- Use the 4 vertical **gain~** faders to balance your sound sources
- Adjust **Master Gain** for overall volume
- Use **Fade In** or **Fade Out** buttons for smooth transitions
- Load VST plugins by clicking "plug" buttons

### Recording

1. In Master patch, toggle the **recording** button ON
2. Audio saves to `ivo-session.aif` (stereo, 2-channel)
3. Toggle OFF to stop recording
4. Find recordings in your Max project folder

### State Saving

**To save your current setup:**
1. Click **"store 1"** (saves to memory)
2. Click **"write"** (saves to disk as JSON)

**To recall saved setup:**
1. Click **"read"** (loads from disk)
2. Click **"1"** or **"recall 1"** (recalls from memory)

**To save VST plugin states:**
- Click **"writexml vst1-state.xml"** (for first plugin)
- Click **"writexml vst2-state.xml"** (for second plugin)

## Signal Flow

```
MIDI Controllers
  ├─ ROLI (Ch 1) ──────────→ s roli-note ──────→ Looper
  ├─ Keystep (Ch 2) ───────→ s seq-note ───────→ Snow Drone, Granular, Super Saw
  └─ Arpeggiator ──────────→ s arp-note ───────→ (connect manually to any patch)

Sound Sources
  ├─ Snow Drone ───────────→ s~ drone-out
  ├─ Granular ─────────────→ s~ granular-out
  ├─ Super Saw ────────────→ s~ supersaw-out
  └─ Looper ───────────────→ s~ looper-out
                                  ↓
                          Master Mixer
                         (r~ all channels)
                                  ↓
                          Master Fade & Gain
                                  ↓
                          VST Plugin Chain
                            (vst~ × 2)
                                  ↓
                  ┌───────────────┴───────────────┐
                  ↓                               ↓
              DAC~ (speakers)              record~ (optional)
```

## Tips & Tricks

### Creating Ambient Textures

1. **Slow Arpeggios:**
   - Enable arpeggiator at 40-60 BPM
   - Turn ON Snow Drone for sustained notes
   - Add Granular for rhythmic texture
   - Use Super Saw for harmonic richness

2. **Live Looping:**
   - Record a vocal or instrumental phrase into the Looper
   - Use ROLI to pitch-bend the loop in real-time
   - Layer with other sound sources

3. **Mixing:**
   - Start with individual channels low
   - Bring up Snow Drone as a foundation
   - Add Granular for movement
   - Use Super Saw sparingly for impact
   - Looper for experimental textures

### Customizing Note Sequences

**To change the arpeggiator notes:**
1. Open `00-ivo-master-performance.maxpat` in edit mode
2. Find the 8 note message boxes (currently: 60, 62, 63, 65, 67, 68, 70, 72)
3. Double-click each message box and type a new MIDI note number
4. Lock the patch and test

**Common scales:**
- C Minor: 60, 62, 63, 65, 67, 68, 70, 72 (default)
- C Major: 60, 62, 64, 65, 67, 69, 71, 72
- C Dorian: 60, 62, 63, 65, 67, 69, 70, 72
- Pentatonic: 60, 62, 65, 67, 69, 72, 74, 76

## Troubleshooting

See `TROUBLESHOOTING.md` for detailed debugging help.

**Most common issues:**

1. **No sound:**
   - Check that ezdac~ is ON (blue/lit) in Master patch
   - Check that all patches are OPEN (s~/r~ only works between open patches)
   - Check that toggles are ON in sound source patches
   - Check mixer faders aren't at zero

2. **MIDI not responding:**
   - Verify MIDI devices are connected
   - Verify correct MIDI channel (ROLI: Ch 1, Keystep: Ch 2)
   - Verify Master patch is open (it routes all MIDI)

3. **Looper not recording:**
   - Check your audio interface is selected in Max Audio Settings
   - Toggle the RECORD button ON (should be red)
   - Check that PLAY toggle is ON to hear playback

## Files Reference

### Active Patches (Use These)
- `00-LAUNCH-ALL.maxpat` - Opens all patches automatically ⭐
- `00-ivo-master-performance.maxpat` - Main mixer and MIDI router ⭐
- `01b-snow-drone-pro.maxpat` - 5-voice drone (Channel 1) ⭐
- `03-granular-ostinato.maxpat` - 8-step granular sequencer (Channel 2) ⭐
- `03-super-saw.maxpat` - 9-voice supersaw (Channel 3) ⭐ NEW
- `04-live-looper.maxpat` - Live audio looper (Channel 4) ⭐ NEW
- `08-bauhaus-visuals.maxpat` - Audio-reactive visuals ⭐

### Documentation
- `README.md` - This file
- `TROUBLESHOOTING.md` - Detailed debugging guide

### Legacy Patches (Not Currently Used)
- `00-master-control.maxpat` - Old master patch
- `01-snow-drone.maxpat` - Old simpler drone version
- `04-field-processor.maxpat` - Field recording processor (not integrated)
- `05-ngoma-drone.maxpat` - Complex 3rd-party synth (dropped due to no MIDI)
- `05-pure-tones.maxpat` - Simple tone generator
- `07-mega-sampler.maxpat` - Sampler (not integrated yet)
- `99-live-performance.maxpat` - Old performance patch

## Next Steps / Future Enhancements

1. **Connect arpeggiator to all patches automatically**
   - Currently requires manual wiring of `r arp-note`
   - Could add input merging/gating in each patch

2. **Add ROLI control to more patches**
   - Snow Drone could use ROLI for expression
   - Super Saw could use ROLI for filter control
   - Granular could use ROLI for grain parameters

3. **Integrate Mega Sampler** (patch 07)
   - Add MIDI triggering
   - Route to mixer as Channel 5

4. **Add more arpeggiator patterns**
   - Multiple preset scales/patterns
   - Random note generation
   - Euclidean rhythms

5. **MIDI CC mapping**
   - Map Keystep knobs to patch parameters
   - Map ROLI pressure/slide to effects

## Structure

```
ivo-album/
├── patches/          # All Max patches
├── README.md         # This file
└── TROUBLESHOOTING.md  # Detailed debugging guide
```

## Credits

- System Design: IVO Album Project
- Built with: Max/MSP 8.6
- VST Plugins: UAD Lexicon 224, UAD Galaxy Tape Echo

---

**For Ivo. Enjoy your performance! 🎹🎶🎨**
