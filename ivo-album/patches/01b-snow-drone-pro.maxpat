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
		"rect" : [ 451.0, 109.0, 1000.0, 800.0 ],
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
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 30.0, 700.0, 20.0 ],
					"text" : "SNOW DRONE PRO - With UAD/Eventide plugin chain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 700.0, 20.0 ],
					"text" : "Generative drones → UAD/Eventide processing. Try: Blackhole → Galaxy Tape → Pure Plate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-power",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 90.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-loadbang",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 200.0, 90.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 200.0, 120.0, 80.0, 22.0 ],
					"text" : "metro 5000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-voices",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 150.0, 400.0, 20.0 ],
					"text" : "=== FIVE HARMONIC VOICES ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-keystep",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 90.0, 100.0, 22.0 ],
					"text" : "r seq-note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mtof",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 120.0, 100.0, 22.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-default-note",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.0, 90.0, 50.0, 22.0 ],
					"text" : "220."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-send-transpose",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 150.0, 100.0, 22.0 ],
					"text" : "s transpose"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-keystep",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 860.0, 90.0, 200.0, 20.0 ],
					"text" : "Keystep transposes drones"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-random1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 50.0, 180.0, 100.0, 22.0 ],
					"text" : "random 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-scale1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 210.0, 120.0, 22.0 ],
					"text" : "scale 0 20 0.5 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-trans1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 210.0, 100.0, 22.0 ],
					"text" : "r transpose"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-multiply1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 50.0, 235.0, 60.0, 22.0 ],
					"text" : "* 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-line1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 50.0, 240.0, 80.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cycle1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 50.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 50.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-random2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 180.0, 180.0, 100.0, 22.0 ],
					"text" : "random 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-scale2",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 210.0, 120.0, 22.0 ],
					"text" : "scale 0 20 160. 240."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-line2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 180.0, 240.0, 80.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cycle2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 180.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 180.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-random3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 310.0, 180.0, 100.0, 22.0 ],
					"text" : "random 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-scale3",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 210.0, 130.0, 22.0 ],
					"text" : "scale 0 15 240. 360."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-line3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 310.0, 240.0, 80.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cycle3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 310.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 310.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-random4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 440.0, 180.0, 100.0, 22.0 ],
					"text" : "random 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-scale4",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 210.0, 130.0, 22.0 ],
					"text" : "scale 0 15 320. 400."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-line4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 440.0, 240.0, 80.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cycle4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 440.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 440.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.08"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-random5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 570.0, 180.0, 100.0, 22.0 ],
					"text" : "random 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-scale5",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 210.0, 130.0, 22.0 ],
					"text" : "scale 0 10 440. 520."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-line5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 570.0, 240.0, 80.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-cycle5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 570.0, 270.0, 60.0, 22.0 ],
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-gain5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 570.0, 300.0, 60.0, 22.0 ],
					"text" : "*~ 0.06"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 50.0, 340.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix123",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 50.0, 360.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mix1234",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 50.0, 380.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-mixer",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 50.0, 400.0, 32.0, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-chain",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 380.0, 600.0, 20.0 ],
					"text" : "=== PLUGIN CHAIN: Load your UAD/Eventide/whatever ==="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-slot1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 410.0, 350.0, 20.0 ],
					"text" : "Slot 1: Reverb (Try Blackhole, Galaxy Reverb, Ocean Way)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-plug1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 410.0, 50.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-open1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 410.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 520.0, 410.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass1-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 445.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 480.0, 100.0, 22.0 ],
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
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-slot2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 520.0, 350.0, 20.0 ],
					"text" : "Slot 2: Modulation/Delay (Try Galaxy Tape, H910, Shimmer)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-plug2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 520.0, 50.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-open2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 520.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 520.0, 520.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass2-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 555.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 590.0, 100.0, 22.0 ],
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
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-slot3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 630.0, 350.0, 20.0 ],
					"text" : "Slot 3: Saturation/Width (Try Oxide Tape, Studer, Knifonium)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-plug3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 630.0, 50.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-open3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 630.0, 50.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 520.0, 630.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-bypass3-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 665.0, 80.0, 22.0 ],
					"text" : "bypass $1"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-vst3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 50.0, 700.0, 100.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[2]",
							"parameter_shortname" : "vst~[2]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"text" : "vst~",
					"varname" : "vst~[2]",
					"viewvisibility" : 0
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
					"patching_rect" : [ 50.0, 740.0, 22.0, 80.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-send-master",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 769.0, 100.0, 22.0 ],
					"text" : "s~ drone-out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-routing",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 136.0, 809.0, 400.0, 20.0 ],
					"text" : "Routed to Master Performance mixer - control volume there"
				}

			}
 ],
		"lines" : [ 			{
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
					"destination" : [ "obj-bypass3-msg", 0 ],
					"source" : [ "obj-bypass3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst3", 0 ],
					"source" : [ "obj-bypass3-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain1", 0 ],
					"source" : [ "obj-cycle1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain2", 0 ],
					"source" : [ "obj-cycle2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain3", 0 ],
					"source" : [ "obj-cycle3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain4", 0 ],
					"source" : [ "obj-cycle4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-gain5", 0 ],
					"source" : [ "obj-cycle5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-transpose", 0 ],
					"source" : [ "obj-default-note", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix12", 0 ],
					"source" : [ "obj-gain1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix12", 1 ],
					"source" : [ "obj-gain2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix123", 1 ],
					"source" : [ "obj-gain3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix1234", 1 ],
					"source" : [ "obj-gain4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mixer", 1 ],
					"source" : [ "obj-gain5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cycle1", 0 ],
					"source" : [ "obj-line1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cycle2", 0 ],
					"source" : [ "obj-line2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cycle3", 0 ],
					"source" : [ "obj-line3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cycle4", 0 ],
					"source" : [ "obj-line4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cycle5", 0 ],
					"source" : [ "obj-line5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-default-note", 0 ],
					"order" : 0,
					"source" : [ "obj-loadbang", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-metro", 0 ],
					"order" : 1,
					"source" : [ "obj-loadbang", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-master", 0 ],
					"source" : [ "obj-master-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-random1", 0 ],
					"order" : 4,
					"source" : [ "obj-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-random2", 0 ],
					"order" : 3,
					"source" : [ "obj-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-random3", 0 ],
					"order" : 2,
					"source" : [ "obj-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-random4", 0 ],
					"order" : 1,
					"source" : [ "obj-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-random5", 0 ],
					"order" : 0,
					"source" : [ "obj-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix123", 0 ],
					"source" : [ "obj-mix12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mix1234", 0 ],
					"source" : [ "obj-mix123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mixer", 0 ],
					"source" : [ "obj-mix1234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 1 ],
					"order" : 0,
					"source" : [ "obj-mixer", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"order" : 1,
					"source" : [ "obj-mixer", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-transpose", 0 ],
					"source" : [ "obj-mtof", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-line1", 0 ],
					"source" : [ "obj-multiply1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-open1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-open2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst3", 0 ],
					"source" : [ "obj-open3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-plug1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-plug2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst3", 0 ],
					"source" : [ "obj-plug3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-metro", 0 ],
					"source" : [ "obj-power", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-scale1", 0 ],
					"source" : [ "obj-random1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-scale2", 0 ],
					"source" : [ "obj-random2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-scale3", 0 ],
					"source" : [ "obj-random3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-scale4", 0 ],
					"source" : [ "obj-random4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-scale5", 0 ],
					"source" : [ "obj-random5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-mtof", 0 ],
					"source" : [ "obj-receive-keystep", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-multiply1", 1 ],
					"source" : [ "obj-receive-trans1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-multiply1", 0 ],
					"source" : [ "obj-scale1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-line2", 0 ],
					"source" : [ "obj-scale2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-line3", 0 ],
					"source" : [ "obj-scale3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-line4", 0 ],
					"source" : [ "obj-scale4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-line5", 0 ],
					"source" : [ "obj-scale5", 0 ]
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
					"destination" : [ "obj-vst3", 1 ],
					"source" : [ "obj-vst2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-vst3", 0 ],
					"source" : [ "obj-vst2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-master-gain", 0 ],
					"source" : [ "obj-vst3", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-vst1" : [ "vst~", "vst~", 0 ],
			"obj-vst2" : [ "vst~[1]", "vst~[1]", 0 ],
			"obj-vst3" : [ "vst~[2]", "vst~[2]", 0 ],
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
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
