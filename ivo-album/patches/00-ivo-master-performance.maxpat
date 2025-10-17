{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 304.0, 537.0, 1400.0, 900.0 ],
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
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 30.0, 800.0, 33.0 ],
					"text" : "IVO MASTER PERFORMANCE - Berlin Autumn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-subtitle",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 65.0, 800.0, 20.0 ],
					"text" : "Cinematic ambient performance system - ROLI + Keystep + Multiple sources + Master FX"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-header-inputs",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 110.0, 300.0, 20.0 ],
					"text" : "=== MIDI INPUTS ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-roli",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 140.0, 200.0, 20.0 ],
					"text" : "ROLI (MPE Expression)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-notein-roli",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 30.0, 170.0, 100.0, 22.0 ],
					"text" : "notein"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-send-roli-note",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 200.0, 120.0, 22.0 ],
					"text" : "s roli-note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-send-roli-vel",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 200.0, 120.0, 22.0 ],
					"text" : "s roli-velocity"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-keystep",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 140.0, 200.0, 20.0 ],
					"text" : "Keystep (Sequences)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-notein-keystep",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 250.0, 170.0, 100.0, 22.0 ],
					"text" : "notein 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-send-seq-note",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 200.0, 120.0, 22.0 ],
					"text" : "s seq-note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-send-seq-vel",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 200.0, 120.0, 22.0 ],
					"text" : "s seq-velocity"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-header-arp",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 110.0, 300.0, 20.0 ],
					"text" : "=== CENTRAL ARPEGGIATOR ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 500.0, 140.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 550.0, 150.0, 150.0, 20.0 ],
					"text" : "Arpeggiator ON/OFF"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-bpm",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 720.0, 140.0, 50.0, 22.0 ],
					"minimum" : 20,
					"maximum" : 240
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-bpm-default",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 110.0, 50.0, 22.0 ],
					"text" : "60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-bpm-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.0, 140.0, 80.0, 20.0 ],
					"text" : "BPM (slow)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-bpm-to-ms",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 170.0, 100.0, 22.0 ],
					"text" : "expr 60000/$f1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 500.0, 200.0, 100.0, 22.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-counter",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 500.0, 230.0, 80.0, 22.0 ],
					"text" : "counter 0 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-random",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 600.0, 230.0, 80.0, 22.0 ],
					"text" : "random 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-gate",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 500.0, 260.0, 120.0, 22.0 ],
					"text" : "gate 2 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-select",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 500.0, 290.0, 300.0, 22.0 ],
					"text" : "select 0 1 2 3 4 5 6 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note0",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 320.0, 30.0, 22.0 ],
					"text" : "60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 320.0, 30.0, 22.0 ],
					"text" : "62"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.0, 320.0, 30.0, 22.0 ],
					"text" : "63"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 620.0, 320.0, 30.0, 22.0 ],
					"text" : "65"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 660.0, 320.0, 30.0, 22.0 ],
					"text" : "67"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 700.0, 320.0, 30.0, 22.0 ],
					"text" : "68"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 740.0, 320.0, 30.0, 22.0 ],
					"text" : "70"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-note7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 320.0, 30.0, 22.0 ],
					"text" : "72"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-funnel",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 320.0, 300.0, 22.0 ],
					"text" : "funnel 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 350.0, 120.0, 22.0 ],
					"text" : "s seq-note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-comment",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 350.0, 250.0, 20.0 ],
					"text" : "Notes sent to all synth patches"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-arp-mode",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 900.0, 110.0, 150.0, 20.0 ],
					"text" : "ARP MODE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-mode",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 900.0, 140.0, 120.0, 22.0 ],
					"items" : [ "Sequential", ",", "Random" ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-scale",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 900.0, 175.0, 150.0, 20.0 ],
					"text" : "SCALE (from mega-sampler)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-scale",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 900.0, 200.0, 120.0, 22.0 ],
					"text" : "r current-scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-scale-display",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 900.0, 230.0, 150.0, 20.0 ],
					"text" : "C Minor (default)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-arp-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 720.0, 80.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-header-mixer",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 400.0, 600.0, 20.0 ],
					"text" : "=== SOUND SOURCE MIXER ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-ch1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 280.0, 150.0, 20.0 ],
					"text" : "Channel 1: Snow Drone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-drone1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 310.0, 100.0, 22.0 ],
					"text" : "r~ drone-out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain-drone1",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 340.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-ch2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 280.0, 150.0, 20.0 ],
					"text" : "Channel 2: Granular"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-gran",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 150.0, 310.0, 120.0, 22.0 ],
					"text" : "r~ granular-out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain-gran",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 340.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-ch3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 280.0, 150.0, 20.0 ],
					"text" : "Channel 3: Super Saw"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-supersaw",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 270.0, 310.0, 120.0, 22.0 ],
					"text" : "r~ supersaw-out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain-supersaw",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 270.0, 340.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-ch4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 280.0, 150.0, 20.0 ],
					"text" : "Channel 4: Looper"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-looper",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 310.0, 100.0, 22.0 ],
					"text" : "r~ looper-out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain-looper",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 390.0, 340.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 500.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 530.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 560.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-ch5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 280.0, 150.0, 20.0 ],
					"text" : "Channel 5: Glass Shards"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-glass",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 510.0, 310.0, 100.0, 22.0 ],
					"text" : "r~ glass-out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain-glass",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.0, 340.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 590.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 620.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-header-master",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 650.0, 600.0, 20.0 ],
					"text" : "=== MASTER SECTION ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-fade",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 630.0, 200.0, 20.0 ],
					"text" : "Master Fade In/Out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-loadbang-fade",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 210.0, 630.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fade-init",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 660.0, 30.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fade-in",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 660.0, 80.0, 22.0 ],
					"text" : "0, 1 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fade-out",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 660.0, 80.0, 22.0 ],
					"text" : "1, 0 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-master-fade",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 30.0, 690.0, 100.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fade-multiply",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 720.0, 32.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-plugins",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 280.0, 630.0, 400.0, 20.0 ],
					"text" : "Master FX Chain - Load your UAD/Eventide plugins here"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-plug1-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 250.0, 660.0, 50.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-open1-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 660.0, 50.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass1",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 370.0, 660.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass1-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.0, 690.0, 80.0, 22.0 ],
					"text" : "bypass $1"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-vst1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 30.0, 760.0, 100.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "UAD Lexicon 224.vst",
							"plugindisplayname" : "UAD Powered Plug-Ins",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Universal Audio/Reverb and Room/UAD Lexicon 224.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "196.CMlaKA....fQPMDZ....A3TNAUE...P.....fPTYlEVcrQG................................hB..........QkYVX0wFc....................................f7C.Tm0O.PvS+...f3C...1OIvep9..HA8C...tO....................+....9y6t6tO.........9CkHhnO....+....7C...vO....+....9C...3O...f+."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "UAD Powered Plug-Ins",
									"origin" : "UAD Lexicon 224.vst",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "UAD Lexicon 224.vst",
										"plugindisplayname" : "UAD Powered Plug-Ins",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Universal Audio/Reverb and Room/UAD Lexicon 224.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "196.CMlaKA....fQPMDZ....A3TNAUE...P.....fPTYlEVcrQG................................hB..........QkYVX0wFc....................................f7C.Tm0O.PvS+...f3C...1OIvep9..HA8C...tO....................+....9y6t6tO.........9CkHhnO....+....7C...vO....+....9C...3O...f+."
									}
