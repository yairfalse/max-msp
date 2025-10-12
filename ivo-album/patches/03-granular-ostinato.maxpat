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
		"rect" : [ 100.0, 100.0, 900.0, 700.0 ],
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
					"patching_rect" : [ 30.0, 30.0, 600.0, 20.0 ],
					"text" : "GRANULAR OSTINATO - Generative repeating pattern through granular synthesis"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 600.0, 20.0 ],
					"text" : "Load a sound file, generates an evolving ostinato pattern, granulates it into textures"
				}
			},
			{
				"box" : {
					"id" : "obj-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 90.0, 40.0, 40.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-load",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 95.0, 200.0, 20.0 ],
					"text" : "Click to load audio file"
				}
			},
			{
				"box" : {
					"id" : "obj-sfload",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 95.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 100.0, 125.0, 150.0, 22.0 ],
					"text" : "buffer~ sample1"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 450.0, 90.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-metro-pattern",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 160.0, 100.0, 22.0 ],
					"text" : "metro 500"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-tempo",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 160.0, 200.0, 20.0 ],
					"text" : "Ostinato rhythm (500ms)"
				}
			},
			{
				"box" : {
					"id" : "obj-counter",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 30.0, 200.0, 100.0, 22.0 ],
					"text" : "counter 0 7"
				}
			},
			{
				"box" : {
					"id" : "obj-select",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 30.0, 240.0, 450.0, 22.0 ],
					"text" : "sel 0 1 2 3 4 5 6 7"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-pattern",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 200.0, 300.0, 20.0 ],
					"text" : "8-step pattern sequencer"
				}
			},
			{
				"box" : {
					"id" : "obj-note0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 280.0, 50.0, 22.0 ],
					"text" : "60"
				}
			},
			{
				"box" : {
					"id" : "obj-note1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 280.0, 50.0, 22.0 ],
					"text" : "67"
				}
			},
			{
				"box" : {
					"id" : "obj-note2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 280.0, 50.0, 22.0 ],
					"text" : "64"
				}
			},
			{
				"box" : {
					"id" : "obj-note3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 280.0, 50.0, 22.0 ],
					"text" : "72"
				}
			},
			{
				"box" : {
					"id" : "obj-note4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 280.0, 50.0, 22.0 ],
					"text" : "67"
				}
			},
			{
				"box" : {
					"id" : "obj-note5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 280.0, 50.0, 22.0 ],
					"text" : "64"
				}
			},
			{
				"box" : {
					"id" : "obj-note6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 280.0, 50.0, 22.0 ],
					"text" : "60"
				}
			},
			{
				"box" : {
					"id" : "obj-note7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 280.0, 50.0, 22.0 ],
					"text" : "55"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-notes",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 520.0, 280.0, 250.0, 20.0 ],
					"text" : "C Dorian scale pattern (C D Eb F G A Bb)"
				}
			},
			{
				"box" : {
					"id" : "obj-mtof",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 320.0, 100.0, 22.0 ],
					"text" : "mtof"
				}
			},
			{
				"box" : {
					"id" : "obj-groove",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "bang" ],
					"patching_rect" : [ 30.0, 420.0, 200.0, 22.0 ],
					"text" : "groove~ sample1"
				}
			},
			{
				"box" : {
					"id" : "obj-line-pitch",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 30.0, 360.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-pitch",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 390.0, 180.0, 22.0 ],
					"text" : "scale 0. 2000. 0.5 2."
				}
			},
			{
				"box" : {
					"id" : "obj-grain-rate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 450.0, 160.0, 100.0, 22.0 ],
					"text" : "random 50"
				}
			},
			{
				"box" : {
					"id" : "obj-grain-scale",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 190.0, 150.0, 22.0 ],
					"text" : "scale 0 50 5. 50."
				}
			},
			{
				"box" : {
					"id" : "obj-grain-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 450.0, 220.0, 100.0, 22.0 ],
					"text" : "metro 20"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-grain",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 620.0, 190.0, 200.0, 20.0 ],
					"text" : "Random grain timing"
				}
			},
			{
				"box" : {
					"id" : "obj-random-pos",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 450.0, 260.0, 100.0, 22.0 ],
					"text" : "random 1000"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-pos",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 290.0, 180.0, 22.0 ],
					"text" : "scale 0 1000 100. 3000."
				}
			},
			{
				"box" : {
					"id" : "obj-grain-trigger",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 450.0, 320.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-multiply",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 460.0, 100.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-env",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 150.0, 420.0, 150.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-env-gen",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 380.0, 200.0, 22.0 ],
					"text" : "0, 1 50, 0.7 100, 0 50"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-env",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 380.0, 200.0, 20.0 ],
					"text" : "Grain envelope (attack-decay)"
				}
			},
			{
				"box" : {
					"id" : "obj-filter",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 500.0, 150.0, 22.0 ],
					"text" : "svf~ 2000 0.5"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-filter",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 500.0, 200.0, 20.0 ],
					"text" : "Lowpass filter for warmth"
				}
			},
			{
				"box" : {
					"id" : "obj-reverb",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 540.0, 150.0, 22.0 ],
					"text" : "freeverb~ 0.8 0.7"
				}
			},
			{
				"box" : {
					"id" : "obj-gain",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 590.0, 22.0, 80.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 630.0, 45.0, 45.0 ]
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-metro-pattern", 0 ],
					"source" : [ "obj-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-grain-metro", 0 ],
					"source" : [ "obj-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-buffer", 0 ],
					"source" : [ "obj-sfload", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-grain-rate", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-counter", 0 ],
					"source" : [ "obj-metro-pattern", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-env-gen", 0 ],
					"source" : [ "obj-metro-pattern", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-select", 0 ],
					"source" : [ "obj-counter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note0", 0 ],
					"source" : [ "obj-select", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note1", 0 ],
					"source" : [ "obj-select", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note2", 0 ],
					"source" : [ "obj-select", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note3", 0 ],
					"source" : [ "obj-select", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note4", 0 ],
					"source" : [ "obj-select", 4 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note5", 0 ],
					"source" : [ "obj-select", 5 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note6", 0 ],
					"source" : [ "obj-select", 6 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note7", 0 ],
					"source" : [ "obj-select", 7 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note0", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note5", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note6", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-note7", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line-pitch", 0 ],
					"source" : [ "obj-mtof", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-pitch", 0 ],
					"source" : [ "obj-line-pitch", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-groove", 1 ],
					"source" : [ "obj-scale-pitch", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-multiply", 0 ],
					"source" : [ "obj-groove", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-grain-scale", 0 ],
					"source" : [ "obj-grain-rate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-grain-metro", 1 ],
					"source" : [ "obj-grain-scale", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random-pos", 0 ],
					"source" : [ "obj-grain-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-pos", 0 ],
					"source" : [ "obj-random-pos", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-grain-trigger", 0 ],
					"source" : [ "obj-scale-pos", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-groove", 0 ],
					"source" : [ "obj-grain-trigger", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-env", 0 ],
					"source" : [ "obj-env-gen", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-multiply", 1 ],
					"source" : [ "obj-env", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-filter", 0 ],
					"source" : [ "obj-multiply", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-reverb", 0 ],
					"source" : [ "obj-filter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-reverb", 1 ],
					"source" : [ "obj-filter", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain", 0 ],
					"source" : [ "obj-reverb", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-dac", 0 ],
					"source" : [ "obj-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-dac", 1 ],
					"source" : [ "obj-gain", 0 ]
				}
			}
		]
	}
}
