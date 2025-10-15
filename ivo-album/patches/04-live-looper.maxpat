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
		"rect" : [ 100.0, 100.0, 800.0, 700.0 ],
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
					"patching_rect" : [ 30.0, 30.0, 400.0, 33.0 ],
					"text" : "LIVE LOOPER - Channel 4",
					"fontsize" : 24.0,
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-info",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 65.0, 500.0, 20.0 ],
					"text" : "Live audio looper with ROLI pitch control"
				}
			},
			{
				"box" : {
					"id" : "obj-buffer",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 30.0, 100.0, 200.0, 22.0 ],
					"text" : "buffer~ loop-buffer 10000"
				}
			},
			{
				"box" : {
					"id" : "obj-adc",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 150.0, 100.0, 22.0 ],
					"text" : "adc~ 1 2"
				}
			},
			{
				"box" : {
					"id" : "obj-record-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 200.0, 60.0, 60.0 ],
					"bgcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-record-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 220.0, 150.0, 20.0 ],
					"text" : "RECORD (toggle to rec)",
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-record",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 280.0, 150.0, 22.0 ],
					"text" : "record~ loop-buffer 2"
				}
			},
			{
				"box" : {
					"id" : "obj-play-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 250.0, 200.0, 60.0, 60.0 ],
					"bgcolor" : [ 0.0, 0.8, 0.0, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-play-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 320.0, 220.0, 150.0, 20.0 ],
					"text" : "PLAY (toggle to play)",
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-roli-note",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 150.0, 80.0, 22.0 ],
					"text" : "r roli-note"
				}
			},
			{
				"box" : {
					"id" : "obj-default-pitch",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 180.0, 50.0, 22.0 ],
					"text" : "60"
				}
			},
			{
				"box" : {
					"id" : "obj-pitch-offset",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 500.0, 180.0, 50.0, 22.0 ],
					"minimum" : -24,
					"maximum" : 24
				}
			},
			{
				"box" : {
					"id" : "obj-pitch-offset-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 180.0, 120.0, 20.0 ],
					"text" : "Pitch Offset (semitones)"
				}
			},
			{
				"box" : {
					"id" : "obj-pitch-offset-default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 150.0, 50.0, 22.0 ],
					"text" : "0"
				}
			},
			{
				"box" : {
					"id" : "obj-gate-roli",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 210.0, 50.0, 22.0 ],
					"text" : "gate"
				}
			},
			{
				"box" : {
					"id" : "obj-subtract-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 400.0, 240.0, 50.0, 22.0 ],
					"text" : "- 60"
				}
			},
			{
				"box" : {
					"id" : "obj-add-offset",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 400.0, 270.0, 120.0, 22.0 ],
					"text" : "+"
				}
			},
			{
				"box" : {
					"id" : "obj-semitone-to-ratio",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 300.0, 120.0, 22.0 ],
					"text" : "expr pow(2\\, $f1/12.)"
				}
			},
			{
				"box" : {
					"id" : "obj-pitch-display",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 330.0, 80.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-pitch-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 330.0, 150.0, 20.0 ],
					"text" : "Pitch Ratio (1.0 = normal)"
				}
			},
			{
				"box" : {
					"id" : "obj-groove",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 250.0, 370.0, 170.0, 22.0 ],
					"text" : "groove~ loop-buffer 2"
				}
			},
			{
				"box" : {
					"id" : "obj-loop-on",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 330.0, 80.0, 22.0 ],
					"text" : "loop 1"
				}
			},
			{
				"box" : {
					"id" : "obj-volume",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 420.0, 20.0, 140.0 ],
					"size" : 128.0,
					"orientation" : 2
				}
			},
			{
				"box" : {
					"id" : "obj-volume-default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 390.0, 50.0, 22.0 ],
					"text" : "100"
				}
			},
			{
				"box" : {
					"id" : "obj-volume-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 500.0, 60.0, 20.0 ],
					"text" : "Volume"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-volume",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 570.0, 110.0, 22.0 ],
					"text" : "scale 0 127 0. 1."
				}
			},
			{
				"box" : {
					"id" : "obj-gain-l",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 250.0, 600.0, 40.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain-r",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 320.0, 600.0, 40.0, 22.0 ],
					"text" : "*~"
				}
			},
			{
				"box" : {
					"id" : "obj-output-l",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 650.0, 100.0, 22.0 ],
					"text" : "s~ looper-out"
				}
			},
			{
				"box" : {
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 400.0, 100.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}
			},
			{
				"box" : {
					"id" : "obj-info-input",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 150.0, 250.0, 20.0 ],
					"text" : "← Audio input from system (mic/interface)"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-default-pitch", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pitch-offset-default", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-volume-default", 0 ],
					"source" : [ "obj-loadbang", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-loop-on", 0 ],
					"source" : [ "obj-loadbang", 0 ]
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
					"destination" : [ "obj-record", 0 ],
					"source" : [ "obj-record-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-groove", 0 ],
					"source" : [ "obj-play-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gate-roli", 0 ],
					"source" : [ "obj-roli-note", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gate-roli", 1 ],
					"source" : [ "obj-default-pitch", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gate-roli", 0 ],
					"source" : [ "obj-play-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-subtract-60", 0 ],
					"source" : [ "obj-gate-roli", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-add-offset", 0 ],
					"source" : [ "obj-subtract-60", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-add-offset", 1 ],
					"source" : [ "obj-pitch-offset", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pitch-offset", 0 ],
					"source" : [ "obj-pitch-offset-default", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-semitone-to-ratio", 0 ],
					"source" : [ "obj-add-offset", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pitch-display", 0 ],
					"source" : [ "obj-semitone-to-ratio", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-groove", 1 ],
					"source" : [ "obj-pitch-display", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-groove", 0 ],
					"source" : [ "obj-loop-on", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain-l", 0 ],
					"source" : [ "obj-groove", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain-r", 0 ],
					"source" : [ "obj-groove", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-volume", 0 ],
					"source" : [ "obj-volume", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-volume", 0 ],
					"source" : [ "obj-volume-default", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain-l", 1 ],
					"source" : [ "obj-scale-volume", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain-r", 1 ],
					"source" : [ "obj-scale-volume", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-output-l", 0 ],
					"source" : [ "obj-gain-l", 0 ]
				}
			}
		]
	}
}
