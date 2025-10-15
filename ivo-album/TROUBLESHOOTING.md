# Troubleshooting Guide - Ivo Album Performance System

## CRITICAL: Patches Must Be Open!

**The #1 reason for "no sound" or "MIDI not working" is that patches aren't open.**

Max's `s~` / `r~` and `s` / `r` only work between **open patches**. If a sound source patch is closed, it won't:
- Receive MIDI from the master
- Send audio to the master mixer
- Respond to your controllers

## Quick Start - Use the Launcher

1. **Open `00-LAUNCH-ALL.maxpat`** first
2. Click each button to open:
   - Master Performance (mixer + MIDI routing)
   - Snow Drone (Channel 1)
   - Granular Ostinato (Channel 2)
   - Ngoma Drone (Channel 5)
   - Bauhaus Visuals (optional)

3. **In Master patch**: Turn ON audio (click `ezdac~` speaker)
4. **In each sound patch**: Turn ON the toggle to start sound generation

## Issue: "No sound from Channel 1, 2, or 5"

### Channel 1 (Snow Drone) - 01b-snow-drone-pro.maxpat
✅ **Status**: MIDI-responsive, working

**Checklist**:
- [ ] Patch is **open**
- [ ] Toggle in top-left is **ON** (starts metro)
- [ ] Fader in **Master mixer** is up
- [ ] Master **ezdac~** is **ON**

**MIDI Control**:
- **Keystep notes**: Transposes all 5 drone voices
- Works automatically when Keystep is connected

### Channel 2 (Granular Ostinato) - 03-granular-ostinato.maxpat
✅ **Status**: MIDI-responsive, has visual feedback

**Checklist**:
- [ ] Patch is **open**
- [ ] Toggle is **ON** (starts 8-step sequencer)
- [ ] You see **LED lights** blinking (shows sequence running)
- [ ] **Step display** shows 0-7 changing
- [ ] Fader in **Master mixer** is up

**MIDI Control**:
- **Keystep notes**: Transposes the 8-step pattern
- Pattern: C Dorian scale (60, 67, 64, 72, 67, 64, 60, 55)

### Channel 5 (Ngoma Drone) - 05-ngoma-drone.maxpat
⚠️ **Status**: NO MIDI INPUT (complex 3rd-party patch)

**Checklist**:
- [ ] Patch is **open**
- [ ] Play with the **sliders and controls** inside Ngoma patch
- [ ] Fader in **Master mixer** is up
- [ ] Sound is routing to `s~ ngoma-out` (we added this)

**Why no MIDI?**
- Ngoma is a sophisticated synthesizer from GitHub
- It has its own internal controls (not MIDI-mapped yet)
- You need to manually adjust parameters in the Ngoma patch
- Future enhancement: Add MIDI input to Ngoma

## Issue: "ROLI/Keystep not responding"

### ROLI (Channel 1 MIDI)
**What it does**:
- Broadcasts: `s roli-note`, `s roli-velocity`
- **Currently**: No patches are listening to ROLI yet
- Snow Drone uses Keystep, not ROLI

**To add ROLI control**:
- Open a sound patch
- Add `r roli-note` and `r roli-velocity` objects
- Connect them to your sound generation

### Keystep (Channel 2 MIDI)
**What it does**:
- Broadcasts: `s seq-note`, `s seq-velocity`
- **Snow Drone** listens via `r seq-note` → transposes drones
- **Granular Ostinato** listens via `r seq-note` → transposes pattern

**Checklist**:
- [ ] Keystep is connected and sending on **MIDI channel 2**
- [ ] Master patch `00-ivo-master-performance.maxpat` is **open** (MIDI router)
- [ ] Sound patches are **open** (MIDI receivers)

## Issue: "Snow Drone doesn't change notes with Keystep"

**How it works**:
1. Master receives Keystep notes on channel 2
2. Broadcasts via `s seq-note`
3. Snow Drone receives via `r seq-note`
4. Converts to frequency via `mtof`
5. Sends `s transpose` to multiply drone frequencies

**Troubleshooting**:
- [ ] Master patch is **open**
- [ ] Snow Drone patch is **open**
- [ ] Try pressing **different keys** on Keystep
- [ ] Check if `obj-default-note` (220Hz / A3) is the baseline

**Current limitation**: Only Voice 1 responds to transposition. Voices 2-5 use fixed harmonic ratios.

## Signal Flow Diagram

```
Keystep (MIDI Ch 2) → Master Patch
                        ↓
                  s seq-note (broadcast)
                        ↓
        ┌───────────────┴───────────────┐
        ↓                               ↓
  Snow Drone                    Granular Ostinato
  (r seq-note)                  (r seq-note)
        ↓                               ↓
  s~ drone-out                  s~ granular-out
        ↓                               ↓
        └───────────────┬───────────────┘
                        ↓
                  Master Mixer
                  (r~ drone-out)
                  (r~ granular-out)
                  (r~ ngoma-out)
                        ↓
                   Master Gain
                        ↓
                   VST Plugins
                        ↓
                      DAC~
                   (speakers)
```

## Audio Routing Check

If you have sound in individual patches but not in the master:

1. **Check send objects** in source patches:
   - Snow Drone: `s~ drone-out`
   - Granular: `s~ granular-out`
   - Ngoma: `s~ ngoma-out`

2. **Check receive objects** in master:
   - `r~ drone-out` → gain~ → mixer
   - `r~ granular-out` → gain~ → mixer
   - `r~ ngoma-out` → gain~ → mixer

3. **Verify signal flow**:
   - Mixer cascade (+~ objects) → Fade → Master Gain → VST~ → DAC~

4. **Check DAC~**:
   - Must be **ON** (blue/lit up)
   - Should see signal activity when sound is playing

## Next Steps to Improve MIDI Control

### Add ROLI to Snow Drone:
```
r roli-note → mtof → multiply with drone frequencies
r roli-velocity → scale → volume envelope
```

### Add MIDI to Ngoma:
- Complex patch - needs careful study
- Look for frequency/pitch controls
- Add `r roli-note` or `r seq-note` inputs

### Add MIDI to other sources:
- Sampler (Channel 3): `r roli-note` → trigger samples
- Field Processor (Channel 4): `r seq-note` → modulation

## Performance Checklist

Before performing:
- [ ] Open `00-LAUNCH-ALL.maxpat` and launch all patches
- [ ] Turn ON audio (`ezdac~`) in Master patch
- [ ] Turn ON toggles in each sound source
- [ ] Test Keystep → should transpose Snow Drone + Granular
- [ ] Adjust faders in Master mixer
- [ ] Load VST plugins if desired
- [ ] Save state (click "store 1" then "write")

During performance:
- [ ] Use Master faders to mix 5 channels
- [ ] Use Fade In/Out for smooth starts/ends
- [ ] Toggle recording when ready to capture
- [ ] Manually control Ngoma parameters (no MIDI yet)

After performing:
- [ ] Save state: "store 1" → "write"
- [ ] Save plugins: "writexml vst1-state.xml" / "vst2-state.xml"
- [ ] Check recordings in project folder

## Files Created

- `00-LAUNCH-ALL.maxpat` - Opens all patches (use this first!)
- `00-ivo-master-performance.maxpat` - Main mixer + MIDI router
- `01b-snow-drone-pro.maxpat` - 5-voice drone (Channel 1)
- `03-granular-ostinato.maxpat` - 8-step sequencer (Channel 2)
- `05-ngoma-drone.maxpat` - Physical modeling synth (Channel 5)
- `08-bauhaus-visuals.maxpat` - Audio-reactive Jitter visuals
- `TROUBLESHOOTING.md` - This file!
