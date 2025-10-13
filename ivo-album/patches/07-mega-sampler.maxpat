{
	"patcher" : {
		"fileversion" : 1,
		"appversion" : {
			"major" : 8,
			"minor" : 6,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		},
		"classnamespace" : "box",
		"rect" : [ 100.0, 100.0, 1200.0, 900.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxes" : [
			{
				"box" : {
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 30.0, 800.0, 20.0 ],
					"text" : "MEGA SAMPLER - Extreme granular + pitch shift + harmonizer + endless reverb"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 800.0, 20.0 ],
					"text" : "Load samples, choose scale (chromatic/pentatonic/generative), harmonize, granulate, destroy"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-sample",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 90.0, 400.0, 20.0 ],
					"text" : "=== SAMPLE INPUT ==="
				}
			},
			{
				"box" : {
					"id" : "obj-load",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 120.0, 100.0, 22.0 ],
					"text" : "open"
				}
			},
			{
				"box" : {
					"id" : "obj-buffer",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 30.0, 150.0, 200.0, 22.0 ],
					"text" : "buffer~ megasample 60000"
				}
			},
			{
				"box" : {
					"id" : "obj-waveform",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 30.0, 180.0, 400.0, 100.0 ],
					"buffername" : "megasample"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-scale",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 300.0, 400.0, 20.0 ],
					"text" : "=== SCALE SELECTOR ==="
				}
			},
			{
				"box" : {
					"id" : "obj-umenu-scale",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 330.0, 200.0, 22.0 ],
					"items" : [ "Chromatic (12-TET)", ",", "C Major", ",", "C Minor", ",", "C Dorian", ",", "Pentatonic Major", ",", "Pentatonic Minor", ",", "Whole Tone", ",", "Harmonic Minor", ",", "Phrygian", ",", "Generative Random", ",", "Generative Fibonacci", ",", "Generative Golden Ratio" ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-scale-info",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 330.0, 400.0, 20.0 ],
					"text" : "Choose your harmonic universe"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-router",
					"maxclass" : "newobj",
					"numinlets" : 13,
					"numoutlets" : 13,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 30.0, 360.0, 600.0, 22.0 ],
					"text" : "sel 0 1 2 3 4 5 6 7 8 9 10 11"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-chromatic",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 400.0, 300.0, 22.0 ],
					"text" : "0 1 2 3 4 5 6 7 8 9 10 11"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-major",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 400.0, 300.0, 22.0 ],
					"text" : "0 2 4 5 7 9 11"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-minor",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 430.0, 300.0, 22.0 ],
					"text" : "0 2 3 5 7 8 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-dorian",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 430.0, 300.0, 22.0 ],
					"text" : "0 2 3 5 7 9 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-penta-maj",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 460.0, 300.0, 22.0 ],
					"text" : "0 2 4 7 9"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-penta-min",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 460.0, 300.0, 22.0 ],
					"text" : "0 3 5 7 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-wholetone",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 490.0, 300.0, 22.0 ],
					"text" : "0 2 4 6 8 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-harmonic",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 490.0, 300.0, 22.0 ],
					"text" : "0 2 3 5 7 8 11"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-phrygian",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 520.0, 300.0, 22.0 ],
					"text" : "0 1 3 5 7 8 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-gen-random",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 520.0, 200.0, 22.0 ],
					"text" : "urn 12"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-gen-fib",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 550.0, 300.0, 22.0 ],
					"text" : "0 1 2 3 5 8"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-gen-golden",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 550.0, 300.0, 22.0 ],
					"text" : "0 3 5 8 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-storage",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 590.0, 100.0, 22.0 ],
					"text" : "zl group 12"
				}
			},
			{
				"box" : {
					"id" : "obj-send-scale",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 620.0, 100.0, 22.0 ],
					"text" : "s current-scale"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-input",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 90.0, 400.0, 20.0 ],
					"text" : "=== ROLI/MIDI INPUT ==="
				}
			},
			{
				"box" : {
					"id" : "obj-notein",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 700.0, 120.0, 100.0, 22.0 ],
					"text" : "notein"
				}
			},
			{
				"box" : {
					"id" : "obj-receive-scale",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 120.0, 100.0, 22.0 ],
					"text" : "r current-scale"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-snap",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 700.0, 150.0, 140.0, 22.0 ],
					"text" : "scale-snap"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-snap",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 850.0, 150.0, 250.0, 20.0 ],
					"text" : "Snap MIDI notes to selected scale"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-harmonizer",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 190.0, 400.0, 20.0 ],
					"text" : "=== HARMONIZER (3 voices) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-harmonic-interval1",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 700.0, 220.0, 50.0, 22.0 ],
					"minimum" : -24,
					"maximum" : 24
				}
			},
			{
				"box" : {
					"id" : "obj-comment-h1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 220.0, 150.0, 20.0 ],
					"text" : "Voice 1 interval (semitones)"
				}
			},
			{
				"box" : {
					"id" : "obj-harmonic-interval2",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 700.0, 250.0, 50.0, 22.0 ],
					"minimum" : -24,
					"maximum" : 24
				}
			},
			{
				"box" : {
					"id" : "obj-comment-h2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 250.0, 150.0, 20.0 ],
					"text" : "Voice 2 interval (semitones)"
				}
			},
			{
				"box" : {
					"id" : "obj-harmonic-interval3",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 700.0, 280.0, 50.0, 22.0 ],
					"minimum" : -24,
					"maximum" : 24
				}
			},
			{
				"box" : {
					"id" : "obj-comment-h3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 280.0, 150.0, 20.0 ],
					"text" : "Voice 3 interval (semitones)"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang-harm",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 920.0, 220.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-harm-fifth",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.0, 250.0, 80.0, 22.0 ],
					"text" : "7 12 19"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-preset",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1010.0, 250.0, 180.0, 20.0 ],
					"text" : "Default: 5th, octave, octave+5th"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-granular",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 670.0, 400.0, 20.0 ],
					"text" : "=== MEGA GRANULAR ENGINE ==="
				}
			},
			{
				"box" : {
					"id" : "obj-grain-size",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 700.0, 80.0, 22.0 ],
					"minimum" : 1.0,
					"maximum" : 500.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-grain-size",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 700.0, 200.0, 20.0 ],
					"text" : "Grain size (ms) 1-500"
				}
			},
			{
				"box" : {
					"id" : "obj-grain-density",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 730.0, 80.0, 22.0 ],
					"minimum" : 1.0,
					"maximum" : 100.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-density",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 730.0, 200.0, 20.0 ],
					"text" : "Grain density (grains/sec)"
				}
			},
			{
				"box" : {
					"id" : "obj-grain-pitch",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 760.0, 80.0, 22.0 ],
					"minimum" : 0.125,
					"maximum" : 8.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-pitch",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 760.0, 250.0, 20.0 ],
					"text" : "Pitch shift (0.125 = -3 oct, 8.0 = +3 oct)"
				}
			},
			{
				"box" : {
					"id" : "obj-grain-spread",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 790.0, 80.0, 22.0 ],
					"minimum" : 0.0,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-spread",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 790.0, 200.0, 20.0 ],
					"text" : "Position randomness (0-1)"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-endless",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 670.0, 400.0, 20.0 ],
					"text" : "=== ENDLESS REVERB ==="
				}
			},
			{
				"box" : {
					"id" : "obj-reverb-size",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 700.0, 80.0, 22.0 ],
					"minimum" : 0.5,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-rev-size",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 700.0, 200.0, 20.0 ],
					"text" : "Room size (0.5-1.0 = endless)"
				}
			},
			{
				"box" : {
					"id" : "obj-reverb-damp",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 730.0, 80.0, 22.0 ],
					"minimum" : 0.0,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-damp",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 730.0, 200.0, 20.0 ],
					"text" : "Damping (0=bright, 1=dark)"
				}
			},
			{
				"box" : {
					"id" : "obj-reverb-mix",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 760.0, 80.0, 22.0 ],
					"minimum" : 0.0,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-mix",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 760.0, 200.0, 20.0 ],
					"text" : "Wet/dry mix (1.0 = 100% wet)"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang-defaults",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 900.0, 700.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-output",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 840.0, 400.0, 20.0 ],
					"text" : "=== OUTPUT ==="
				}
			},
			{
				"box" : {
					"id" : "obj-master-gain",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 870.0, 22.0, 100.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 820.0, 45.0, 45.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-presets",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 900.0, 840.0, 250.0, 20.0 ],
					"text" : "=== PRESETS (Quick setups) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-preset-shimmer",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 900.0, 870.0, 120.0, 22.0 ],
					"text" : "Shimmer Verb"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-cloud",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1030.0, 870.0, 120.0, 22.0 ],
					"text" : "Grain Cloud"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-destroy",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 900.0, 900.0, 120.0, 22.0 ],
					"text" : "Destroy"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-ambient",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1030.0, 900.0, 120.0, 22.0 ],
					"text" : "Ambient Wash"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-buffer", 0 ],
					"source" : [ "obj-load", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-router", 0 ],
					"source" : [ "obj-umenu-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-chromatic", 0 ],
					"source" : [ "obj-scale-router", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-major", 0 ],
					"source" : [ "obj-scale-router", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-minor", 0 ],
					"source" : [ "obj-scale-router", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-dorian", 0 ],
					"source" : [ "obj-scale-router", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-penta-maj", 0 ],
					"source" : [ "obj-scale-router", 4 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-penta-min", 0 ],
					"source" : [ "obj-scale-router", 5 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-wholetone", 0 ],
					"source" : [ "obj-scale-router", 6 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-harmonic", 0 ],
					"source" : [ "obj-scale-router", 7 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-phrygian", 0 ],
					"source" : [ "obj-scale-router", 8 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-gen-random", 0 ],
					"source" : [ "obj-scale-router", 9 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-gen-fib", 0 ],
					"source" : [ "obj-scale-router", 10 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-gen-golden", 0 ],
					"source" : [ "obj-scale-router", 11 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-chromatic", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-major", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-minor", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-dorian", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-penta-maj", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-penta-min", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-wholetone", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-harmonic", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-phrygian", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-gen-random", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-gen-fib", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-storage", 0 ],
					"source" : [ "obj-scale-gen-golden", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-scale", 0 ],
					"source" : [ "obj-scale-storage", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-snap", 0 ],
					"source" : [ "obj-notein", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-snap", 1 ],
					"source" : [ "obj-receive-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-preset-harm-fifth", 0 ],
					"source" : [ "obj-loadbang-harm", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-dac", 0 ],
					"source" : [ "obj-master-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-dac", 1 ],
					"source" : [ "obj-master-gain", 0 ]
				}
			}
		]
	}
}
