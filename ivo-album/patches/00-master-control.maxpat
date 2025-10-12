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
		"rect" : [ 100.0, 100.0, 1100.0, 850.0 ],
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
					"patching_rect" : [ 30.0, 30.0, 700.0, 20.0 ],
					"text" : "MASTER CONTROL - Roli MPE + Keyboard control for all Ivo patches"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 700.0, 20.0 ],
					"text" : "Use Roli for expression, keyboard for patch control. All parameters sent via send/receive"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-keyboard",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 90.0, 500.0, 20.0 ],
					"text" : "=== COMPUTER KEYBOARD CONTROLS ==="
				}
			},
			{
				"box" : {
					"id" : "obj-key",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 30.0, 120.0, 100.0, 22.0 ],
					"text" : "key"
				}
			},
			{
				"box" : {
					"id" : "obj-sel-keys",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 30.0, 150.0, 450.0, 22.0 ],
					"text" : "sel 49 50 51 52 53 114 102 32"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-keys",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 150.0, 500.0, 20.0 ],
					"text" : "Keys: 1=Drone 2=Granular 3=Field 4=Tones 5=All R=Record F=Freeze SPACE=Panic"
				}
			},
			{
				"box" : {
					"id" : "obj-key-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 190.0, 80.0, 22.0 ],
					"text" : "1"
				}
			},
			{
				"box" : {
					"id" : "obj-key-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 190.0, 80.0, 22.0 ],
					"text" : "2"
				}
			},
			{
				"box" : {
					"id" : "obj-key-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 190.0, 80.0, 22.0 ],
					"text" : "3"
				}
			},
			{
				"box" : {
					"id" : "obj-key-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 190.0, 80.0, 22.0 ],
					"text" : "4"
				}
			},
			{
				"box" : {
					"id" : "obj-key-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 190.0, 80.0, 22.0 ],
					"text" : "5"
				}
			},
			{
				"box" : {
					"id" : "obj-key-r",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 480.0, 190.0, 24.0, 24.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-record",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 190.0, 100.0, 20.0 ],
					"text" : "R = Record"
				}
			},
			{
				"box" : {
					"id" : "obj-key-f",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 620.0, 190.0, 24.0, 24.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-freeze",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 650.0, 190.0, 100.0, 20.0 ],
					"text" : "F = Freeze"
				}
			},
			{
				"box" : {
					"id" : "obj-key-space",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 760.0, 190.0, 24.0, 24.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-panic",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 790.0, 190.0, 150.0, 20.0 ],
					"text" : "SPACE = Panic (stop all)"
				}
			},
			{
				"box" : {
					"id" : "obj-send-patch",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 230.0, 120.0, 22.0 ],
					"text" : "s patch-select"
				}
			},
			{
				"box" : {
					"id" : "obj-send-record",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 230.0, 120.0, 22.0 ],
					"text" : "s record-toggle"
				}
			},
			{
				"box" : {
					"id" : "obj-send-freeze",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 620.0, 230.0, 120.0, 22.0 ],
					"text" : "s freeze-state"
				}
			},
			{
				"box" : {
					"id" : "obj-panic",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 230.0, 60.0, 22.0 ],
					"text" : "s panic"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-roli",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 280.0, 500.0, 20.0 ],
					"text" : "=== ROLI MPE CONTROL ==="
				}
			},
			{
				"box" : {
					"id" : "obj-mpe",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "int", "int", "int", "int", "int", "int", "" ],
					"patching_rect" : [ 30.0, 310.0, 300.0, 22.0 ],
					"text" : "mpeparse"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-mpe",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 310.0, 400.0, 20.0 ],
					"text" : "MPE parser for Roli - handles per-note expression"
				}
			},
			{
				"box" : {
					"id" : "obj-notein",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 30.0, 340.0, 100.0, 22.0 ],
					"text" : "notein"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 340.0, 200.0, 20.0 ],
					"text" : "Note input from Roli"
				}
			},
			{
				"box" : {
					"id" : "obj-note-display",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 370.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-vel-display",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 90.0, 370.0, 50.0, 22.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-mtof-roli",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 400.0, 100.0, 22.0 ],
					"text" : "mtof"
				}
			},
			{
				"box" : {
					"id" : "obj-send-note-freq",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 430.0, 120.0, 22.0 ],
					"text" : "s roli-frequency"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-vel",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 400.0, 150.0, 22.0 ],
					"text" : "scale 0 127 0. 1."
				}
			},
			{
				"box" : {
					"id" : "obj-send-velocity",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 430.0, 120.0, 22.0 ],
					"text" : "s roli-velocity"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-pressure",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 470.0, 400.0, 20.0 ],
					"text" : "=== ROLI PRESSURE (Press) → Reverb Amount ==="
				}
			},
			{
				"box" : {
					"id" : "obj-ctlin-pressure",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 30.0, 500.0, 100.0, 22.0 ],
					"text" : "ctlin 74"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-cc74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 500.0, 300.0, 20.0 ],
					"text" : "CC74 = Channel Pressure (MPE standard)"
				}
			},
			{
				"box" : {
					"id" : "obj-pressure-display",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 530.0, 20.0, 140.0 ],
					"size" : 128.0
				}
			},
			{
				"box" : {
					"id" : "obj-scale-pressure",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 530.0, 150.0, 22.0 ],
					"text" : "scale 0 127 0.5 1.0"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-pressure-map",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.0, 530.0, 300.0, 20.0 ],
					"text" : "Map to reverb mix (0.5 = 50%, 1.0 = 100%)"
				}
			},
			{
				"box" : {
					"id" : "obj-send-pressure",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 560.0, 120.0, 22.0 ],
					"text" : "s roli-pressure"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-slide",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 470.0, 400.0, 20.0 ],
					"text" : "=== ROLI SLIDE (Y-axis) → Filter Cutoff ==="
				}
			},
			{
				"box" : {
					"id" : "obj-ctlin-slide",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 300.0, 500.0, 100.0, 22.0 ],
					"text" : "ctlin 73"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-cc73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 500.0, 300.0, 20.0 ],
					"text" : "CC73 = Slide/Timbre (MPE standard)"
				}
			},
			{
				"box" : {
					"id" : "obj-slide-display",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 530.0, 20.0, 140.0 ],
					"size" : 128.0
				}
			},
			{
				"box" : {
					"id" : "obj-scale-slide",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 530.0, 180.0, 22.0 ],
					"text" : "scale 0 127 200. 5000."
				}
			},
			{
				"box" : {
					"id" : "obj-comment-slide-map",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 530.0, 300.0, 20.0 ],
					"text" : "Map to filter frequency (200Hz - 5kHz)"
				}
			},
			{
				"box" : {
					"id" : "obj-send-slide",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 560.0, 120.0, 22.0 ],
					"text" : "s roli-slide"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-glide",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 570.0, 470.0, 400.0, 20.0 ],
					"text" : "=== ROLI GLIDE (Pitch Bend) → Modulation Depth ==="
				}
			},
			{
				"box" : {
					"id" : "obj-bendin",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 570.0, 500.0, 100.0, 22.0 ],
					"text" : "bendin"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-bend",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 680.0, 500.0, 300.0, 20.0 ],
					"text" : "Pitch bend for glide expression"
				}
			},
			{
				"box" : {
					"id" : "obj-glide-display",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 530.0, 20.0, 140.0 ],
					"size" : 16384.0,
					"mult" : 8192.0
				}
			},
			{
				"box" : {
					"id" : "obj-scale-glide",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 610.0, 530.0, 180.0, 22.0 ],
					"text" : "scale 0 16383 -2. 2."
				}
			},
			{
				"box" : {
					"id" : "obj-comment-glide-map",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 800.0, 530.0, 300.0, 20.0 ],
					"text" : "Map to pitch modulation (-2 to +2 semitones)"
				}
			},
			{
				"box" : {
					"id" : "obj-send-glide",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 610.0, 560.0, 120.0, 22.0 ],
					"text" : "s roli-glide"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-mappings",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 700.0, 700.0, 20.0 ],
					"text" : "=== GLOBAL SENDS (use in other patches) ==="
				}
			},
			{
				"box" : {
					"id" : "obj-comment-list",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 730.0, 1000.0, 80.0 ],
					"text" : "Available receives in your patches:\nr patch-select         - Selected patch number (1-5)\nr record-toggle        - Recording on/off\nr freeze-state         - Spectral freeze on/off\nr panic                - Emergency stop\nr roli-frequency      - Current note frequency\nr roli-velocity        - Note velocity (0-1)\nr roli-pressure       - Pressure amount (0.5-1.0) → reverb mix\nr roli-slide           - Slide position (200-5000Hz) → filter cutoff\nr roli-glide           - Pitch bend (-2 to +2 semitones) → modulation"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-sel-keys", 0 ],
					"source" : [ "obj-key", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-1", 0 ],
					"source" : [ "obj-sel-keys", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-2", 0 ],
					"source" : [ "obj-sel-keys", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-3", 0 ],
					"source" : [ "obj-sel-keys", 2 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-4", 0 ],
					"source" : [ "obj-sel-keys", 3 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-5", 0 ],
					"source" : [ "obj-sel-keys", 4 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-r", 0 ],
					"source" : [ "obj-sel-keys", 5 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-f", 0 ],
					"source" : [ "obj-sel-keys", 6 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-key-space", 0 ],
					"source" : [ "obj-sel-keys", 7 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-patch", 0 ],
					"source" : [ "obj-key-1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-patch", 0 ],
					"source" : [ "obj-key-2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-patch", 0 ],
					"source" : [ "obj-key-3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-patch", 0 ],
					"source" : [ "obj-key-4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-patch", 0 ],
					"source" : [ "obj-key-5", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-record", 0 ],
					"source" : [ "obj-key-r", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-freeze", 0 ],
					"source" : [ "obj-key-f", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-panic", 0 ],
					"source" : [ "obj-key-space", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mpe", 0 ],
					"source" : [ "obj-notein", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-note-display", 0 ],
					"source" : [ "obj-notein", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-mtof-roli", 0 ],
					"source" : [ "obj-notein", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vel-display", 0 ],
					"source" : [ "obj-notein", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-vel", 0 ],
					"source" : [ "obj-notein", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-note-freq", 0 ],
					"source" : [ "obj-mtof-roli", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-velocity", 0 ],
					"source" : [ "obj-scale-vel", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pressure-display", 0 ],
					"source" : [ "obj-ctlin-pressure", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-pressure", 0 ],
					"source" : [ "obj-ctlin-pressure", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-pressure", 0 ],
					"source" : [ "obj-scale-pressure", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-slide-display", 0 ],
					"source" : [ "obj-ctlin-slide", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-slide", 0 ],
					"source" : [ "obj-ctlin-slide", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-slide", 0 ],
					"source" : [ "obj-scale-slide", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-glide-display", 0 ],
					"source" : [ "obj-bendin", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-glide", 0 ],
					"source" : [ "obj-bendin", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-glide", 0 ],
					"source" : [ "obj-scale-glide", 0 ]
				}
			}
		]
	}
}
