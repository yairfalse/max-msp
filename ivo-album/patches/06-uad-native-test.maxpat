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
					"patching_rect" : [ 30.0, 30.0, 600.0, 20.0 ],
					"text" : "UAD NATIVE TEST - Load UAD Native plugins into Max/MSP"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 600.0, 20.0 ],
					"text" : "Click 'plug' message to open plugin selector, or edit vst~ objects with your UAD plugin names"
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
					"id" : "obj-comment-toggle",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 100.0, 150.0, 20.0 ],
					"text" : "Start test tone"
				}
			},
			{
				"box" : {
					"id" : "obj-cycle",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 150.0, 80.0, 22.0 ],
					"text" : "cycle~ 220"
				}
			},
			{
				"box" : {
					"id" : "obj-gain-input",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 190.0, 22.0, 80.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-vst1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 290.0, 300.0, 20.0 ],
					"text" : "UAD Plugin Slot 1 - Try UAD Reverb/Delay"
				}
			},
			{
				"box" : {
					"id" : "obj-plug1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 290.0, 50.0, 22.0 ],
					"text" : "plug"
				}
			},
			{
				"box" : {
					"id" : "obj-open1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 410.0, 290.0, 50.0, 22.0 ],
					"text" : "open"
				}
			},
			{
				"box" : {
					"id" : "obj-vst1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 320.0, 100.0, 22.0 ],
					"text" : "vst~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-vst2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 360.0, 300.0, 20.0 ],
					"text" : "UAD Plugin Slot 2 - Try UAD Compressor/EQ"
				}
			},
			{
				"box" : {
					"id" : "obj-plug2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 360.0, 50.0, 22.0 ],
					"text" : "plug"
				}
			},
			{
				"box" : {
					"id" : "obj-open2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 410.0, 360.0, 50.0, 22.0 ],
					"text" : "open"
				}
			},
			{
				"box" : {
					"id" : "obj-vst2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 390.0, 100.0, 22.0 ],
					"text" : "vst~"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-vst3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 430.0, 300.0, 20.0 ],
					"text" : "UAD Plugin Slot 3 - Try UAD Modulation/Saturation"
				}
			},
			{
				"box" : {
					"id" : "obj-plug3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 430.0, 50.0, 22.0 ],
					"text" : "plug"
				}
			},
			{
				"box" : {
					"id" : "obj-open3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 410.0, 430.0, 50.0, 22.0 ],
					"text" : "open"
				}
			},
			{
				"box" : {
					"id" : "obj-vst3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 460.0, 100.0, 22.0 ],
					"text" : "vst~"
				}
			},
			{
				"box" : {
					"id" : "obj-gain-output",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 510.0, 22.0, 80.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 550.0, 45.0, 45.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-instructions",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 290.0, 300.0, 100.0 ],
					"text" : "INSTRUCTIONS:\n1. Click 'plug' to browse for UAD plugins\n2. Click 'open' to open plugin GUI\n3. Start the test tone\n4. Tweak plugins\n5. If it works, integrate into other patches!"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-cycle", 0 ],
					"source" : [ "obj-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain-input", 0 ],
					"source" : [ "obj-cycle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-gain-input", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst1", 1 ],
					"source" : [ "obj-gain-input", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-plug1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst1", 0 ],
					"source" : [ "obj-open1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-vst1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst2", 1 ],
					"source" : [ "obj-vst1", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-plug2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst2", 0 ],
					"source" : [ "obj-open2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst3", 0 ],
					"source" : [ "obj-vst2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst3", 1 ],
					"source" : [ "obj-vst2", 1 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst3", 0 ],
					"source" : [ "obj-plug3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vst3", 0 ],
					"source" : [ "obj-open3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-gain-output", 0 ],
					"source" : [ "obj-vst3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-dac", 0 ],
					"source" : [ "obj-gain-output", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-dac", 1 ],
					"source" : [ "obj-gain-output", 0 ]
				}
			}
		]
	}
}
