// euclid.js - Euclidean rhythm generator for Max/MSP
// Implements Bjorklund's algorithm for generating Euclidean rhythms
//
// Inlets:
//   0: step position (0-15)
//   1: total steps (1-16)
//   2: pulses/beats (1-16)
//
// Outlets:
//   0: 1 if beat on this step, 0 otherwise

inlets = 3;
outlets = 1;

var steps = 16;
var pulses = 4;
var pattern = [];

// Initialize with default pattern
generatePattern();

function msg_int(v) {
    // Inlet 0: step position
    if (inlet == 0) {
        var stepIndex = v % steps;
        outlet(0, pattern[stepIndex]);
    }
    // Inlet 1: total steps
    else if (inlet == 1) {
        steps = Math.max(1, Math.min(16, v));
        generatePattern();
    }
    // Inlet 2: pulses
    else if (inlet == 2) {
        pulses = Math.max(1, Math.min(steps, v));
        generatePattern();
    }
}

function generatePattern() {
    // Bjorklund's algorithm for Euclidean rhythms
    if (pulses >= steps) {
        // All steps have beats
        pattern = [];
        for (var i = 0; i < steps; i++) {
            pattern[i] = 1;
        }
        return;
    }

    if (pulses == 0) {
        // No beats
        pattern = [];
        for (var i = 0; i < steps; i++) {
            pattern[i] = 0;
        }
        return;
    }

    // Build pattern using Bjorklund's algorithm
    var counts = [];
    var remainders = [];
    var divisor = steps - pulses;

    remainders.push(pulses);
    var level = 0;

    while (true) {
        counts.push(Math.floor(divisor / remainders[level]));
        remainders.push(divisor % remainders[level]);
        divisor = remainders[level];
        level++;

        if (remainders[level] <= 1) {
            break;
        }
    }

    counts.push(divisor);

    // Build the pattern from the counts
    pattern = [];

    var buildString = function(level) {
        if (level == -1) {
            pattern.push(0);
        } else if (level == -2) {
            pattern.push(1);
        } else {
            for (var i = 0; i < counts[level]; i++) {
                buildString(level - 1);
            }
            if (remainders[level] != 0) {
                buildString(level - 2);
            }
        }
    };

    buildString(level);

    // Pad or trim to correct length
    while (pattern.length < steps) {
        pattern.push(0);
    }
    pattern.length = steps;
}
