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
		"rect" : [ 100.0, 100.0, 850.0, 750.0 ],
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
					"text" : "FIELD RECORDING PROCESSOR - Transform Berlin field recordings into ambient textures"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 600.0, 20.0 ],
					"text" : "Spectral freeze, time stretch, pitch shift, and reverb for creating abstract soundscapes"
				}
			},
			{
				"box" : {
					"id" : "obj-load",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 90.0, 80.0, 22.0 ],
					"text" : "open"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-load",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 90.0, 300.0, 20.0 ],
					"text" : "Load field recording (trams, parks, city sounds...)"
				}
			},
			{
				"box" : {
					"id" : "obj-buffer",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 30.0, 120.0, 180.0, 22.0 ],
					"text" : "buffer~ field 60000"
				}
			},
			{
				"box" : {
					"id" : "obj-adc",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 250.0, 90.0, 45.0, 45.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-record",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 100.0, 200.0, 20.0 ],
					"text" : "Or record live input"
				}
			},
			{
				"box" : {
					"id" : "obj-record",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 250.0, 150.0, 150.0, 22.0 ],
					"text" : "record~ field"
				}
			},
			{
				"box" : {
					"id" : "obj-toggle-play",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 190.0, 40.0, 40.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-play",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 200.0, 150.0, 20.0 ],
					"text" : "Play/Process"
				}
			},
			{
				"box" : {
					"id" : "obj-groove",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "bang" ],
					"patching_rect" : [ 30.0, 250.0, 200.0, 22.0 ],
					"text" : "groove~ field"
				}
			},
			{
				"box" : {
					"id" : "obj-rate",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 200.0, 80.0, 22.0 ],
					"minimum" : 0.1,
					"maximum" : 4.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-rate",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 200.0, 200.0, 20.0 ],
					"text" : "Playback rate (0.1 = very slow)"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 150.0, 160.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-rate-default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 220.0, 160.0, 50.0, 22.0 ],
					"text" : "0.25"
				}
			},
			{
				"box" : {
					"id" : "obj-pfft",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 300.0, 300.0, 22.0 ],
					"text" : "pfft~ spectral-freeze 4096 4"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-pfft",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 300.0, 300.0, 20.0 ],
					"text" : "Spectral processing (freeze, smear)"
				}
			},
			{
				"box" : {
					"id" : "obj-freeze-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 190.0, 30.0, 30.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-freeze",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 195.0, 150.0, 20.0 ],
					"text" : "Spectral freeze"
				}
			},
			{
				"box" : {
					"id" : "obj-freeze-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 230.0, 100.0, 22.0 ],
					"text" : "s freeze-state"
				}
			},
			{
				"box" : {
					"id" : "obj-pitchshift",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 350.0, 200.0, 22.0 ],
					"text" : "gizmo~ 0.5"
				}
			},
			{
				"box" : {
					"id" : "obj-pitch-slider",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 270.0, 80.0, 22.0 ],
					"minimum" : 0.25,
					"maximum" : 2.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-pitch",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 270.0, 200.0, 20.0 ],
					"text" : "Pitch shift (0.5 = octave down)"
				}
			},
			{
				"box" : {
					"id" : "obj-pitch-default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 230.0, 50.0, 22.0 ],
					"text" : "0.5"
				}
			},
			{
				"box" : {
					"id" : "obj-delay1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 400.0, 150.0, 22.0 ],
					"text" : "tapin~ 10000"
				}
			},
			{
				"box" : {
					"id" : "obj-tapout1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 440.0, 150.0, 22.0 ],
					"text" : "tapout~ 2347"
				}
			},
			{
				"box" : {
					"id" : "obj-tapout2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 200.0, 440.0, 150.0, 22.0 ],
					"text" : "tapout~ 3571"
				}
			},
			{
				"box" : {
					"id" : "obj-tapout3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 370.0, 440.0, 150.0, 22.0 ],
					"text" : "tapout~ 4789"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-delays",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 400.0, 300.0, 20.0 ],
					"text" : "Multiple delay taps for complex rhythm"
				}
			},
			{
				"box" : {
					"id" : "obj-feedback",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 480.0, 100.0, 22.0 ],
					"text" : "*~ 0.6"
				}
			},
			{
				"box" : {
					"id" : "obj-mix-delays",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 520.0, 360.0, 22.0 ],
					"text" : "+~ +~"
				}
			},
			{
				"box" : {
					"id" : "obj-filter",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 560.0, 150.0, 22.0 ],
					"text" : "svf~ 1200 0.7"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-filter",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 560.0, 200.0, 20.0 ],
					"text" : "Lowpass for warmth"
				}
			},
			{
				"box" : {
					"id" : "obj-reverb",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 600.0, 180.0, 22.0 ],
					"text" : "freeverb~ 0.95 0.85"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-reverb",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 600.0, 250.0, 20.0 ],
					"text" : "Heavy reverb for ambient space"
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
					"patching_rect" : [ 30.0, 650.0, 22.0, 80.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 690.0, 45.0, 45.0 ]
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
					"destination" : [ "obj-record", 0 ],
					"source" : [ "obj-adc", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-record", 1 ],
					"source" : [ "obj-adc", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-groove", 0 ],
					"source" : [ "obj-toggle-play", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-groove", 1 ],
					"source" : [ "obj-rate", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-rate", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pitch-slider", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-rate", 0 ],
					"source" : [ "obj-rate-default", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pfft", 0 ],
					"source" : [ "obj-groove", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-freeze-send", 0 ],
					"source" : [ "obj-freeze-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pitchshift", 0 ],
					"source" : [ "obj-pfft", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pitchshift", 1 ],
					"source" : [ "obj-pitch-slider", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pitch-slider", 0 ],
					"source" : [ "obj-pitch-default", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-delay1", 0 ],
					"source" : [ "obj-pitchshift", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-tapout1", 0 ],
					"source" : [ "obj-delay1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-tapout2", 0 ],
					"source" : [ "obj-delay1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-tapout3", 0 ],
					"source" : [ "obj-delay1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-feedback", 0 ],
					"source" : [ "obj-tapout1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mix-delays", 0 ],
					"source" : [ "obj-feedback", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mix-delays", 1 ],
					"source" : [ "obj-tapout2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mix-delays", 2 ],
					"source" : [ "obj-tapout3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-filter", 0 ],
					"source" : [ "obj-mix-delays", 0 ]
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
