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
		"rect" : [ 100.0, 100.0, 600.0, 600.0 ],
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
					"patching_rect" : [ 30.0, 30.0, 500.0, 33.0 ],
					"text" : "IVO PERFORMANCE - OPEN ALL PATCHES",
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
					"patching_rect" : [ 30.0, 70.0, 500.0, 60.0 ],
					"text" : "INSTRUCTIONS:\n1. Click 'OPEN ALL' button below\n2. Turn ON audio (ezdac~) in the Master Performance patch\n3. Turn ON toggles in sound source patches to start playing"
				}
			},
			{
				"box" : {
					"id" : "obj-open-all",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 150.0, 150.0, 35.0 ],
					"text" : "OPEN ALL PATCHES",
					"fontsize" : 14.0,
					"bgcolor" : [ 0.0, 0.8, 0.4, 1.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-load-master",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 200.0, 350.0, 22.0 ],
					"text" : "load 00-ivo-master-performance.maxpat"
				}
			},
			{
				"box" : {
					"id" : "obj-delay1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 230.0, 100.0, 22.0 ],
					"text" : "delay 500"
				}
			},
			{
				"box" : {
					"id" : "obj-load-snow",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 260.0, 300.0, 22.0 ],
					"text" : "load 01b-snow-drone-pro.maxpat"
				}
			},
			{
				"box" : {
					"id" : "obj-delay2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 290.0, 100.0, 22.0 ],
					"text" : "delay 500"
				}
			},
			{
				"box" : {
					"id" : "obj-load-granular",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 320.0, 300.0, 22.0 ],
					"text" : "load 03-granular-ostinato.maxpat"
				}
			},
			{
				"box" : {
					"id" : "obj-delay3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 350.0, 100.0, 22.0 ],
					"text" : "delay 500"
				}
			},
			{
				"box" : {
					"id" : "obj-load-supersaw",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 380.0, 250.0, 22.0 ],
					"text" : "load 03-super-saw.maxpat"
				}
			},
			{
				"box" : {
					"id" : "obj-delay4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 410.0, 100.0, 22.0 ],
					"text" : "delay 500"
				}
			},
			{
				"box" : {
					"id" : "obj-load-looper",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 440.0, 250.0, 22.0 ],
					"text" : "load 04-live-looper.maxpat"
				}
			},
			{
				"box" : {
					"id" : "obj-delay5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 470.0, 100.0, 22.0 ],
					"text" : "delay 500"
				}
			},
			{
				"box" : {
					"id" : "obj-load-visuals",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 500.0, 280.0, 22.0 ],
					"text" : "load 08-bauhaus-visuals.maxpat"
				}
			},
			{
				"box" : {
					"id" : "obj-pcontrol",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 540.0, 100.0, 22.0 ],
					"text" : "pcontrol"
				}
			},
			{
				"box" : {
					"id" : "obj-status",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 150.0, 350.0, 20.0 ],
					"text" : "← Click to open all performance patches"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-pcontrol", 0 ],
					"source" : [ "obj-load-master", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-delay1", 0 ],
					"source" : [ "obj-open-all", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-load-master", 0 ],
					"source" : [ "obj-open-all", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-load-snow", 0 ],
					"source" : [ "obj-delay1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-delay2", 0 ],
					"source" : [ "obj-delay1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pcontrol", 0 ],
					"source" : [ "obj-load-snow", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-load-granular", 0 ],
					"source" : [ "obj-delay2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-delay3", 0 ],
					"source" : [ "obj-delay2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pcontrol", 0 ],
					"source" : [ "obj-load-granular", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-load-supersaw", 0 ],
					"source" : [ "obj-delay3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-delay4", 0 ],
					"source" : [ "obj-delay3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pcontrol", 0 ],
					"source" : [ "obj-load-supersaw", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-load-looper", 0 ],
					"source" : [ "obj-delay4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-delay5", 0 ],
					"source" : [ "obj-delay4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pcontrol", 0 ],
					"source" : [ "obj-load-looper", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-load-visuals", 0 ],
					"source" : [ "obj-delay5", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pcontrol", 0 ],
					"source" : [ "obj-load-visuals", 0 ]
				}
			}
		]
	}
}
