# IVO ALBUM - Performance System Guide

## Berlin Autumn - Cinematic Ambient Performance

### Overview
This is your complete performance system for creating layered, cinematic ambient music. Control everything from 2 windows and record it all.

### Quick Start

**1. Open the Master Performance Patch**
```
/Users/yair/max-msp/ivo-album/patches/00-ivo-master-performance.maxpat
```

**2. Turn on audio** (click ezdac~)

**3. Open your sound source patches** - they automatically connect to the master mixer:
- `01b-snow-drone-pro.maxpat` - Your main drone (working!)
- `03-granular-ostinato.maxpat` - Rhythmic textures
- `07-mega-sampler.maxpat` - Sample playback
- `04-field-processor.maxpat` - Field recording processor

---

## Master Performance Patch Layout

### Section 1: MIDI INPUTS
- **ROLI** - Automatically receives MPE data (channel 1)
- **Keystep** - Receives sequences (channel 2)

Signals are broadcast via:
- `s roli-note`, `s roli-velocity`
- `s seq-note`, `s seq-velocity`

Any patch can listen with `r roli-note` etc.

### Section 2: MIXER (4 Channels)
**Gain sliders** control the level of each source:
- Channel 1: Snow Drone
- Channel 2: Granular
- Channel 3: Sampler
- Channel 4: Field Processor

Adjust the sliders to mix your sound sources in real-time.

### Section 3: MASTER EFFECTS
Two VST plugin slots for master processing:

**Suggested chains:**
- **Ambient/Spacious**: Lexicon 224 → Galaxy Tape Echo
- **Dark/Textured**: EMT 250 → Oxide Tape
- **Shimmer**: H910 Harmonizer → Pure Plate
- **Cinematic**: Ocean Way Studios → Studer A800

**Controls:**
- `plug` - Select plugin
- `open` - Open plugin GUI
- `bypass` toggle - Bypass effect

### Section 4: MASTER FADE
**Smooth beginnings and endings:**
- Click **"0, 1 10000"** - Fade in over 10 seconds
- Click **"1, 0 10000"** - Fade out over 10 seconds

Perfect for closing your performances gracefully.

### Section 5: RECORDING
- Toggle **REC** to start/stop recording
- Files saved as: `ivo-session.aif` in your Max audio folder
- Captures the final stereo mix

---

## Performance Workflow

### Starting a Session

1. **Open Master Performance** - Turn on audio
2. **Open Snow Drone Pro** - Turn on audio, click toggle
3. **Load master plugins:**
   - Slot 1: Reverb (try Lexicon 224 or EMT 250)
   - Slot 2: Delay/Modulation (try Galaxy Tape)
4. **Set mixer levels** - Start with drone around 70%
5. **Click Fade In** - Smooth 10-second entrance

### During Performance

**Layer sounds gradually:**
- Bring up granular ostinato for rhythm
- Add sampler for textural hits
- Use field processor for environmental sounds

**Control with ROLI:**
- Pressure → reverb amount
- Slide → filter cutoff
- Glide → modulation depth

**Control with Keystep:**
- Sequences trigger granular/sampler patterns
- Use arp mode for evolving patterns

**Mix in real-time:**
- Adjust channel levels
- Bypass/unbypass effects
- Open plugin GUIs to tweak

### Ending a Session

1. **Click Fade Out** - Smooth 10-second exit
2. **Stop recording** - Toggle REC off
3. **Save your plugins** - Save presets if you like the sound

---

## Tips for "Berlin Autumn" Sound

### Minimal → Big

**Start minimal:**
- Just snow drone
- Lexicon 224 reverb only
- Slow fade in

**Build gradually:**
- Add granular ostinato (low in mix)
- Bring in Galaxy Tape delay
- Increase drone complexity (it evolves every 5 seconds)

**Peak:**
- All sources active
- Heavy reverb/delay
- Full mix

**Return to minimal:**
- Fade out granular
- Reduce effects
- Let drone sustain alone
- Fade out

### Cold Balearic Feel

- Use longer reverbs (EMT 250, Lexicon)
- Galaxy Tape with modulation
- Keep low end warm (don't over-filter)
- Space between elements
- Let things breathe

### Layering Distortion/Overdrive

Snow Drone Pro has 3 plugin slots - try:
1. Reverb (space)
2. Galaxy Tape (movement)
3. **Oxide Tape or Culture Vulture** (saturation/warmth)

Add distortion INSIDE the snow drone for character, then clean master reverb for space.

---

## File Locations

### Patches
```
/Users/yair/max-msp/ivo-album/patches/
├── 00-ivo-master-performance.maxpat  ← MAIN PATCH
├── 01b-snow-drone-pro.maxpat
├── 03-granular-ostinato.maxpat
├── 07-mega-sampler.maxpat
└── 04-field-processor.maxpat
```

### Recordings
Max audio folder (usually `~/Documents/Max 8/Max Audio Effect/`)

---

## Troubleshooting

**No sound from snow drone?**
- Turn on ezdac~ in BOTH patches
- Click the toggle in snow drone
- Check mixer level in master performance

**ROLI not working?**
- Check ROLI is on MIDI channel 1
- Look for activity in master performance notein

**Keystep not working?**
- Set Keystep to MIDI channel 2
- Check USB connection

**Recording not working?**
- Make sure REC toggle is ON
- Check Max audio folder permissions
- Disk space?

---

## For Ivo

This is for those quiet Berlin autumn evenings, when the light is fading and the air gets cold.

Layer sounds slowly. Let things evolve. Don't rush.

The drones change every 5 seconds - let them guide you.

Record long sessions (20-30 minutes). Edit later if needed.

---

Yair, 2025
