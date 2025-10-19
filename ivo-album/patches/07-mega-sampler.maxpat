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
		"rect" : [ 100.0, 100.0, 1600.0, 1000.0 ],
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
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 30.0, 800.0, 20.0 ],
					"text" : "AUTECHRE FM DRUM GENERATOR - Algorithmic 4-op FM percussion with generative sequencing"
				}
			},
			{
				"box" : {
					"id" : "obj-subtitle",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 800.0, 20.0 ],
					"text" : "Synced to master clock - Wet slapping FM percussion - Complex modulation - Algorithmic pattern generation"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-master-sync",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 90.0, 400.0, 20.0 ],
					"text" : "=== MASTER SYNC (receives from master patch) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-receive-bpm",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 120.0, 100.0, 22.0 ],
					"text" : "r master-bpm"
				}
			},
			{
				"box" : {
					"id" : "obj-receive-clock",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 150.0, 110.0, 22.0 ],
					"text" : "r master-clock"
				}
			},
			{
				"box" : {
					"id" : "obj-receive-randomize",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 180.0, 130.0, 22.0 ],
					"text" : "r pattern-randomize"
				}
			},
			{
				"box" : {
					"id" : "obj-counter",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 30.0, 210.0, 80.0, 22.0 ],
					"text" : "counter 0 15"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-visual",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 150.0, 400.0, 20.0 ],
					"text" : "=== VISUAL STEP INDICATOR ==="
				}
			},
			{
				"box" : {
					"id" : "obj-step-display",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 600.0, 180.0, 320.0, 60.0 ],
					"size" : 16,
					"setminmax" : [ 0.0, 1.0 ],
					"slidercolor" : [ 0.0, 0.5, 1.0, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-step-highlighter",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 600.0, 250.0, 50.0, 22.0 ],
					"text" : "uzi 16"
				}
			},
			{
				"box" : {
					"id" : "obj-step-current",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 600.0, 280.0, 50.0, 22.0 ],
					"text" : "=="
				}
			},
			{
				"box" : {
					"id" : "obj-step-visualize",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 310.0, 100.0, 22.0 ],
					"text" : "pack 0 0"
				}
			},
			{
				"box" : {
					"id" : "obj-step-prepend",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 340.0, 100.0, 22.0 ],
					"text" : "prepend set"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-drum-indicators",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 950.0, 180.0, 200.0, 20.0 ],
					"text" : "Active Drums:"
				}
			},
			{
				"box" : {
					"id" : "obj-led-kick",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 950.0, 210.0, 24.0, 24.0 ],
					"oncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-led-kick",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 980.0, 210.0, 50.0, 20.0 ],
					"text" : "KICK"
				}
			},
			{
				"box" : {
					"id" : "obj-led-snare",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1040.0, 210.0, 24.0, 24.0 ],
					"oncolor" : [ 1.0, 0.5, 0.0, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-led-snare",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1070.0, 210.0, 60.0, 20.0 ],
					"text" : "SNARE"
				}
			},
			{
				"box" : {
					"id" : "obj-led-hihat",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1140.0, 210.0, 24.0, 24.0 ],
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-led-hihat",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1170.0, 210.0, 60.0, 20.0 ],
					"text" : "HIHAT"
				}
			},
			{
				"box" : {
					"id" : "obj-led-perc",
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1240.0, 210.0, 24.0, 24.0 ],
					"oncolor" : [ 0.0, 1.0, 0.5, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-led-perc",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1270.0, 210.0, 50.0, 20.0 ],
					"text" : "PERC"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-euclidean",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 250.0, 400.0, 20.0 ],
					"text" : "=== EUCLIDEAN SEQUENCER (4 voices) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-kick-steps",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 280.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-kick-pulses",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 280.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-comment-kick-euclid",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 280.0, 200.0, 20.0 ],
					"text" : "KICK: Steps / Pulses (Euclidean)"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-prob",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 280.0, 60.0, 22.0 ],
					"minimum" : 0.0,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-kick-prob",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 430.0, 280.0, 150.0, 20.0 ],
					"text" : "Probability (0-1)"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-steps",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 310.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-snare-pulses",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 310.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-comment-snare-euclid",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 310.0, 200.0, 20.0 ],
					"text" : "SNARE: Steps / Pulses"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-prob",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 310.0, 60.0, 22.0 ],
					"minimum" : 0.0,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-steps",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 340.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-pulses",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 340.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-comment-hihat-euclid",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 340.0, 200.0, 20.0 ],
					"text" : "HIHAT: Steps / Pulses"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-prob",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 340.0, 60.0, 22.0 ],
					"minimum" : 0.0,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-perc-steps",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 370.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-perc-pulses",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 370.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-comment-perc-euclid",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 370.0, 200.0, 20.0 ],
					"text" : "PERC: Steps / Pulses"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-prob",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 370.0, 60.0, 22.0 ],
					"minimum" : 0.0,
					"maximum" : 1.0
				}
			},
			{
				"box" : {
					"id" : "obj-kick-euclid-js",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 410.0, 110.0, 22.0 ],
					"text" : "js euclid.js"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-euclid-js",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 440.0, 110.0, 22.0 ],
					"text" : "js euclid.js"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-euclid-js",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 470.0, 110.0, 22.0 ],
					"text" : "js euclid.js"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-euclid-js",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 500.0, 110.0, 22.0 ],
					"text" : "js euclid.js"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 530.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 560.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 590.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 620.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-random",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 650.0, 100.0, 22.0 ],
					"text" : "random 1."
				}
			},
			{
				"box" : {
					"id" : "obj-kick-compare",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 30.0, 680.0, 100.0, 22.0 ],
					"text" : "<"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-random",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 710.0, 100.0, 22.0 ],
					"text" : "random 1."
				}
			},
			{
				"box" : {
					"id" : "obj-snare-compare",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 30.0, 740.0, 100.0, 22.0 ],
					"text" : "<"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-random",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 770.0, 100.0, 22.0 ],
					"text" : "random 1."
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-compare",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 30.0, 800.0, 100.0, 22.0 ],
					"text" : "<"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-random",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 830.0, 100.0, 22.0 ],
					"text" : "random 1."
				}
			},
			{
				"box" : {
					"id" : "obj-perc-compare",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 30.0, 860.0, 100.0, 22.0 ],
					"text" : "<"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-prob-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 890.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-prob-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 920.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-prob-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 950.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-prob-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 980.0, 100.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-mod",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1400.0, 100.0, 300.0, 20.0 ],
					"text" : "=== LFO MODULATION ==="
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-kick-rate",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1400.0, 130.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-kick-rate",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1470.0, 130.0, 100.0, 20.0 ],
					"text" : "Kick LFO Hz"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-kick",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 160.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-kick-depth",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1470.0, 160.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-kick-depth",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1540.0, 160.0, 100.0, 20.0 ],
					"text" : "Kick Depth"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-kick-scale",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 190.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-kick-add",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 840.0, 320.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-snare-rate",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1400.0, 230.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-snare-rate",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1470.0, 230.0, 100.0, 20.0 ],
					"text" : "Snare LFO Hz"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-snare",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 260.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-snare-depth",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1470.0, 260.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-snare-depth",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1540.0, 260.0, 100.0, 20.0 ],
					"text" : "Snare Depth"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-snare-scale",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 290.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-snare-add",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1140.0, 230.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-hihat-rate",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1400.0, 330.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-hihat-rate",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1470.0, 330.0, 100.0, 20.0 ],
					"text" : "Hihat LFO Hz"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-hihat",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 360.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-hihat-depth",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1470.0, 360.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-hihat-depth",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1540.0, 360.0, 100.0, 20.0 ],
					"text" : "Hihat Depth"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-hihat-scale",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 390.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-hihat-ratio",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.0, 610.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-perc-rate",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1400.0, 430.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-perc-rate",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1470.0, 430.0, 100.0, 20.0 ],
					"text" : "Perc LFO Hz"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-perc",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 460.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-perc-depth",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1470.0, 460.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-lfo-perc-depth",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1540.0, 460.0, 100.0, 20.0 ],
					"text" : "Perc Depth"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-perc-scale",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1400.0, 490.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-perc-ratio",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 640.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-fm-kick",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 90.0, 400.0, 20.0 ],
					"text" : "=== FM KICK (2-op with pitch envelope) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-kick-trigger",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 700.0, 120.0, 100.0, 22.0 ],
					"text" : "t b b b"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-base-freq",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 770.0, 120.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-kick-pitch-env-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 700.0, 150.0, 120.0, 22.0 ],
					"text" : "800, 50 20, 0 80"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-pitch-env",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 700.0, 180.0, 50.0, 22.0 ],
					"text" : "line~ 0"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-pitch-add",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 210.0, 100.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-op1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 240.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-op2-ratio",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 770.0, 240.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-kick-op2-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.0, 270.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-op2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.0, 300.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-op2-index",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 840.0, 300.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-kick-op2-mod",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.0, 330.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-fm-sum",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 360.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-amp-env-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 150.0, 80.0, 22.0 ],
					"text" : "1, 0 300"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-amp-env",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 700.0, 390.0, 50.0, 22.0 ],
					"text" : "line~ 0"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-amp-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 420.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-distort",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 450.0, 50.0, 22.0 ],
					"text" : "tanh~"
				}
			},
			{
				"box" : {
					"id" : "obj-kick-gain",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 770.0, 450.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-kick-gain-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 480.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-fm-snare",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1000.0, 90.0, 400.0, 20.0 ],
					"text" : "=== FM SNARE (2-op + noise) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-snare-trigger",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 1000.0, 120.0, 60.0, 22.0 ],
					"text" : "t b b"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-base-freq",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1070.0, 120.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-snare-op1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 150.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-op2-ratio",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1070.0, 150.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-snare-op2-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 180.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-op2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 210.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-op2-index",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1140.0, 210.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-snare-op2-mod",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 240.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-fm-sum",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 270.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-noise",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 300.0, 50.0, 22.0 ],
					"text" : "noise~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-noise-filter",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 1070.0, 330.0, 120.0, 22.0 ],
					"text" : "svf~ 2000 0.5"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-noise-gain",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1200.0, 330.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-snare-noise-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 360.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-mix",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 390.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-amp-env-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 120.0, 80.0, 22.0 ],
					"text" : "1, 0 150"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-amp-env",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1000.0, 420.0, 50.0, 22.0 ],
					"text" : "line~ 0"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-amp-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 450.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-snare-gain",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1070.0, 450.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-snare-gain-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 480.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-fm-hihat",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 530.0, 400.0, 20.0 ],
					"text" : "=== FM HIHAT (3-op metallic + noise) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-trigger",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 700.0, 560.0, 60.0, 22.0 ],
					"text" : "t b b"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-op1-freq",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 770.0, 560.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-op1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 590.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-op2-freq",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 770.0, 590.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-op2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.0, 620.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-op3-freq",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 840.0, 620.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-op3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 840.0, 650.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-sum1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 680.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-sum2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 710.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-noise",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.0, 710.0, 50.0, 22.0 ],
					"text" : "noise~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-noise-filter",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 770.0, 740.0, 120.0, 22.0 ],
					"text" : "svf~ 8000 0.8"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-noise-gain",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 900.0, 740.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-noise-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.0, 770.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-mix",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 800.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-amp-env-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 560.0, 70.0, 22.0 ],
					"text" : "1, 0 80"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-amp-env",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 700.0, 830.0, 50.0, 22.0 ],
					"text" : "line~ 0"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-amp-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 860.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-gain",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 770.0, 860.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-hihat-gain-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 700.0, 890.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-fm-perc",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1000.0, 530.0, 400.0, 20.0 ],
					"text" : "=== FM PERC (glitchy algorithmic random) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-perc-trigger",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"text" : "t b b b b b",
					"patching_rect" : [ 1000.0, 560.0, 100.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-perc-random-freq",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1010.0, 590.0, 100.0, 22.0 ],
					"text" : "random 2000"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-freq-offset",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1010.0, 620.0, 50.0, 22.0 ],
					"text" : "+ 200"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-op1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 650.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-random-ratio",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1070.0, 590.0, 100.0, 22.0 ],
					"text" : "random 1.0"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-ratio-scale",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1070.0, 620.0, 150.0, 22.0 ],
					"text" : "scale 0. 1. 1.414 7.83"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-op2-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 650.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-op2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 680.0, 50.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-random-index",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1140.0, 590.0, 100.0, 22.0 ],
					"text" : "random 1.0"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-index-scale",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1140.0, 620.0, 150.0, 22.0 ],
					"text" : "scale 0. 1. 50. 500."
				}
			},
			{
				"box" : {
					"id" : "obj-perc-op2-mod",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1070.0, 710.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-fm-sum",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 740.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-amp-env-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 560.0, 80.0, 22.0 ],
					"text" : "1, 0 100"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-amp-env",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 1000.0, 770.0, 50.0, 22.0 ],
					"text" : "line~ 0"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-amp-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 800.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-perc-gain",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1070.0, 800.0, 60.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-perc-gain-mult",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1000.0, 830.0, 50.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-master-mix",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 800.0, 400.0, 20.0 ],
					"text" : "=== MASTER MIX & OUTPUT ==="
				}
			},
			{
				"box" : {
					"id" : "obj-master-sum1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 200.0, 830.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-master-sum2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 200.0, 860.0, 50.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-master-sum3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 200.0, 890.0, 50.0, 22.0 ],
					"text" : "+~"
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
					"patching_rect" : [ 200.0, 920.0, 22.0, 100.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-send-kick-out",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 510.0, 90.0, 22.0 ],
					"text" : "s~ kick-out"
				}
			},
			{
				"box" : {
					"id" : "obj-send-snare-out",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1000.0, 510.0, 100.0, 22.0 ],
					"text" : "s~ snare-out"
				}
			},
			{
				"box" : {
					"id" : "obj-send-hihat-out",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 920.0, 100.0, 22.0 ],
					"text" : "s~ hihat-out"
				}
			},
			{
				"box" : {
					"id" : "obj-send-perc-out",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1000.0, 860.0, 90.0, 22.0 ],
					"text" : "s~ perc-out"
				}
			},
			{
				"box" : {
					"id" : "obj-send-drum-out",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 1030.0, 100.0, 22.0 ],
					"text" : "s~ drum-out"
				}
			},
			{
				"box" : {
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 1030.0, 45.0, 45.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-presets",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1300.0, 400.0, 300.0, 20.0 ],
					"text" : "=== PATTERN PRESETS (16 slots) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-preset-slot",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1300.0, 430.0, 50.0, 22.0 ],
					"minimum" : 1,
					"maximum" : 16
				}
			},
			{
				"box" : {
					"id" : "obj-comment-preset-slot",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1360.0, 430.0, 100.0, 20.0 ],
					"text" : "Preset Slot"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-store",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1300.0, 460.0, 40.0, 40.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-preset-store",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1350.0, 470.0, 100.0, 20.0 ],
					"text" : "STORE"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-recall",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1300.0, 510.0, 40.0, 40.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-preset-recall",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1350.0, 520.0, 100.0, 20.0 ],
					"text" : "RECALL"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-store-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 560.0, 100.0, 22.0 ],
					"text" : "store $1"
				}
			},
			{
				"box" : {
					"id" : "obj-preset-recall-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1410.0, 560.0, 100.0, 22.0 ],
					"text" : "recall $1"
				}
			},
			{
				"box" : {
					"id" : "obj-pattrstorage",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 590.0, 150.0, 22.0 ],
					"text" : "pattrstorage patterns",
					"saved_object_attributes" : {
						"client_rect" : [ 100, 100, 500, 600 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 200, 200, 800, 500 ]
					}
				}
			},
			{
				"box" : {
					"id" : "obj-autopattr",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1300.0, 620.0, 150.0, 22.0 ],
					"text" : "autopattr @autoname 1",
					"restore" : {
						"obj-kick-steps" : [ 8 ],
						"obj-kick-pulses" : [ 4 ],
						"obj-kick-prob" : [ 0.85 ],
						"obj-snare-steps" : [ 16 ],
						"obj-snare-pulses" : [ 3 ],
						"obj-snare-prob" : [ 0.75 ],
						"obj-hihat-steps" : [ 16 ],
						"obj-hihat-pulses" : [ 8 ],
						"obj-hihat-prob" : [ 0.6 ],
						"obj-perc-steps" : [ 12 ],
						"obj-perc-pulses" : [ 5 ],
						"obj-perc-prob" : [ 0.7 ]
					}
				}
			},
			{
				"box" : {
					"id" : "obj-preset-selector",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1300.0, 650.0, 320.0, 80.0 ],
					"preset_data" : []
				}
			},
			{
				"box" : {
					"id" : "obj-comment-scale-broadcast",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 90.0, 200.0, 20.0 ],
					"text" : "=== SCALE BROADCAST ==="
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
					"patching_rect" : [ 450.0, 120.0, 200.0, 22.0 ],
					"items" : [ "Chromatic (12-TET)", ",", "Pentatonic Minor", ",", "Harmonic Minor", ",", "Phrygian" ]
				}
			},
			{
				"box" : {
					"id" : "obj-scale-router",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 450.0, 150.0, 200.0, 22.0 ],
					"text" : "sel 0 1 2 3"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-chromatic",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 180.0, 200.0, 22.0 ],
					"text" : "0 1 2 3 4 5 6 7 8 9 10 11"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-penta-min",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 210.0, 200.0, 22.0 ],
					"text" : "0 3 5 7 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-harmonic",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 240.0, 200.0, 22.0 ],
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
					"patching_rect" : [ 450.0, 270.0, 200.0, 22.0 ],
					"text" : "0 1 3 5 7 8 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-storage",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 300.0, 100.0, 22.0 ],
					"text" : "zl group 12"
				}
			},
			{
				"box" : {
					"id" : "obj-send-scale",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 330.0, 100.0, 22.0 ],
					"text" : "s current-scale"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang-defaults",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1300.0, 100.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-init-lfos",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 100.0, 300.0, 22.0 ],
					"text" : "0.05, 0.5, 0.08, 0.3, 0.12, 0.2, 0.15, 0.4"
				}
			},
			{
				"box" : {
					"id" : "obj-unpack-lfos",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 1300.0, 750.0, 300.0, 22.0 ],
					"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0."
				}
			},
			{
				"box" : {
					"id" : "obj-init-kick",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 130.0, 250.0, 22.0 ],
					"text" : "8 4 0.85, 55., 1.5, 3., 0.5"
				}
			},
			{
				"box" : {
					"id" : "obj-init-snare",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 160.0, 250.0, 22.0 ],
					"text" : "16 3 0.75, 180., 1.8, 2.3, 0.3, 0.4"
				}
			},
			{
				"box" : {
					"id" : "obj-init-hihat",
					"maxclass" : "message",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 190.0, 250.0, 22.0 ],
					"text" : "16 8 0.6, 314., 503., 687., 0.3, 0.15"
				}
			},
			{
				"box" : {
					"id" : "obj-init-perc",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1300.0, 220.0, 250.0, 22.0 ],
					"text" : "12 5 0.7, 0.2"
				}
			},
			{
				"box" : {
					"id" : "obj-unpack-kick",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "float", "float", "float", "float", "float", "" ],
					"patching_rect" : [ 1300.0, 260.0, 250.0, 22.0 ],
					"text" : "unpack 0 0 0. 0. 0. 0. 0."
				}
			},
			{
				"box" : {
					"id" : "obj-unpack-snare",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "float", "float", "float", "" ],
					"patching_rect" : [ 1300.0, 290.0, 250.0, 22.0 ],
					"text" : "unpack 0 0 0. 0. 0. 0. 0. 0."
				}
			},
			{
				"box" : {
					"id" : "obj-unpack-hihat",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "float", "float", "float", "" ],
					"patching_rect" : [ 1300.0, 320.0, 250.0, 22.0 ],
					"text" : "unpack 0 0 0. 0. 0. 0. 0. 0."
				}
			},
			{
				"box" : {
					"id" : "obj-unpack-perc",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "float", "float" ],
					"patching_rect" : [ 1300.0, 350.0, 150.0, 22.0 ],
					"text" : "unpack 0 0 0. 0."
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-counter", 0 ],
					"source" : [ "obj-receive-clock", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-euclid-js", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-step-highlighter", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-step-current", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-step-current", 1 ],
					"source" : [ "obj-step-highlighter", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-step-visualize", 1 ],
					"source" : [ "obj-step-current", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-step-visualize", 0 ],
					"source" : [ "obj-step-highlighter", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-step-prepend", 0 ],
					"source" : [ "obj-step-visualize", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-step-display", 0 ],
					"source" : [ "obj-step-prepend", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-led-kick", 0 ],
					"source" : [ "obj-kick-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-led-snare", 0 ],
					"source" : [ "obj-snare-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-led-hihat", 0 ],
					"source" : [ "obj-hihat-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-led-perc", 0 ],
					"source" : [ "obj-perc-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-euclid-js", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-euclid-js", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-euclid-js", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-euclid-js", 1 ],
					"source" : [ "obj-kick-steps", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-euclid-js", 2 ],
					"source" : [ "obj-kick-pulses", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-gate", 1 ],
					"source" : [ "obj-kick-euclid-js", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-gate", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-random", 0 ],
					"source" : [ "obj-kick-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-compare", 0 ],
					"source" : [ "obj-kick-random", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-compare", 1 ],
					"source" : [ "obj-kick-prob", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-prob-gate", 0 ],
					"source" : [ "obj-kick-compare", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-prob-gate", 1 ],
					"source" : [ "obj-kick-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-trigger", 0 ],
					"source" : [ "obj-kick-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-euclid-js", 1 ],
					"source" : [ "obj-snare-steps", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-euclid-js", 2 ],
					"source" : [ "obj-snare-pulses", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-gate", 1 ],
					"source" : [ "obj-snare-euclid-js", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-gate", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-random", 0 ],
					"source" : [ "obj-snare-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-compare", 0 ],
					"source" : [ "obj-snare-random", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-compare", 1 ],
					"source" : [ "obj-snare-prob", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-prob-gate", 0 ],
					"source" : [ "obj-snare-compare", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-prob-gate", 1 ],
					"source" : [ "obj-snare-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-trigger", 0 ],
					"source" : [ "obj-snare-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-euclid-js", 1 ],
					"source" : [ "obj-hihat-steps", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-euclid-js", 2 ],
					"source" : [ "obj-hihat-pulses", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-gate", 1 ],
					"source" : [ "obj-hihat-euclid-js", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-gate", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-random", 0 ],
					"source" : [ "obj-hihat-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-compare", 0 ],
					"source" : [ "obj-hihat-random", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-compare", 1 ],
					"source" : [ "obj-hihat-prob", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-prob-gate", 0 ],
					"source" : [ "obj-hihat-compare", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-prob-gate", 1 ],
					"source" : [ "obj-hihat-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-trigger", 0 ],
					"source" : [ "obj-hihat-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-euclid-js", 1 ],
					"source" : [ "obj-perc-steps", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-euclid-js", 2 ],
					"source" : [ "obj-perc-pulses", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-gate", 1 ],
					"source" : [ "obj-perc-euclid-js", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-gate", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-random", 0 ],
					"source" : [ "obj-perc-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-compare", 0 ],
					"source" : [ "obj-perc-random", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-compare", 1 ],
					"source" : [ "obj-perc-prob", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-prob-gate", 0 ],
					"source" : [ "obj-perc-compare", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-prob-gate", 1 ],
					"source" : [ "obj-perc-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-trigger", 0 ],
					"source" : [ "obj-perc-prob-gate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-pitch-env-msg", 0 ],
					"source" : [ "obj-kick-trigger", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-amp-env-msg", 0 ],
					"source" : [ "obj-kick-trigger", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-pitch-env", 0 ],
					"source" : [ "obj-kick-pitch-env-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-pitch-add", 0 ],
					"source" : [ "obj-kick-pitch-env", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-pitch-add", 1 ],
					"source" : [ "obj-kick-base-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op1", 0 ],
					"source" : [ "obj-kick-pitch-add", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op2-mult", 0 ],
					"source" : [ "obj-kick-pitch-add", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op2-mult", 1 ],
					"source" : [ "obj-kick-op2-ratio", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op2", 0 ],
					"source" : [ "obj-kick-op2-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op2-mod", 0 ],
					"source" : [ "obj-kick-op2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op2-mod", 1 ],
					"source" : [ "obj-kick-op2-index", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-fm-sum", 0 ],
					"source" : [ "obj-kick-op1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-fm-sum", 1 ],
					"source" : [ "obj-kick-op2-mod", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-amp-mult", 0 ],
					"source" : [ "obj-kick-fm-sum", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-amp-env", 0 ],
					"source" : [ "obj-kick-amp-env-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-amp-mult", 1 ],
					"source" : [ "obj-kick-amp-env", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-distort", 0 ],
					"source" : [ "obj-kick-amp-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-gain-mult", 0 ],
					"source" : [ "obj-kick-distort", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-gain-mult", 1 ],
					"source" : [ "obj-kick-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-master-sum1", 0 ],
					"source" : [ "obj-kick-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-kick-out", 0 ],
					"source" : [ "obj-kick-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-amp-env-msg", 0 ],
					"source" : [ "obj-snare-trigger", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-noise", 0 ],
					"source" : [ "obj-snare-trigger", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op1", 0 ],
					"source" : [ "obj-snare-base-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op2-mult", 0 ],
					"source" : [ "obj-snare-base-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op2-mult", 1 ],
					"source" : [ "obj-snare-op2-ratio", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op2", 0 ],
					"source" : [ "obj-snare-op2-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op2-mod", 0 ],
					"source" : [ "obj-snare-op2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op2-mod", 1 ],
					"source" : [ "obj-snare-op2-index", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-fm-sum", 0 ],
					"source" : [ "obj-snare-op1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-fm-sum", 1 ],
					"source" : [ "obj-snare-op2-mod", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-noise-filter", 0 ],
					"source" : [ "obj-snare-noise", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-noise-mult", 0 ],
					"source" : [ "obj-snare-noise-filter", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-noise-mult", 1 ],
					"source" : [ "obj-snare-noise-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-mix", 0 ],
					"source" : [ "obj-snare-fm-sum", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-mix", 1 ],
					"source" : [ "obj-snare-noise-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-amp-mult", 0 ],
					"source" : [ "obj-snare-mix", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-amp-env", 0 ],
					"source" : [ "obj-snare-amp-env-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-amp-mult", 1 ],
					"source" : [ "obj-snare-amp-env", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-gain-mult", 0 ],
					"source" : [ "obj-snare-amp-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-gain-mult", 1 ],
					"source" : [ "obj-snare-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-master-sum1", 1 ],
					"source" : [ "obj-snare-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-snare-out", 0 ],
					"source" : [ "obj-snare-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-amp-env-msg", 0 ],
					"source" : [ "obj-hihat-trigger", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-noise", 0 ],
					"source" : [ "obj-hihat-trigger", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-op1", 0 ],
					"source" : [ "obj-hihat-op1-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-op2", 0 ],
					"source" : [ "obj-hihat-op2-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-op3", 0 ],
					"source" : [ "obj-hihat-op3-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-sum1", 0 ],
					"source" : [ "obj-hihat-op1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-sum1", 1 ],
					"source" : [ "obj-hihat-op2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-sum2", 0 ],
					"source" : [ "obj-hihat-sum1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-sum2", 1 ],
					"source" : [ "obj-hihat-op3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-noise-filter", 0 ],
					"source" : [ "obj-hihat-noise", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-noise-mult", 0 ],
					"source" : [ "obj-hihat-noise-filter", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-noise-mult", 1 ],
					"source" : [ "obj-hihat-noise-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-mix", 0 ],
					"source" : [ "obj-hihat-sum2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-mix", 1 ],
					"source" : [ "obj-hihat-noise-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-amp-mult", 0 ],
					"source" : [ "obj-hihat-mix", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-amp-env", 0 ],
					"source" : [ "obj-hihat-amp-env-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-amp-mult", 1 ],
					"source" : [ "obj-hihat-amp-env", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-gain-mult", 0 ],
					"source" : [ "obj-hihat-amp-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-gain-mult", 1 ],
					"source" : [ "obj-hihat-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-master-sum2", 0 ],
					"source" : [ "obj-hihat-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-hihat-out", 0 ],
					"source" : [ "obj-hihat-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-amp-env-msg", 0 ],
					"source" : [ "obj-perc-trigger", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-random-freq", 0 ],
					"source" : [ "obj-perc-trigger", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-random-ratio", 0 ],
					"source" : [ "obj-perc-trigger", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-random-index", 0 ],
					"source" : [ "obj-perc-trigger", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-freq-offset", 0 ],
					"source" : [ "obj-perc-random-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-op1", 0 ],
					"source" : [ "obj-perc-freq-offset", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-op2-mult", 0 ],
					"source" : [ "obj-perc-freq-offset", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-ratio-scale", 0 ],
					"source" : [ "obj-perc-random-ratio", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-op2-mult", 1 ],
					"source" : [ "obj-perc-ratio-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-op2", 0 ],
					"source" : [ "obj-perc-op2-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-op2-mod", 0 ],
					"source" : [ "obj-perc-op2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-index-scale", 0 ],
					"source" : [ "obj-perc-random-index", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-op2-mod", 1 ],
					"source" : [ "obj-perc-index-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-fm-sum", 0 ],
					"source" : [ "obj-perc-op1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-fm-sum", 1 ],
					"source" : [ "obj-perc-op2-mod", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-amp-mult", 0 ],
					"source" : [ "obj-perc-fm-sum", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-amp-env", 0 ],
					"source" : [ "obj-perc-amp-env-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-amp-mult", 1 ],
					"source" : [ "obj-perc-amp-env", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-gain-mult", 0 ],
					"source" : [ "obj-perc-amp-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-gain-mult", 1 ],
					"source" : [ "obj-perc-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-master-sum2", 1 ],
					"source" : [ "obj-perc-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-perc-out", 0 ],
					"source" : [ "obj-perc-gain-mult", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-master-sum3", 0 ],
					"source" : [ "obj-master-sum1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-master-sum3", 1 ],
					"source" : [ "obj-master-sum2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-master-gain", 0 ],
					"source" : [ "obj-master-sum3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-drum-out", 0 ],
					"source" : [ "obj-master-gain", 0 ]
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
					"destination" : [ "obj-scale-penta-min", 0 ],
					"source" : [ "obj-scale-router", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-harmonic", 0 ],
					"source" : [ "obj-scale-router", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-phrygian", 0 ],
					"source" : [ "obj-scale-router", 3 ]
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
					"source" : [ "obj-scale-penta-min", 0 ]
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
					"destination" : [ "obj-send-scale", 0 ],
					"source" : [ "obj-scale-storage", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-init-kick", 0 ],
					"source" : [ "obj-loadbang-defaults", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-init-snare", 0 ],
					"source" : [ "obj-loadbang-defaults", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-init-hihat", 0 ],
					"source" : [ "obj-loadbang-defaults", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-init-perc", 0 ],
					"source" : [ "obj-loadbang-defaults", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-init-lfos", 0 ],
					"source" : [ "obj-loadbang-defaults", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack-lfos", 0 ],
					"source" : [ "obj-init-lfos", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-kick-rate", 0 ],
					"source" : [ "obj-unpack-lfos", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-kick-depth", 0 ],
					"source" : [ "obj-unpack-lfos", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-snare-rate", 0 ],
					"source" : [ "obj-unpack-lfos", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-snare-depth", 0 ],
					"source" : [ "obj-unpack-lfos", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-hihat-rate", 0 ],
					"source" : [ "obj-unpack-lfos", 4 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-hihat-depth", 0 ],
					"source" : [ "obj-unpack-lfos", 5 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-perc-rate", 0 ],
					"source" : [ "obj-unpack-lfos", 6 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-perc-depth", 0 ],
					"source" : [ "obj-unpack-lfos", 7 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-kick", 0 ],
					"source" : [ "obj-lfo-kick-rate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-kick-scale", 0 ],
					"source" : [ "obj-lfo-kick", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-kick-scale", 1 ],
					"source" : [ "obj-lfo-kick-depth", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-kick-add", 0 ],
					"source" : [ "obj-kick-op2-index", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-kick-add", 1 ],
					"source" : [ "obj-lfo-kick-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-snare", 0 ],
					"source" : [ "obj-lfo-snare-rate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-snare-scale", 0 ],
					"source" : [ "obj-lfo-snare", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-snare-scale", 1 ],
					"source" : [ "obj-lfo-snare-depth", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-snare-add", 0 ],
					"source" : [ "obj-snare-op2-index", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-snare-add", 1 ],
					"source" : [ "obj-lfo-snare-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-hihat", 0 ],
					"source" : [ "obj-lfo-hihat-rate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-hihat-scale", 0 ],
					"source" : [ "obj-lfo-hihat", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-hihat-scale", 1 ],
					"source" : [ "obj-lfo-hihat-depth", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-hihat-ratio", 0 ],
					"source" : [ "obj-hihat-op2-freq", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-hihat-ratio", 1 ],
					"source" : [ "obj-lfo-hihat-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-perc", 0 ],
					"source" : [ "obj-lfo-perc-rate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-perc-scale", 0 ],
					"source" : [ "obj-lfo-perc", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-perc-scale", 1 ],
					"source" : [ "obj-lfo-perc-depth", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-perc-ratio", 0 ],
					"source" : [ "obj-perc-ratio-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo-perc-ratio", 1 ],
					"source" : [ "obj-lfo-perc-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack-kick", 0 ],
					"source" : [ "obj-init-kick", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack-snare", 0 ],
					"source" : [ "obj-init-snare", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack-hihat", 0 ],
					"source" : [ "obj-init-hihat", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-unpack-perc", 0 ],
					"source" : [ "obj-init-perc", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-steps", 0 ],
					"source" : [ "obj-unpack-kick", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-pulses", 0 ],
					"source" : [ "obj-unpack-kick", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-prob", 0 ],
					"source" : [ "obj-unpack-kick", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-base-freq", 0 ],
					"source" : [ "obj-unpack-kick", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op2-ratio", 0 ],
					"source" : [ "obj-unpack-kick", 4 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-op2-index", 0 ],
					"source" : [ "obj-unpack-kick", 5 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-kick-gain", 0 ],
					"source" : [ "obj-unpack-kick", 6 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-steps", 0 ],
					"source" : [ "obj-unpack-snare", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-pulses", 0 ],
					"source" : [ "obj-unpack-snare", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-prob", 0 ],
					"source" : [ "obj-unpack-snare", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-base-freq", 0 ],
					"source" : [ "obj-unpack-snare", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op2-ratio", 0 ],
					"source" : [ "obj-unpack-snare", 4 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-op2-index", 0 ],
					"source" : [ "obj-unpack-snare", 5 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-noise-gain", 0 ],
					"source" : [ "obj-unpack-snare", 6 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-snare-gain", 0 ],
					"source" : [ "obj-unpack-snare", 7 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-steps", 0 ],
					"source" : [ "obj-unpack-hihat", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-pulses", 0 ],
					"source" : [ "obj-unpack-hihat", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-prob", 0 ],
					"source" : [ "obj-unpack-hihat", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-op1-freq", 0 ],
					"source" : [ "obj-unpack-hihat", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-op2-freq", 0 ],
					"source" : [ "obj-unpack-hihat", 4 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-op3-freq", 0 ],
					"source" : [ "obj-unpack-hihat", 5 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-noise-gain", 0 ],
					"source" : [ "obj-unpack-hihat", 6 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-hihat-gain", 0 ],
					"source" : [ "obj-unpack-hihat", 7 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-steps", 0 ],
					"source" : [ "obj-unpack-perc", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-pulses", 0 ],
					"source" : [ "obj-unpack-perc", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-prob", 0 ],
					"source" : [ "obj-unpack-perc", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-perc-gain", 0 ],
					"source" : [ "obj-unpack-perc", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-preset-store-msg", 0 ],
					"source" : [ "obj-preset-slot", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-preset-recall-msg", 0 ],
					"source" : [ "obj-preset-slot", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-preset-store-msg", 0 ],
					"source" : [ "obj-preset-store", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-preset-recall-msg", 0 ],
					"source" : [ "obj-preset-recall", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-preset-store-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-preset-recall-msg", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-preset-selector", 0 ]
				}
			}
		]
	}
}