,
									"fileref" : 									{
										"name" : "UAD Powered Plug-Ins",
										"filename" : "UAD Powered Plug-Ins.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "a689b1b66ddc12494737fe74294c7594"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-plug2-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 660.0, 50.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-open2-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 660.0, 50.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass2",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 620.0, 660.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass2-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 620.0, 690.0, 80.0, 22.0 ],
					"text" : "bypass $1"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-vst2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 30.0, 800.0, 100.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "UAD Galaxy Tape Echo.vst",
							"plugindisplayname" : "UAD Powered Plug-Ins",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Universal Audio/Delay and Modulation/UAD Galaxy Tape Echo.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "168.CMlaKA....fQPMDZ....ArjPAUE...P.....fPTYlEVcrQG................................aD..........QkYVX0wFc.....................................7C...vO....+....9CitniO...f+....9C...3O.......td5C.35oO..WG+..WO8C...vO.........7C...3O"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "UAD Powered Plug-Ins",
									"origin" : "UAD Galaxy Tape Echo.vst",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "UAD Galaxy Tape Echo.vst",
										"plugindisplayname" : "UAD Powered Plug-Ins",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Universal Audio/Delay and Modulation/UAD Galaxy Tape Echo.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "168.CMlaKA....fQPMDZ....ArjPAUE...P.....fPTYlEVcrQG................................aD..........QkYVX0wFc.....................................7C...vO....+....9CitniO...f+....9C...3O.......td5C.35oO..WG+..WO8C...vO.........7C...3O"
									}
