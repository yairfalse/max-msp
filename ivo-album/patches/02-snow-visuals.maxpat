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
		"rect" : [ 100.0, 100.0, 900.0, 700.0 ],
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
					"patching_rect" : [ 30.0, 30.0, 500.0, 20.0 ],
					"text" : "SNOW VISUALS - Generative visuals for Ivo Album"
				}
			},
			{
				"box" : {
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 55.0, 500.0, 20.0 ],
					"text" : "Slowly evolving abstract patterns. Audio-reactive and generative."
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
					"id" : "obj-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 150.0, 80.0, 22.0 ],
					"text" : "qmetro 33"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-framerate",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 150.0, 150.0, 20.0 ],
					"text" : "30fps rendering"
				}
			},
			{
				"box" : {
					"id" : "obj-videoplane",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 30.0, 550.0, 150.0, 22.0 ],
					"text" : "jit.gl.videoplane snow"
				}
			},
			{
				"box" : {
					"id" : "obj-render",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 30.0, 520.0, 150.0, 22.0 ],
					"text" : "jit.gl.render snow"
				}
			},
			{
				"box" : {
					"id" : "obj-world",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 30.0, 580.0, 200.0, 22.0 ],
					"text" : "jit.world snow @size 1024 768"
				}
			},
			{
				"box" : {
					"id" : "obj-brcosa",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 200.0, 480.0, 250.0, 22.0 ],
					"text" : "jit.gl.brcosa snow @brightness 1.2"
				}
			},
			{
				"box" : {
					"id" : "obj-blur",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 200.0, 450.0, 200.0, 22.0 ],
					"text" : "jit.gl.blur snow @amount 0.3"
				}
			},
			{
				"box" : {
					"id" : "obj-slab1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 200.0, 300.0, 300.0, 22.0 ],
					"text" : "jit.gl.slab snow @file cc.lumabw.jxs"
				}
			},
			{
				"box" : {
					"id" : "obj-noise",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 200.0, 270.0, 250.0, 22.0 ],
					"text" : "jit.gl.noise snow @type perlin @dim 512 512"
				}
			},
			{
				"box" : {
					"id" : "obj-slab2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 200.0, 350.0, 200.0, 22.0 ],
					"text" : "jit.gl.slab snow @file cc.offset.jxs"
				}
			},
			{
				"box" : {
					"id" : "obj-poke1",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 200.0, 240.0, 100.0, 22.0 ],
					"text" : "jit.gl.pix snow"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-noise",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 270.0, 200.0, 20.0 ],
					"text" : "Perlin noise for organic texture"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 150.0, 100.0, 22.0 ],
					"text" : "cycle 0.05"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-lfo1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 180.0, 150.0, 22.0 ],
					"text" : "scale -1. 1. 0.001 0.005"
				}
			},
			{
				"box" : {
					"id" : "obj-param1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 210.0, 180.0, 22.0 ],
					"text" : "s noise-time"
				}
			},
			{
				"box" : {
					"id" : "obj-receive-time",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 240.0, 100.0, 22.0 ],
					"text" : "r noise-time"
				}
			},
			{
				"box" : {
					"id" : "obj-noise-time",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 520.0, 270.0, 150.0, 22.0 ],
					"text" : "jit.gl.noise @time $1"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 300.0, 320.0, 100.0, 22.0 ],
					"text" : "cycle 0.03"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-lfo2",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 350.0, 150.0, 22.0 ],
					"text" : "scale -1. 1. -0.02 0.02"
				}
			},
			{
				"box" : {
					"id" : "obj-pack-offset",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 380.0, 100.0, 22.0 ],
					"text" : "pack 0. 0."
				}
			},
			{
				"box" : {
					"id" : "obj-prepend",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 410.0, 100.0, 22.0 ],
					"text" : "prepend offset"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-slow",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 150.0, 200.0, 20.0 ],
					"text" : "Very slow LFO for texture drift"
				}
			},
			{
				"box" : {
					"id" : "obj-comment-offset",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 320.0, 200.0, 20.0 ],
					"text" : "Slow movement for visual flow"
				}
			},
			{
				"box" : {
					"id" : "obj-lfo3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 550.0, 380.0, 100.0, 22.0 ],
					"text" : "cycle 0.02"
				}
			},
			{
				"box" : {
					"id" : "obj-scale-lfo3",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.0, 410.0, 150.0, 22.0 ],
					"text" : "scale -1. 1. 0.1 0.5"
				}
			},
			{
				"box" : {
					"id" : "obj-blur-amount",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.0, 440.0, 120.0, 22.0 ],
					"text" : "prepend amount"
				}
			}
		],
		"lines" : [
			{
				"patchline" : {
					"destination" : [ "obj-metro", 0 ],
					"source" : [ "obj-toggle", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-render", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo1", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo2", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-lfo3", 0 ],
					"source" : [ "obj-metro", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-videoplane", 0 ],
					"source" : [ "obj-render", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-world", 0 ],
					"source" : [ "obj-videoplane", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-videoplane", 0 ],
					"source" : [ "obj-brcosa", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-brcosa", 0 ],
					"source" : [ "obj-blur", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-slab2", 0 ],
					"source" : [ "obj-slab1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-slab1", 0 ],
					"source" : [ "obj-noise", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-blur", 0 ],
					"source" : [ "obj-slab2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-noise", 0 ],
					"source" : [ "obj-poke1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-lfo1", 0 ],
					"source" : [ "obj-lfo1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-param1", 0 ],
					"source" : [ "obj-scale-lfo1", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-noise-time", 0 ],
					"source" : [ "obj-receive-time", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-lfo2", 0 ],
					"source" : [ "obj-lfo2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pack-offset", 0 ],
					"source" : [ "obj-scale-lfo2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-pack-offset", 1 ],
					"source" : [ "obj-scale-lfo2", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-prepend", 0 ],
					"source" : [ "obj-pack-offset", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-slab2", 0 ],
					"source" : [ "obj-prepend", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-scale-lfo3", 0 ],
					"source" : [ "obj-lfo3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-blur-amount", 0 ],
					"source" : [ "obj-scale-lfo3", 0 ]
				}
			},
			{
				"patchline" : {
					"destination" : [ "obj-blur", 0 ],
					"source" : [ "obj-blur-amount", 0 ]
				}
			}
		]
	}
}
