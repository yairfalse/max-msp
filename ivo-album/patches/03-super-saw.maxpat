{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 8,
			"minor": 6,
			"revision": 2,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [
			100.0,
			100.0,
			900.0,
			700.0
		],
		"bglocked": 0,
		"openinpresentation": 0,
		"default_fontsize": 12.0,
		"default_fontface": 0,
		"default_fontname": "Arial",
		"gridonopen": 1,
		"gridsize": [
			15.0,
			15.0
		],
		"gridsnaponopen": 1,
		"objectsnaponopen": 1,
		"statusbarvisible": 2,
		"toolbarvisible": 1,
		"boxes": [
			{
				"box": {
					"id": "obj-title",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						30.0,
						400.0,
						33.0
					],
					"text": "SUPER SAW - Channel 3",
					"fontsize": 24.0,
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "obj-info",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						65.0,
						500.0,
						20.0
					],
					"text": "9-voice supersaw with overdrive distortion and granular rearrangement"
				}
			},
			{
				"box": {
					"id": "obj-toggle",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						30.0,
						100.0,
						40.0,
						40.0
					]
				}
			},
			{
				"box": {
					"id": "obj-toggle-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						80.0,
						110.0,
						100.0,
						20.0
					],
					"text": "ON/OFF"
				}
			},
			{
				"box": {
					"id": "obj-midi-in",
					"maxclass": "newobj",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						200.0,
						100.0,
						80.0,
						22.0
					],
					"text": "r seq-note"
				}
			},
			{
				"box": {
					"id": "obj-default-note",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						200.0,
						130.0,
						50.0,
						22.0
					],
					"text": "48"
				}
			},
			{
				"box": {
					"id": "obj-test-freq",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						300.0,
						100.0,
						80.0,
						22.0
					],
					"text": "110",
					"bgcolor": [
						1.0,
						0.0,
						0.0,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "obj-gate",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						200.0,
						160.0,
						50.0,
						22.0
					],
					"text": "gate"
				}
			},
			{
				"box": {
					"id": "obj-mtof",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						200.0,
						190.0,
						50.0,
						22.0
					],
					"text": "mtof"
				}
			},
			{
				"box": {
					"id": "obj-detune-amount",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						300.0,
						190.0,
						60.0,
						22.0
					],
					"minimum": 0.0,
					"maximum": 50.0
				}
			},
			{
				"box": {
					"id": "obj-detune-default",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						300.0,
						160.0,
						50.0,
						22.0
					],
					"text": "10"
				}
			},
			{
				"box": {
					"id": "obj-detune-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						370.0,
						190.0,
						100.0,
						20.0
					],
					"text": "Detune Amount"
				}
			},
			{
				"box": {
					"id": "obj-saw0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-sig0",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-freq0",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						30.0,
						250.0,
						50.0,
						22.0
					],
					"text": "* 1.0"
				}
			},
			{
				"box": {
					"id": "obj-sig1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						130.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						130.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						130.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 0.993"
				}
			},
			{
				"box": {
					"id": "obj-sig2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						230.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						230.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						230.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 1.007"
				}
			},
			{
				"box": {
					"id": "obj-sig3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						330.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						330.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						330.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 0.986"
				}
			},
			{
				"box": {
					"id": "obj-sig4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						430.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						430.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						430.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 1.014"
				}
			},
			{
				"box": {
					"id": "obj-sig5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						530.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						530.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						530.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 0.979"
				}
			},
			{
				"box": {
					"id": "obj-sig6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						630.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw6",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						630.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq6",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						630.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 1.021"
				}
			},
			{
				"box": {
					"id": "obj-sig7",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						730.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw7",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						730.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq7",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						730.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 0.972"
				}
			},
			{
				"box": {
					"id": "obj-sig8",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						830.0,
						280.0,
						50.0,
						22.0
					],
					"text": "sig~"
				}
			},
			{
				"box": {
					"id": "obj-saw8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						830.0,
						310.0,
						80.0,
						22.0
					],
					"text": "saw~"
				}
			},
			{
				"box": {
					"id": "obj-freq8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						830.0,
						250.0,
						80.0,
						22.0
					],
					"text": "* 1.028"
				}
			},
			{
				"box": {
					"id": "obj-mix1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						320.0,
						120.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix2",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						350.0,
						220.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix3",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						380.0,
						320.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						410.0,
						420.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix5",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						440.0,
						520.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix6",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						470.0,
						620.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix7",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						500.0,
						720.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						530.0,
						820.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-pregain",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						560.0,
						60.0,
						22.0
					],
					"text": "*~ 0.11"
				}
			},
			{
				"box": {
					"id": "obj-overdrive",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						590.0,
						100.0,
						22.0
					],
					"text": "overdrive~"
				}
			},
			{
				"box": {
					"id": "obj-drive-amount",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						80.0,
						560.0,
						50.0,
						22.0
					],
					"minimum": 0.0,
					"maximum": 10.0
				}
			},
			{
				"box": {
					"id": "obj-drive-default",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						80.0,
						530.0,
						50.0,
						22.0
					],
					"text": "3.0"
				}
			},
			{
				"box": {
					"id": "obj-drive-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						140.0,
						560.0,
						80.0,
						20.0
					],
					"text": "Drive Amount"
				}
			},
			{
				"box": {
					"id": "obj-output-gain",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						620.0,
						60.0,
						22.0
					],
					"text": "*~ 0.3"
				}
			},
			{
				"box": {
					"id": "obj-output",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						650.0,
						100.0,
						22.0
					],
					"text": "s~ supersaw-out"
				}
			},
			{
				"box": {
					"id": "obj-loadbang",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						200.0,
						100.0,
						60.0,
						22.0
					],
					"text": "loadbang"
				}
			},
			{
				"box": {
					"id": "obj-init-toggle",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						30.0,
						70.0,
						30.0,
						22.0
					],
					"text": "1"
				}
			},
			{
				"box": {
					"id": "obj-init-freq",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						120.0,
						220.0,
						80.0,
						22.0
					],
					"text": "130.81"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"obj-init-freq",
						0
					],
					"order": 0,
					"source": [
						"obj-loadbang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-init-toggle",
						0
					],
					"order": 4,
					"source": [
						"obj-loadbang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-default-note",
						0
					],
					"order": 3,
					"source": [
						"obj-loadbang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-detune-default",
						0
					],
					"order": 2,
					"source": [
						"obj-loadbang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-drive-default",
						0
					],
					"order": 1,
					"source": [
						"obj-loadbang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-toggle",
						0
					],
					"source": [
						"obj-init-toggle",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mtof",
						0
					],
					"source": [
						"obj-midi-in",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq0",
						0
					],
					"order": 8,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq1",
						0
					],
					"order": 7,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq2",
						0
					],
					"order": 6,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq3",
						0
					],
					"order": 5,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq4",
						0
					],
					"order": 4,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq5",
						0
					],
					"order": 3,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq6",
						0
					],
					"order": 2,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq7",
						0
					],
					"order": 1,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq8",
						0
					],
					"order": 0,
					"source": [
						"obj-mtof",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq0",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq1",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq2",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq3",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq4",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq5",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq6",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq7",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq8",
						0
					],
					"source": [
						"obj-test-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig0",
						0
					],
					"source": [
						"obj-freq0",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig1",
						0
					],
					"source": [
						"obj-freq1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig2",
						0
					],
					"source": [
						"obj-freq2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig3",
						0
					],
					"source": [
						"obj-freq3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig4",
						0
					],
					"source": [
						"obj-freq4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig5",
						0
					],
					"source": [
						"obj-freq5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig6",
						0
					],
					"source": [
						"obj-freq6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig7",
						0
					],
					"source": [
						"obj-freq7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-sig8",
						0
					],
					"source": [
						"obj-freq8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix1",
						0
					],
					"source": [
						"obj-saw0",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix1",
						1
					],
					"source": [
						"obj-saw1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix2",
						0
					],
					"source": [
						"obj-mix1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix2",
						1
					],
					"source": [
						"obj-saw2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix3",
						0
					],
					"source": [
						"obj-mix2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix3",
						1
					],
					"source": [
						"obj-saw3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix4",
						0
					],
					"source": [
						"obj-mix3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix4",
						1
					],
					"source": [
						"obj-saw4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix5",
						0
					],
					"source": [
						"obj-mix4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix5",
						1
					],
					"source": [
						"obj-saw5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix6",
						0
					],
					"source": [
						"obj-mix5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix6",
						1
					],
					"source": [
						"obj-saw6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix7",
						0
					],
					"source": [
						"obj-mix6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix7",
						1
					],
					"source": [
						"obj-saw7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix8",
						0
					],
					"source": [
						"obj-mix7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix8",
						1
					],
					"source": [
						"obj-saw8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-pregain",
						0
					],
					"source": [
						"obj-mix8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-overdrive",
						0
					],
					"source": [
						"obj-pregain",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-overdrive",
						1
					],
					"source": [
						"obj-drive-amount",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-drive-amount",
						0
					],
					"source": [
						"obj-drive-default",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-output-gain",
						0
					],
					"source": [
						"obj-overdrive",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-output",
						0
					],
					"source": [
						"obj-output-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-detune-amount",
						0
					],
					"source": [
						"obj-detune-default",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw0",
						0
					],
					"source": [
						"obj-sig0",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw1",
						0
					],
					"source": [
						"obj-sig1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw2",
						0
					],
					"source": [
						"obj-sig2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw3",
						0
					],
					"source": [
						"obj-sig3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw4",
						0
					],
					"source": [
						"obj-sig4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw5",
						0
					],
					"source": [
						"obj-sig5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw6",
						0
					],
					"source": [
						"obj-sig6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw7",
						0
					],
					"source": [
						"obj-sig7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-saw8",
						0
					],
					"source": [
						"obj-sig8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq0",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq1",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq2",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq3",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq4",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq5",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq6",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq7",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-freq8",
						0
					],
					"source": [
						"obj-init-freq",
						0
					]
				}
			}
		]
	}
}