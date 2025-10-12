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
		"rect" : [ 100.0, 100.0, 900.0, 650.0 ],
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
					"text" : "PURE TONES - Clean sine waves with gentle modulation for optimistic moments"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 600.0, 20.0 ],
					"text" : "Three sine oscillators with slow random pitch/amplitude drift. Simple but beautiful."
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
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 300.0, 90.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 300.0, 120.0, 100.0, 22.0 ],
					"text" : "metro 8000"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-metro",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 120.0, 200.0, 20.0 ],
					"text" : "Very slow changes (8 seconds)"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 160.0, 200.0, 20.0 ],
					"text" : "Voice 1: Low pure tone"
				}
			},
			{
				"box" : {
					"id" : "obj-random-freq1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 190.0, 100.0, 22.0 ],
					"text" : "random 30"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-freq1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 220.0, 150.0, 22.0 ],
					"text" : "scale 0 30 100. 130."
				}
			},
			{
				"box" : {
					"id" : "obj-line-freq1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 30.0, 250.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-cycle1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 290.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-random-amp1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 150.0, 190.0, 100.0, 22.0 ],
					"text" : "random 100"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-amp1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 220.0, 150.0, 22.0 ],
					"text" : "scale 0 100 0.05 0.15"
				}
			},
			{
				"box" : {
					"id" : "obj-line-amp1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 150.0, 250.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 330.0, 140.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 160.0, 200.0, 20.0 ],
					"text" : "Voice 2: Mid pure tone"
				}
			},
			{
				"box" : {
					"id" : "obj-random-freq2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 270.0, 190.0, 100.0, 22.0 ],
					"text" : "random 40"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-freq2",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 220.0, 150.0, 22.0 ],
					"text" : "scale 0 40 200. 280."
				}
			},
			{
				"box" : {
					"id" : "obj-line-freq2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 270.0, 250.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-cycle2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 270.0, 290.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-random-amp2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 390.0, 190.0, 100.0, 22.0 ],
					"text" : "random 100"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-amp2",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 220.0, 150.0, 22.0 ],
					"text" : "scale 0 100 0.03 0.10"
				}
			},
			{
				"box" : {
					"id" : "obj-line-amp2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 390.0, 250.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 270.0, 330.0, 140.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 160.0, 200.0, 20.0 ],
					"text" : "Voice 3: High shimmer"
				}
			},
			{
				"box" : {
					"id" : "obj-random-freq3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 510.0, 190.0, 100.0, 22.0 ],
					"text" : "random 50"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-freq3",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 510.0, 220.0, 150.0, 22.0 ],
					"text" : "scale 0 50 600. 900."
				}
			},
			{
				"box" : {
					"id" : "obj-line-freq3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 510.0, 250.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-cycle3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 510.0, 290.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-random-amp3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 630.0, 190.0, 100.0, 22.0 ],
					"text" : "random 100"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-amp3",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 630.0, 220.0, 150.0, 22.0 ],
					"text" : "scale 0 100 0.02 0.08"
				}
			},
			{
				"box" : {
					"id" : "obj-line-amp3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 630.0, 250.0, 100.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 510.0, 330.0, 140.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-mixer",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 380.0, 500.0, 22.0 ],
					"text" : "+~ +~"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo-tremolo",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 420.0, 100.0, 22.0 ],
					"text" : "cycle~ 0.07"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-tremolo",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 450.0, 150.0, 22.0 ],
					"text" : "scale~ -1. 1. 0.8 1."
				}
			},
			{
				"box" : {
					"id" : "obj-tremolo",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 490.0, 100.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-tremolo",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 420.0, 250.0, 20.0 ],
					"text" : "Subtle tremolo for gentle movement"
				}
			},
			{
				"box" : {
					"id" : "obj-reverb",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 530.0, 150.0, 22.0 ],
					"text" : "freeverb~ 0.6 0.5"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-reverb",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 530.0, 250.0, 20.0 ],
					"text" : "Light reverb - keep it clean"
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
					"patching_rect" : [ 30.0, 570.0, 22.0, 80.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 610.0, 45.0, 45.0 ]
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-metro", 0 ],
					"source" : [ "obj-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-metro", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random-freq1", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random-amp1", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random-freq2", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random-amp2", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random-freq3", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random-amp3", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-freq1", 0 ],
					"source" : [ "obj-random-freq1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line-freq1", 0 ],
					"source" : [ "obj-scale-freq1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle1", 0 ],
					"source" : [ "obj-line-freq1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain1", 0 ],
					"source" : [ "obj-cycle1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-amp1", 0 ],
					"source" : [ "obj-random-amp1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line-amp1", 0 ],
					"source" : [ "obj-scale-amp1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain1", 1 ],
					"source" : [ "obj-line-amp1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mixer", 0 ],
					"source" : [ "obj-gain1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-freq2", 0 ],
					"source" : [ "obj-random-freq2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line-freq2", 0 ],
					"source" : [ "obj-scale-freq2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle2", 0 ],
					"source" : [ "obj-line-freq2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain2", 0 ],
					"source" : [ "obj-cycle2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-amp2", 0 ],
					"source" : [ "obj-random-amp2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line-amp2", 0 ],
					"source" : [ "obj-scale-amp2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain2", 1 ],
					"source" : [ "obj-line-amp2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mixer", 1 ],
					"source" : [ "obj-gain2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-freq3", 0 ],
					"source" : [ "obj-random-freq3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line-freq3", 0 ],
					"source" : [ "obj-scale-freq3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle3", 0 ],
					"source" : [ "obj-line-freq3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain3", 0 ],
					"source" : [ "obj-cycle3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-amp3", 0 ],
					"source" : [ "obj-random-amp3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line-amp3", 0 ],
					"source" : [ "obj-scale-amp3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain3", 1 ],
					"source" : [ "obj-line-amp3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mixer", 2 ],
					"source" : [ "obj-gain3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-tremolo", 0 ],
					"source" : [ "obj-mixer", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-tremolo", 0 ],
					"source" : [ "obj-lfo-tremolo", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-tremolo", 1 ],
					"source" : [ "obj-scale-tremolo", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-reverb", 0 ],
					"source" : [ "obj-tremolo", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-reverb", 1 ],
					"source" : [ "obj-tremolo", 0 ]
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
