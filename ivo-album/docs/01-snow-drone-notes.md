# Snow Drone Patch

**File**: `patches/01-snow-drone.maxpat`

## Concept
A generative drone that slowly evolves over time, creating a harmonic bed of sound. Like watching snow fall - peaceful, slowly changing, hypnotic.

## How It Works

### Five Harmonic Voices
- **Voice 1**: Fundamental (80-120 Hz) - The bass/root
- **Voice 2**: Octave (160-240 Hz) - Doubles the fundamental
- **Voice 3**: Fifth (240-360 Hz) - Harmonic stability
- **Voice 4**: Major Third (320-400 Hz) - Warmth and color
- **Voice 5**: Seventh (440-520 Hz) - Subtle tension

### Generative Behavior
- Every 5 seconds, each voice randomly shifts to a new frequency within its range
- Transitions are smooth (using `line~` for gliding)
- Each voice has different amplitude (lower = louder, higher = quieter)
- Random ranges are different per voice - creates organic evolution

### Signal Flow
1. `metro 5000` - triggers every 5 seconds
2. `random` - generates random number for each voice
3. `scale` - maps random to frequency range
4. `line~` - smooth transition to new frequency
5. `cycle~` - sine wave oscillator
6. `*~` - amplitude control (each voice different level)
7. `+~` - mix all voices together
8. `freeverb~` - stereo reverb for space
9. `gain~` - master volume
10. `ezdac~` - output to speakers

## Usage
1. Click the toggle at the top to start
2. Click the speaker icon (ezdac~) to turn on audio
3. Adjust the master gain~ for volume
4. Let it run - it will evolve slowly over time

## Modifications You Can Make
- Change metro time (5000ms = 5 seconds) for faster/slower evolution
- Adjust frequency ranges in the `scale` objects
- Change amplitude multipliers (`*~ 0.15`, etc.) for voice balance
- Modify reverb parameters (room size, damping)
- Add more voices by duplicating the pattern

## Musical Direction
This creates sweet, consonant drones perfect for ambient backgrounds. The harmonic intervals create a peaceful, resolved feeling - good for baby Ivo!
