# Master Patch Fixes - MIDI Routing & Arpeggiator

## Problems Fixed:

### 1. Arpeggiator wasn't controlling synths
**Issue**: Arpeggiator was sending to `s arp-note` but all synths listen to `r seq-note`

**Fix**: Changed arpeggiator output from `s arp-note` → `s seq-note` (line 402)

Now the central arpeggiator drives all synth patches!

### 2. Added Random Mode
**What it does**:
- Sequential mode (0): Cycles through notes 0-7 in order (original behavior)
- Random mode (1): Picks random note from the 8-note pattern each step

**How it works**:
- `metro` triggers both `counter` (sequential) and `random` (random 0-7)
- `gate 2` object routes either counter or random to the note selector
- Controlled by "ARP MODE" menu (900, 140)

### 3. Scale Integration
**Added**: `r current-scale` receiver (900, 200)

**Purpose**: When you change scales in the mega-sampler (07-mega-sampler.maxpat), the master patch receives the scale name and displays it

**Display**: Shows current scale name at (900, 230)

## How It Works Now:

```
CENTRAL ARPEGGIATOR FLOW:
=========================

Toggle ON/OFF → Metro (BPM-based) → Split to:
                                      ├─ counter 0-7 (sequential)
                                      └─ random 8 (random)
                                              ↓
                                         gate 2 (mode selector)
                                              ↓
                                    select 0 1 2 3 4 5 6 7
                                              ↓
                        8 note messages (C minor: 60,62,63,65,67,68,70,72)
                                              ↓
                                          funnel 8
                                              ↓
                                        s seq-note ← DRIVES ALL SYNTHS
```

## What Receives `seq-note`:

All these patches now respond to the central arpeggiator:

- `01b-snow-drone-pro.maxpat` - Drone follows arpeggiator
- `03-super-saw.maxpat` - Supersaw follows arpeggiator
- `09-glass-shards.maxpat` - Glass synth follows arpeggiator
- Any future synth patches that use `r seq-note`

## Keystep Still Works:

The Keystep MIDI input (Channel 2) also sends to `s seq-note` (line 152), so you can:
- Use Keystep to manually play synths
- Use central arpeggiator for generative sequences
- Switch between them

Both control the same destination!

## Usage:

1. **Turn on arpeggiator**: Click toggle at (500, 140)
2. **Set BPM**: Adjust number box at (720, 140) - default 60 BPM
3. **Choose mode**:
   - Sequential = cycles through notes in order
   - Random = picks random notes from pattern
4. **Change scales**: Use mega-sampler scale selector - master patch displays current scale
5. **Manual override**: Play Keystep anytime to override arpeggiator

## Next Steps (Future):

- Make the 8 note values dynamic based on selected scale
- Add arpeggiator pattern editor (up, down, up-down, random walk, etc.)
- Add gate/accent patterns for rhythmic variation
- Add octave transpose control
