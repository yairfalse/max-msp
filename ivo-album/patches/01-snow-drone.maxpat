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
		"rect" : [ 100.0, 100.0, 800.0, 600.0 ],
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
					"patching_rect" : [ 30.0, 30.0, 500.0, 20.0 ],
					"text" : "SNOW DRONE - Generative evolving harmonics for Ivo"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 500.0, 20.0 ],
					"text" : "Slowly evolving drone with 5 harmonic layers. Click toggle to start."
				}
			},
			{
				"box" : {
					"id" : "obj-power",
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
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 400.0, 520.0, 45.0, 45.0 ]
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
					"patching_rect" : [ 400.0, 420.0, 22.0, 80.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-reverb",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 400.0, 380.0, 100.0, 22.0 ],
					"text" : "freeverb~ 0.9 0.8"
				}
			},
			{
				"box" : {
					"id" : "obj-mix12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 400.0, 310.0, 32.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-mix123",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 400.0, 330.0, 32.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-mix1234",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 400.0, 350.0, 32.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-mixer",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 400.0, 370.0, 32.0, 22.0 ],
					"text" : "+~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 150.0, 150.0, 20.0 ],
					"text" : "Voice 1: Fundamental"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 200.0, 90.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 200.0, 120.0, 80.0, 22.0 ],
					"text" : "metro 5000"
				}
			},
			{
				"box" : {
					"id" : "obj-random1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 50.0, 180.0, 100.0, 22.0 ],
					"text" : "random 20"
				}
			},
			{
				"box" : {
					"id" : "obj-scale1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 210.0, 120.0, 22.0 ],
					"text" : "scale 0 20 80. 120."
				}
			},
			{
				"box" : {
					"id" : "obj-line1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 50.0, 240.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 50.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.15"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 150.0, 150.0, 20.0 ],
					"text" : "Voice 2: Octave"
				}
			},
			{
				"box" : {
					"id" : "obj-random2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 180.0, 180.0, 100.0, 22.0 ],
					"text" : "random 20"
				}
			},
			{
				"box" : {
					"id" : "obj-scale2",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 210.0, 120.0, 22.0 ],
					"text" : "scale 0 20 160. 240."
				}
			},
			{
				"box" : {
					"id" : "obj-line2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 180.0, 240.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 180.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 180.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.12"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 310.0, 150.0, 150.0, 20.0 ],
					"text" : "Voice 3: Fifth"
				}
			},
			{
				"box" : {
					"id" : "obj-random3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 310.0, 180.0, 100.0, 22.0 ],
					"text" : "random 15"
				}
			},
			{
				"box" : {
					"id" : "obj-scale3",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 210.0, 130.0, 22.0 ],
					"text" : "scale 0 15 240. 360."
				}
			},
			{
				"box" : {
					"id" : "obj-line3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 310.0, 240.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 310.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 310.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.10"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 150.0, 150.0, 20.0 ],
					"text" : "Voice 4: Major Third"
				}
			},
			{
				"box" : {
					"id" : "obj-random4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 440.0, 180.0, 100.0, 22.0 ],
					"text" : "random 15"
				}
			},
			{
				"box" : {
					"id" : "obj-scale4",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 210.0, 130.0, 22.0 ],
					"text" : "scale 0 15 320. 400."
				}
			},
			{
				"box" : {
					"id" : "obj-line4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 440.0, 240.0, 80.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-cycle4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 440.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 440.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.08"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-voice5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 570.0, 150.0, 150.0, 20.0 ],
					"text" : "Voice 5: Seventh"
				}
			},
			{
				"box" : {
					"id" : "obj-random5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 570.0, 180.0, 100.0, 22.0 ],
					"text" : "random 10"
				}
			},
			{
				"box" : {
					"id" : "obj-scale5",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 210.0, 130.0, 22.0 ],
					"text" : "scale 0 10 440. 520."
				}
			},
			{
				"box" : {
					"id" : "obj-line5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 570.0, 240.0, 80.0, 22.0 ],
					"text" : "line~"
				}
			},
			{
				"box" : {
					"id" : "obj-cycle5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 570.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 570.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.06"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-metro", 0 ],
					"source" : [ "obj-power", 0 ]
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
					"destination" : [ "obj-master-gain", 0 ],
					"source" : [ "obj-reverb", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-reverb", 0 ],
					"source" : [ "obj-mixer", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-reverb", 1 ],
					"source" : [ "obj-mixer", 0 ]
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
					"destination" : [ "obj-random1", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random2", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random3", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random4", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-random5", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale1", 0 ],
					"source" : [ "obj-random1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line1", 0 ],
					"source" : [ "obj-scale1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle1", 0 ],
					"source" : [ "obj-line1", 0 ]
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
					"destination" : [ "obj-mix12", 0 ],
					"source" : [ "obj-gain1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale2", 0 ],
					"source" : [ "obj-random2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line2", 0 ],
					"source" : [ "obj-scale2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle2", 0 ],
					"source" : [ "obj-line2", 0 ]
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
					"destination" : [ "obj-mix12", 1 ],
					"source" : [ "obj-gain2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mix123", 0 ],
					"source" : [ "obj-mix12", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale3", 0 ],
					"source" : [ "obj-random3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line3", 0 ],
					"source" : [ "obj-scale3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle3", 0 ],
					"source" : [ "obj-line3", 0 ]
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
					"destination" : [ "obj-mix123", 1 ],
					"source" : [ "obj-gain3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mix1234", 0 ],
					"source" : [ "obj-mix123", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale4", 0 ],
					"source" : [ "obj-random4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line4", 0 ],
					"source" : [ "obj-scale4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle4", 0 ],
					"source" : [ "obj-line4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain4", 0 ],
					"source" : [ "obj-cycle4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mix1234", 1 ],
					"source" : [ "obj-gain4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mixer", 0 ],
					"source" : [ "obj-mix1234", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale5", 0 ],
					"source" : [ "obj-random5", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-line5", 0 ],
					"source" : [ "obj-scale5", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-cycle5", 0 ],
					"source" : [ "obj-line5", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain5", 0 ],
					"source" : [ "obj-cycle5", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mixer", 1 ],
					"source" : [ "obj-gain5", 0 ]
				}
			}
		]
	}
}
