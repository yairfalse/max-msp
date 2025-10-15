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
			50.0,
			50.0,
			1600.0,
			1000.0
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
					"id": "obj-main-title",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						30.0,
						800.0,
						40.0
					],
					"text": "IVO MAIN CONTROL & MASTER",
					"fontsize": 30.0,
					"fontface": 1
				}
			},
			{
				"box": {
					"id": "obj-subtitle",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						75.0,
						800.0,
						20.0
					],
					"text": "MIDI Control \u2022 Smart Sequencer \u2022 7-Channel Mixer \u2022 Master FX"
				}
			},
			{
				"box": {
					"id": "obj-header-midi",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						120.0,
						300.0,
						20.0
					],
					"text": "\u2550\u2550\u2550 MIDI INPUTS \u2550\u2550\u2550",
					"fontface": 1,
					"fontsize": 14.0
				}
			},
			{
				"box": {
					"id": "obj-roli-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						150.0,
						150.0,
						20.0
					],
					"text": "ROLI (MPE, Ch 1)"
				}
			},
			{
				"box": {
					"id": "obj-notein-roli",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"int",
						"int",
						"int"
					],
					"patching_rect": [
						30.0,
						175.0,
						100.0,
						22.0
					],
					"text": "notein"
				}
			},
			{
				"box": {
					"id": "obj-send-roli-note",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						205.0,
						90.0,
						22.0
					],
					"text": "s roli-note"
				}
			},
			{
				"box": {
					"id": "obj-send-roli-vel",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						80.0,
						205.0,
						100.0,
						22.0
					],
					"text": "s roli-velocity"
				}
			},
			{
				"box": {
					"id": "obj-keystep-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						200.0,
						150.0,
						150.0,
						20.0
					],
					"text": "Keystep (Ch 2)"
				}
			},
			{
				"box": {
					"id": "obj-notein-keystep",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						200.0,
						175.0,
						100.0,
						22.0
					],
					"text": "notein 2"
				}
			},
			{
				"box": {
					"id": "obj-send-keystep-note",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						200.0,
						205.0,
						110.0,
						22.0
					],
					"text": "s keystep-note"
				}
			},
			{
				"box": {
					"id": "obj-send-keystep-vel",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						250.0,
						205.0,
						120.0,
						22.0
					],
					"text": "s keystep-velocity"
				}
			},
			{
				"box": {
					"id": "obj-header-sequencer",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						400.0,
						120.0,
						400.0,
						20.0
					],
					"text": "\u2550\u2550\u2550 SMART SEQUENCER \u2550\u2550\u2550",
					"fontface": 1,
					"fontsize": 14.0
				}
			},
			{
				"box": {
					"id": "obj-seq-toggle",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						400.0,
						150.0,
						50.0,
						50.0
					],
					"bgcolor": [
						0.0,
						0.8,
						0.2,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "obj-seq-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						460.0,
						165.0,
						100.0,
						20.0
					],
					"text": "Sequencer ON"
				}
			},
			{
				"box": {
					"id": "obj-bpm-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						400.0,
						210.0,
						50.0,
						20.0
					],
					"text": "BPM:"
				}
			},
			{
				"box": {
					"id": "obj-bpm",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						450.0,
						210.0,
						60.0,
						22.0
					],
					"minimum": 20,
					"maximum": 240
				}
			},
			{
				"box": {
					"id": "obj-bpm-default",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						450.0,
						180.0,
						60.0,
						22.0
					],
					"text": "60"
				}
			},
			{
				"box": {
					"id": "obj-bpm-to-ms",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						450.0,
						240.0,
						100.0,
						22.0
					],
					"text": "expr 60000/$f1"
				}
			},
			{
				"box": {
					"id": "obj-metro",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						400.0,
						270.0,
						100.0,
						22.0
					],
					"text": "metro 1000"
				}
			},
			{
				"box": {
					"id": "obj-scale-menu",
					"maxclass": "umenu",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"int",
						"",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						600.0,
						150.0,
						200.0,
						22.0
					],
					"items": [
						"D minor",
						",",
						"D Dorian",
						",",
						"C Lydian",
						",",
						"A minor",
						",",
						"E Phrygian",
						",",
						"G Major",
						",",
						"C Minor Pentatonic"
					]
				}
			},
			{
				"box": {
					"id": "obj-scale-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						600.0,
						130.0,
						100.0,
						20.0
					],
					"text": "Scale:"
				}
			},
			{
				"box": {
					"id": "obj-scale-select",
					"maxclass": "newobj",
					"numinlets": 8,
					"numoutlets": 8,
					"outlettype": [
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang"
					],
					"patching_rect": [
						600.0,
						180.0,
						400.0,
						22.0
					],
					"text": "select 0 1 2 3 4 5 6"
				}
			},
			{
				"box": {
					"id": "obj-scale-d-minor",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						600.0,
						210.0,
						120.0,
						22.0
					],
					"text": "62 64 65 67 69 70 72"
				}
			},
			{
				"box": {
					"id": "obj-scale-d-dorian",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						650.0,
						210.0,
						120.0,
						22.0
					],
					"text": "62 64 65 67 69 71 72"
				}
			},
			{
				"box": {
					"id": "obj-scale-c-lydian",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						700.0,
						210.0,
						120.0,
						22.0
					],
					"text": "60 62 64 66 67 69 71"
				}
			},
			{
				"box": {
					"id": "obj-scale-a-minor",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						750.0,
						210.0,
						120.0,
						22.0
					],
					"text": "57 59 60 62 64 65 67"
				}
			},
			{
				"box": {
					"id": "obj-scale-e-phrygian",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						800.0,
						210.0,
						120.0,
						22.0
					],
					"text": "64 65 67 69 71 72 74"
				}
			},
			{
				"box": {
					"id": "obj-scale-g-major",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						850.0,
						210.0,
						120.0,
						22.0
					],
					"text": "67 69 71 72 74 76 78"
				}
			},
			{
				"box": {
					"id": "obj-scale-c-minor-pent",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						900.0,
						210.0,
						100.0,
						22.0
					],
					"text": "60 63 65 67 70"
				}
			},
			{
				"box": {
					"id": "obj-scale-store",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						600.0,
						240.0,
						100.0,
						22.0
					],
					"text": "zl reg"
				}
			},
			{
				"box": {
					"id": "obj-random-note",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"",
						"int"
					],
					"patching_rect": [
						400.0,
						300.0,
						100.0,
						22.0
					],
					"text": "zl nth"
				}
			},
			{
				"box": {
					"id": "obj-random-index",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						480.0,
						270.0,
						100.0,
						22.0
					],
					"text": "random 7"
				}
			},
			{
				"box": {
					"id": "obj-add-one",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						480.0,
						300.0,
						50.0,
						22.0
					],
					"text": "+ 1"
				}
			},
			{
				"box": {
					"id": "obj-current-note",
					"maxclass": "number",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						400.0,
						330.0,
						80.0,
						22.0
					],
					"fontsize": 18.0
				}
			},
			{
				"box": {
					"id": "obj-current-note-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						490.0,
						330.0,
						150.0,
						20.0
					],
					"text": "\u2190 Current Note (MIDI)"
				}
			},
			{
				"box": {
					"id": "obj-led",
					"maxclass": "led",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						350.0,
						330.0,
						30.0,
						30.0
					],
					"bgcolor": [
						0.0,
						0.8,
						0.2,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "obj-led-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						310.0,
						365.0,
						80.0,
						20.0
					],
					"text": "Note Sent",
					"fontsize": 10.0
				}
			},
			{
				"box": {
					"id": "obj-send-seq-note",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						400.0,
						360.0,
						90.0,
						22.0
					],
					"text": "s seq-note"
				}
			},
			{
				"box": {
					"id": "obj-header-mixer",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						450.0,
						800.0,
						20.0
					],
					"text": "\u2550\u2550\u2550 7-CHANNEL MIXER \u2550\u2550\u2550",
					"fontface": 1,
					"fontsize": 14.0
				}
			},
			{
				"box": {
					"id": "obj-ch1-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						480.0,
						100.0,
						20.0
					],
					"text": "1: Snow Drone"
				}
			},
			{
				"box": {
					"id": "obj-receive-ch1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						505.0,
						100.0,
						22.0
					],
					"text": "r~ drone-out"
				}
			},
			{
				"box": {
					"id": "obj-gain-ch1",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						30.0,
						535.0,
						22.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-ch2-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						130.0,
						480.0,
						100.0,
						20.0
					],
					"text": "2: Granular"
				}
			},
			{
				"box": {
					"id": "obj-receive-ch2",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						130.0,
						505.0,
						120.0,
						22.0
					],
					"text": "r~ granular-out"
				}
			},
			{
				"box": {
					"id": "obj-gain-ch2",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						130.0,
						535.0,
						22.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-ch3-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						230.0,
						480.0,
						100.0,
						20.0
					],
					"text": "3: Super Saw"
				}
			},
			{
				"box": {
					"id": "obj-receive-ch3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						230.0,
						505.0,
						120.0,
						22.0
					],
					"text": "r~ supersaw-out"
				}
			},
			{
				"box": {
					"id": "obj-gain-ch3",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						230.0,
						535.0,
						22.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-ch4-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						330.0,
						480.0,
						100.0,
						20.0
					],
					"text": "4: Looper"
				}
			},
			{
				"box": {
					"id": "obj-receive-ch4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						330.0,
						505.0,
						100.0,
						22.0
					],
					"text": "r~ looper-out"
				}
			},
			{
				"box": {
					"id": "obj-gain-ch4",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						330.0,
						535.0,
						22.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-ch5-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						430.0,
						480.0,
						100.0,
						20.0
					],
					"text": "5: White Noise"
				}
			},
			{
				"box": {
					"id": "obj-receive-ch5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						430.0,
						505.0,
						100.0,
						22.0
					],
					"text": "r~ noise-out"
				}
			},
			{
				"box": {
					"id": "obj-gain-ch5",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						430.0,
						535.0,
						22.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-ch6-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						530.0,
						480.0,
						100.0,
						20.0
					],
					"text": "6: VST Inst 1"
				}
			},
			{
				"box": {
					"id": "obj-receive-ch6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						530.0,
						505.0,
						100.0,
						22.0
					],
					"text": "r~ vsti1-out"
				}
			},
			{
				"box": {
					"id": "obj-gain-ch6",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						530.0,
						535.0,
						22.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-ch7-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						630.0,
						480.0,
						100.0,
						20.0
					],
					"text": "7: VST Inst 2"
				}
			},
			{
				"box": {
					"id": "obj-receive-ch7",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						630.0,
						505.0,
						100.0,
						22.0
					],
					"text": "r~ vsti2-out"
				}
			},
			{
				"box": {
					"id": "obj-gain-ch7",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						630.0,
						535.0,
						22.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-add-12",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						690.0,
						32.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-add-123",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						710.0,
						32.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-add-1234",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						730.0,
						32.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-add-12345",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						750.0,
						32.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-add-123456",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						770.0,
						32.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-mix",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						30.0,
						790.0,
						32.0,
						22.0
					],
					"text": "+~"
				}
			},
			{
				"box": {
					"id": "obj-master-gain",
					"maxclass": "gain~",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						30.0,
						820.0,
						30.0,
						140.0
					]
				}
			},
			{
				"box": {
					"id": "obj-master-label",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						70.0,
						890.0,
						100.0,
						20.0
					],
					"text": "MASTER"
				}
			},
			{
				"box": {
					"id": "obj-send-master",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						100.0,
						980.0,
						100.0,
						22.0
					],
					"text": "s~ master-out"
				}
			},
			{
				"box": {
					"id": "obj-dac",
					"maxclass": "ezdac~",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						30.0,
						980.0,
						60.0,
						60.0
					]
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
						450.0,
						150.0,
						60.0,
						22.0
					],
					"text": "loadbang"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"obj-scale-d-minor",
						0
					],
					"source": [
						"obj-loadbang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-send-roli-note",
						0
					],
					"source": [
						"obj-notein-roli",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-send-roli-vel",
						0
					],
					"source": [
						"obj-notein-roli",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-send-keystep-note",
						0
					],
					"source": [
						"obj-notein-keystep",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-send-keystep-vel",
						0
					],
					"source": [
						"obj-notein-keystep",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-bpm-default",
						0
					],
					"source": [
						"obj-loadbang",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-bpm",
						0
					],
					"source": [
						"obj-bpm-default",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-bpm-to-ms",
						0
					],
					"source": [
						"obj-bpm",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-metro",
						1
					],
					"source": [
						"obj-bpm-to-ms",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-metro",
						0
					],
					"source": [
						"obj-seq-toggle",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-random-index",
						0
					],
					"source": [
						"obj-metro",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-select",
						0
					],
					"source": [
						"obj-scale-menu",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-d-minor",
						0
					],
					"source": [
						"obj-scale-select",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-d-dorian",
						0
					],
					"source": [
						"obj-scale-select",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-c-lydian",
						0
					],
					"source": [
						"obj-scale-select",
						2
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-a-minor",
						0
					],
					"source": [
						"obj-scale-select",
						3
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-e-phrygian",
						0
					],
					"source": [
						"obj-scale-select",
						4
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-g-major",
						0
					],
					"source": [
						"obj-scale-select",
						5
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-c-minor-pent",
						0
					],
					"source": [
						"obj-scale-select",
						6
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-scale-d-minor",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-scale-d-dorian",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-scale-c-lydian",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-scale-a-minor",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-scale-e-phrygian",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-scale-g-major",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-scale-c-minor-pent",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-random-note",
						1
					],
					"source": [
						"obj-scale-store",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-one",
						0
					],
					"source": [
						"obj-random-index",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-random-note",
						0
					],
					"source": [
						"obj-add-one",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-current-note",
						0
					],
					"source": [
						"obj-random-note",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-send-seq-note",
						0
					],
					"source": [
						"obj-current-note",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-gain-ch1",
						0
					],
					"source": [
						"obj-receive-ch1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-gain-ch2",
						0
					],
					"source": [
						"obj-receive-ch2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-gain-ch3",
						0
					],
					"source": [
						"obj-receive-ch3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-gain-ch4",
						0
					],
					"source": [
						"obj-receive-ch4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-gain-ch5",
						0
					],
					"source": [
						"obj-receive-ch5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-gain-ch6",
						0
					],
					"source": [
						"obj-receive-ch6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-gain-ch7",
						0
					],
					"source": [
						"obj-receive-ch7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-12",
						0
					],
					"source": [
						"obj-gain-ch1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-12",
						1
					],
					"source": [
						"obj-gain-ch2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-123",
						1
					],
					"source": [
						"obj-gain-ch3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-1234",
						1
					],
					"source": [
						"obj-gain-ch4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-12345",
						1
					],
					"source": [
						"obj-gain-ch5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-123456",
						1
					],
					"source": [
						"obj-gain-ch6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix",
						1
					],
					"source": [
						"obj-gain-ch7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-123",
						0
					],
					"source": [
						"obj-add-12",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-1234",
						0
					],
					"source": [
						"obj-add-123",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-12345",
						0
					],
					"source": [
						"obj-add-1234",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-add-123456",
						0
					],
					"source": [
						"obj-add-12345",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-mix",
						0
					],
					"source": [
						"obj-add-123456",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-master-gain",
						0
					],
					"source": [
						"obj-mix",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-dac",
						0
					],
					"source": [
						"obj-master-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-dac",
						1
					],
					"source": [
						"obj-master-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-send-master",
						0
					],
					"source": [
						"obj-master-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-led",
						0
					],
					"source": [
						"obj-current-note",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-scale-store",
						0
					],
					"source": [
						"obj-metro",
						0
					]
				}
			}
		]
	}
}