,
									"fileref" : 									{
										"name" : "UAD Powered Plug-Ins",
										"filename" : "UAD Powered Plug-Ins_20251013.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "d1a7e4d4f09ecca16949788114902a7d"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-header-record",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 630.0, 300.0, 20.0 ],
					"text" : "=== RECORDING ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-rec-toggle",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 750.0, 660.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-rec",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 800.0, 670.0, 200.0, 20.0 ],
					"text" : "Record Master Output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-record",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 840.0, 150.0, 22.0 ],
					"text" : "record~ ivo-session 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-master-gain",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 750.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 635.0, 862.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-header-presets",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1050.0, 110.0, 300.0, 20.0 ],
					"text" : "=== STATE MANAGEMENT ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-presets",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1050.0, 88.0, 300.0, 20.0 ],
					"text" : "Save/Recall: Plugins, Faders, Settings"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-pattrstorage",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.0, 320.0, 150.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 100, 100, 500, 600 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 200, 200, 800, 500 ]
					}
,
					"text" : "pattrstorage ivo-master",
					"varname" : "ivo-master"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-autopattr",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1050.0, 350.0, 150.0, 22.0 ],
					"restore" : 					{
						"vst~" : [ 							{
								"filetype" : "C74Snapshot",
								"version" : 2,
								"minorversion" : 0,
								"name" : "UAD Powered Plug-Ins",
								"origin" : "UAD Lexicon 224.vst",
								"type" : "VST",
								"subtype" : "AudioEffect",
								"embed" : 1,
								"snapshot" : 								{
									"pluginname" : "UAD Lexicon 224.vst",
									"plugindisplayname" : "UAD Powered Plug-Ins",
									"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Universal Audio/Reverb and Room/UAD Lexicon 224.vst",
									"pluginsaveduniqueid" : 0,
									"version" : 1,
									"isbank" : 0,
									"isbase64" : 1,
									"blob" : "196.CMlaKA....fQPMDZ....A3TNAUE...P.....fPTYlEVcrQG................................hB..........QkYVX0wFc....................................f7C.Tm0O.PvS+...f3C...1OIvep9..HA8C...tO....................+....9y6t6tO.........9CkHhnO....+....7C...vO....+....9C...3O...f+."
								}

							}
 ],
						"vst~[1]" : [ 							{
								"filetype" : "C74Snapshot",
								"version" : 2,
								"minorversion" : 0,
								"name" : "UAD Powered Plug-Ins",
								"origin" : "UAD Galaxy Tape Echo.vst",
								"type" : "VST",
								"subtype" : "AudioEffect",
								"embed" : 1,
								"snapshot" : 								{
									"pluginname" : "UAD Galaxy Tape Echo.vst",
									"plugindisplayname" : "UAD Powered Plug-Ins",
									"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Universal Audio/Delay and Modulation/UAD Galaxy Tape Echo.vst",
									"pluginsaveduniqueid" : 0,
									"version" : 1,
									"isbank" : 0,
									"isbase64" : 1,
									"blob" : "168.CMlaKA....fQPMDZ....ArjPAUE...P.....fPTYlEVcrQG................................aD..........QkYVX0wFc.....................................7C...vO....+....9CitniO...f+....9C...3O.......td5C.35oO..WG+..WO8C...vO.........7C...3O"
								}

							}
 ]
					}
