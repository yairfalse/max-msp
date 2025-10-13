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
		"rect" : [ 100.0, 100.0, 1400.0, 900.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"patching_rect" : [ 30.0, 30.0, 800.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 20.0, 800.0, 33.0 ],
					"text" : "IVO - LIVE PERFORMANCE",
					"fontsize" : 24.0,
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-subtitle",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 70.0, 800.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 60.0, 800.0, 20.0 ],
					"text" : "Roli MPE Control • 4 Sound Layers • Jitter Visuals • Live Mixing"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-layers",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 120.0, 400.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 100.0, 400.0, 20.0 ],
					"text" : "=== SOUND LAYERS ===",
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-comment-layer1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 150.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 130.0, 150.0, 20.0 ],
					"text" : "LAYER 1: Drone"
				}
			},
			{
				"box" : {
					"id" : "obj-toggle-layer1",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 180.0, 50.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 160.0, 50.0, 50.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-gain1",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 100.0, 180.0, 30.0, 120.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 160.0, 30.0, 120.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-send-layer1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 240.0, 100.0, 22.0 ],
					"text" : "s layer1-gate"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-layer2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 150.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.0, 130.0, 150.0, 20.0 ],
					"text" : "LAYER 2: Granular"
				}
			},
			{
				"box" : {
					"id" : "obj-toggle-layer2",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 180.0, 50.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.0, 160.0, 50.0, 50.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-gain2",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 270.0, 180.0, 30.0, 120.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 160.0, 30.0, 120.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-send-layer2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 240.0, 100.0, 22.0 ],
					"text" : "s layer2-gate"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-layer3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 370.0, 150.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 130.0, 150.0, 20.0 ],
					"text" : "LAYER 3: Field Rec"
				}
			},
			{
				"box" : {
					"id" : "obj-toggle-layer3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 370.0, 180.0, 50.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 160.0, 50.0, 50.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-gain3",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 180.0, 30.0, 120.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.0, 160.0, 30.0, 120.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-send-layer3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 370.0, 240.0, 100.0, 22.0 ],
					"text" : "s layer3-gate"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-layer4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 150.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.0, 130.0, 150.0, 20.0 ],
					"text" : "LAYER 4: Pure Tones"
				}
			},
			{
				"box" : {
					"id" : "obj-toggle-layer4",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.0, 180.0, 50.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.0, 160.0, 50.0, 50.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-gain4",
					"maxclass" : "gain~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.0, 180.0, 30.0, 120.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 470.0, 160.0, 30.0, 120.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-send-layer4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 240.0, 100.0, 22.0 ],
					"text" : "s layer4-gate"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-scenes",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 340.0, 400.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 310.0, 400.0, 20.0 ],
					"text" : "=== SCENES (Keyboard 1-5) ===",
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-scene1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 370.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 340.0, 120.0, 35.0 ],
					"text" : "1: Intro\n(Drone only)",
					"fontsize" : 10.0
				}
			},
			{
				"box" : {
					"id" : "obj-scene2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 370.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.0, 340.0, 120.0, 35.0 ],
					"text" : "2: Build\n(+Granular)",
					"fontsize" : 10.0
				}
			},
			{
				"box" : {
					"id" : "obj-scene3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 370.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 340.0, 120.0, 35.0 ],
					"text" : "3: Peak\n(+Field)",
					"fontsize" : 10.0
				}
			},
			{
				"box" : {
					"id" : "obj-scene4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 370.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.0, 340.0, 120.0, 35.0 ],
					"text" : "4: Full\n(All layers)",
					"fontsize" : 10.0
				}
			},
			{
				"box" : {
					"id" : "obj-scene5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.0, 370.0, 120.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 540.0, 340.0, 120.0, 35.0 ],
					"text" : "5: Outro\n(Tones only)",
					"fontsize" : 10.0
				}
			},
			{
				"box" : {
					"id" : "obj-comment-master",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 120.0, 200.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 550.0, 100.0, 200.0, 20.0 ],
					"text" : "=== MASTER ===",
					"fontface" : 1
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
					"patching_rect" : [ 750.0, 150.0, 40.0, 150.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 550.0, 130.0, 50.0, 180.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-vu-left",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 810.0, 150.0, 20.0, 150.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 620.0, 130.0, 20.0, 180.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-vu-right",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 840.0, 150.0, 20.0, 150.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 650.0, 130.0, 20.0, 180.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 320.0, 50.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 610.0, 320.0, 50.0, 50.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-roli",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 460.0, 400.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 410.0, 400.0, 20.0 ],
					"text" : "=== ROLI CONTROL ===",
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-roli-pressure",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 490.0, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 440.0, 20.0, 140.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-pressure",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 490.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.0, 440.0, 100.0, 20.0 ],
					"text" : "Pressure\n(Reverb)"
				}
			},
			{
				"box" : {
					"id" : "obj-roli-slide",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 490.0, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.0, 440.0, 20.0, 140.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-slide",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 490.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 440.0, 100.0, 20.0 ],
					"text" : "Slide\n(Filter)"
				}
			},
			{
				"box" : {
					"id" : "obj-roli-glide",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 310.0, 490.0, 20.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.0, 440.0, 20.0, 140.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-glide",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 490.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 310.0, 440.0, 100.0, 20.0 ],
					"text" : "Glide\n(Pitch)"
				}
			},
			{
				"box" : {
					"id" : "obj-receive-pressure",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 650.0, 100.0, 22.0 ],
					"text" : "r roli-pressure"
				}
			},
			{
				"box" : {
					"id" : "obj-receive-slide",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 650.0, 100.0, 22.0 ],
					"text" : "r roli-slide"
				}
			},
			{
				"box" : {
					"id" : "obj-receive-glide",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 650.0, 100.0, 22.0 ],
					"text" : "r roli-glide"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-visuals",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 460.0, 400.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 420.0, 410.0, 250.0, 20.0 ],
					"text" : "=== VISUALS ===",
					"fontface" : 1
				}
			},
			{
				"box" : {
					"id" : "obj-toggle-visuals",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 490.0, 50.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 420.0, 440.0, 50.0, 50.0 ]
				}
			},
			{
				"box" : {
					"id" : "obj-comment-visuals-on",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 500.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 480.0, 450.0, 180.0, 20.0 ],
					"text" : "Jitter Visuals ON/OFF"
				}
			},
			{
				"box" : {
					"id" : "obj-send-visuals",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 550.0, 100.0, 22.0 ],
					"text" : "s visuals-toggle"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-instructions",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 700.0, 800.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 600.0, 650.0, 80.0 ],
					"text" : "LIVE PERFORMANCE GUIDE:\n\n1. Open 00-master-control.maxpat FIRST (handles all Roli input)\n2. Use Scenes (1-5) to switch between setups\n3. Individual layer toggles for improvisation\n4. Roli controls ALL layers simultaneously\n5. SPACE = panic (emergency stop)",
					"fontsize" : 10.0
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-send-layer1", 0 ],
					"source" : [ "obj-toggle-layer1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-layer2", 0 ],
					"source" : [ "obj-toggle-layer2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-layer3", 0 ],
					"source" : [ "obj-toggle-layer3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-layer4", 0 ],
					"source" : [ "obj-toggle-layer4", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-roli-pressure", 0 ],
					"source" : [ "obj-receive-pressure", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-roli-slide", 0 ],
					"source" : [ "obj-receive-slide", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-roli-glide", 0 ],
					"source" : [ "obj-receive-glide", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-send-visuals", 0 ],
					"source" : [ "obj-toggle-visuals", 0 ]
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
					"destination" : [ "obj-vu-left", 0 ],
					"source" : [ "obj-master-gain", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-vu-right", 0 ],
					"source" : [ "obj-master-gain", 0 ]
				}
			}
		]
	}
}