,
					"text" : "autopattr",
					"varname" : "u100006998"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-preset-store",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.0, 170.0, 80.0, 22.0 ],
					"text" : "store 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-preset-recall",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1140.0, 170.0, 80.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-preset-write",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.0, 200.0, 80.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-preset-read",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1140.0, 200.0, 80.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-store",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1230.0, 170.0, 150.0, 20.0 ],
					"text" : "Store current state"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-write",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1230.0, 200.0, 150.0, 20.0 ],
					"text" : "Save to disk (JSON)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vst1-write",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.0, 240.0, 150.0, 22.0 ],
					"text" : "writexml vst1-state.xml"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vst1-read",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.0, 270.0, 150.0, 22.0 ],
					"text" : "readxml vst1-state.xml"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vst2-write",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1210.0, 240.0, 150.0, 22.0 ],
					"text" : "writexml vst2-state.xml"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-vst2-read",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1210.0, 270.0, 150.0, 22.0 ],
					"text" : "readxml vst2-state.xml"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-vst-save",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1370.0, 240.0, 200.0, 20.0 ],
					"text" : "Save plugin presets to XML"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-loadbang-state",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1210.0, 140.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-auto-recall",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1280.0, 140.0, 90.0, 22.0 ],
					"text" : "clientwindow"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-auto-recall", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bypass1-msg", 0 ],
					"source" : [ "obj-bypass1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-bypass1-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-bypass2-msg", 0 ],
					"source" : [ "obj-bypass2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-bypass2-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-master-fade", 0 ],
					"source" : [ "obj-fade-in", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-master-fade", 0 ],
					"source" : [ "obj-fade-init", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-master-gain", 0 ],
					"source" : [ "obj-fade-multiply", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-master-fade", 0 ],
					"source" : [ "obj-fade-out", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix1", 0 ],
					"source" : [ "obj-gain-drone1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix3", 1 ],
					"source" : [ "obj-gain-looper", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix1", 1 ],
					"source" : [ "obj-gain-gran", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix2", 1 ],
					"source" : [ "obj-gain-supersaw", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fade-init", 0 ],
					"source" : [ "obj-loadbang-fade", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-auto-recall", 0 ],
					"source" : [ "obj-loadbang-state", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fade-multiply", 1 ],
					"source" : [ "obj-master-fade", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 1 ],
					"order" : 0,
					"source" : [ "obj-master-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"order" : 1,
					"source" : [ "obj-master-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix2", 0 ],
					"source" : [ "obj-mix1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix3", 0 ],
					"source" : [ "obj-mix2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix4", 0 ],
					"source" : [ "obj-mix3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix5", 1 ],
					"source" : [ "obj-gain-glass", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain-glass", 0 ],
					"source" : [ "obj-receive-glass", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix5", 0 ],
					"source" : [ "obj-mix4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fade-multiply", 0 ],
					"source" : [ "obj-mix5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-seq-note", 0 ],
					"source" : [ "obj-notein-keystep", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-seq-vel", 0 ],
					"source" : [ "obj-notein-keystep", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-roli-note", 0 ],
					"source" : [ "obj-notein-roli", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-roli-vel", 0 ],
					"source" : [ "obj-notein-roli", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-open1-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-open2-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-plug1-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-plug2-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-preset-read", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-preset-recall", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-preset-store", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pattrstorage", 0 ],
					"source" : [ "obj-preset-write", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-record", 0 ],
					"source" : [ "obj-rec-toggle", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain-drone1", 0 ],
					"source" : [ "obj-receive-drone1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain-looper", 0 ],
					"source" : [ "obj-receive-looper", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain-gran", 0 ],
					"source" : [ "obj-receive-gran", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain-supersaw", 0 ],
					"source" : [ "obj-receive-supersaw", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 1 ],
					"source" : [ "obj-vst1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-vst1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-vst1-read", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-vst1-write", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dac", 1 ],
					"order" : 0,
					"source" : [ "obj-vst2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-dac", 0 ],
					"order" : 0,
					"source" : [ "obj-vst2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-record", 1 ],
					"order" : 1,
					"source" : [ "obj-vst2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-record", 0 ],
					"order" : 1,
					"source" : [ "obj-vst2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-vst2-read", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-vst2-write", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-bpm-default", 0 ],
					"source" : [ "obj-arp-loadbang", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-bpm", 0 ],
					"source" : [ "obj-arp-bpm-default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-bpm-to-ms", 0 ],
					"source" : [ "obj-arp-bpm", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-metro", 1 ],
					"source" : [ "obj-arp-bpm-to-ms", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-metro", 0 ],
					"source" : [ "obj-arp-toggle", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-counter", 0 ],
					"order" : 1,
					"source" : [ "obj-arp-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-random", 0 ],
					"order" : 0,
					"source" : [ "obj-arp-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-gate", 1 ],
					"source" : [ "obj-arp-counter", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-gate", 2 ],
					"source" : [ "obj-arp-random", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-gate", 0 ],
					"source" : [ "obj-arp-mode", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-select", 0 ],
					"source" : [ "obj-arp-gate", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-select", 0 ],
					"source" : [ "obj-arp-gate", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-scale-display", 0 ],
					"source" : [ "obj-receive-scale", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note0", 0 ],
					"source" : [ "obj-arp-select", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note1", 0 ],
					"source" : [ "obj-arp-select", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note2", 0 ],
					"source" : [ "obj-arp-select", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note3", 0 ],
					"source" : [ "obj-arp-select", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note4", 0 ],
					"source" : [ "obj-arp-select", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note5", 0 ],
					"source" : [ "obj-arp-select", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note6", 0 ],
					"source" : [ "obj-arp-select", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-note7", 0 ],
					"source" : [ "obj-arp-select", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 0 ],
					"source" : [ "obj-arp-note0", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 1 ],
					"source" : [ "obj-arp-note1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 2 ],
					"source" : [ "obj-arp-note2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 3 ],
					"source" : [ "obj-arp-note3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 4 ],
					"source" : [ "obj-arp-note4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 5 ],
					"source" : [ "obj-arp-note5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 6 ],
					"source" : [ "obj-arp-note6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-funnel", 7 ],
					"source" : [ "obj-arp-note7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-arp-send", 0 ],
					"source" : [ "obj-arp-funnel", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-vst1" : [ "vst~", "vst~", 0 ],
			"obj-vst2" : [ "vst~[1]", "vst~[1]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "UAD Powered Plug-Ins.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "UAD Powered Plug-Ins_20251013.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
