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
		"rect" : [ 818.0, 234.0, 800.0, 600.0 ],
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
					"patching_rect" : [ 30.0, 30.0, 500.0, 33.0 ],
					"text" : "BAUHAUS VISUALS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-subtitle",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 65.0, 500.0, 20.0 ],
					"text" : "Simple audio-reactive shapes - Bauhaus colors"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-audio",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 100.0, 200.0, 20.0 ],
					"text" : "Audio Input:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-adc",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 30.0, 130.0, 100.0, 22.0 ],
					"text" : "adc~ 1 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-adc",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 130.0, 300.0, 20.0 ],
					"text" : "Listens to audio inputs 1-2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-avg",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 160.0, 100.0, 22.0 ],
					"text" : "average~ 4096"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-snapshot",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 190.0, 100.0, 22.0 ],
					"text" : "snapshot~ 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-smooth",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 200.0, 100.0, 22.0 ],
					"text" : "slide 10 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-times",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 30.0, 230.0, 100.0, 22.0 ],
					"text" : "* 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 260.0, 100.0, 22.0 ],
					"text" : "clip 0.3 2."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-amp-display",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 260.0, 80.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-amp",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 260.0, 150.0, 20.0 ],
					"text" : "Scale Amount (0.3-2.0)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-meter",
					"maxclass" : "slider",
					"mult" : 0.01,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 400.0, 130.0, 20.0, 140.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "slider",
							"parameter_mmax" : 99.0,
							"parameter_shortname" : "slider",
							"parameter_type" : 0
						}

					}
,
					"size" : 100.0,
					"varname" : "slider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-meter",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 430.0, 190.0, 150.0, 20.0 ],
					"text" : "Audio Level Meter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-send-amp",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 290.0, 100.0, 22.0 ],
					"text" : "s vis-amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-render",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 330.0, 200.0, 20.0 ],
					"text" : "Rendering:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-toggle-render",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 360.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-render-toggle",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 370.0, 100.0, 20.0 ],
					"text" : "Render ON/OFF"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-qmetro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 410.0, 100.0, 22.0 ],
					"text" : "qmetro 33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-qmetro",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 410.0, 150.0, 20.0 ],
					"text" : "30fps render loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-world",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 30.0, 440.0, 380.0, 22.0 ],
					"text" : "jit.world bauhaus @size 1280 720 @erase_color 0.1 0.1 0.15 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-loadbang-render",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 30.0, 330.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-render-on",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 330.0, 32.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-toggle-fs",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 360.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-fs-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 390.0, 100.0, 22.0 ],
					"text" : "fullscreen $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-fs",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 360.0, 100.0, 20.0 ],
					"text" : "Fullscreen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-red",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 480.0, 200.0, 20.0 ],
					"text" : "Red Sphere:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-loadbang-shapes",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 340.0, 480.0, 100.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-amp1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 510.0, 100.0, 22.0 ],
					"text" : "r vis-amp"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-sphere-scale-display",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 510.0, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-pack1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 540.0, 100.0, 22.0 ],
					"text" : "pack scale 1. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-shape1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 30.0, 570.0, 300.0, 22.0 ],
					"text" : "jit.gl.gridshape bauhaus @color 1 0 0 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-pos1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 540.0, 120.0, 22.0 ],
					"text" : "position -1.5 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-shape1-attr",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.0, 510.0, 120.0, 22.0 ],
					"text" : "shape sphere"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-comment-yellow",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 480.0, 200.0, 20.0 ],
					"text" : "Yellow Cube:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-receive-amp2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 510.0, 100.0, 22.0 ],
					"text" : "r vis-amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-times2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 500.0, 540.0, 100.0, 22.0 ],
					"text" : "* 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-cube-scale-display",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.0, 540.0, 60.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-pack2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 570.0, 100.0, 22.0 ],
					"text" : "pack scale 1. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-shape2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 500.0, 600.0, 300.0, 22.0 ],
					"text" : "jit.gl.gridshape bauhaus @color 1 1 0 0.7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-pos2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 650.0, 570.0, 100.0, 22.0 ],
					"text" : "position 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-shape2-attr",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 650.0, 540.0, 100.0, 22.0 ],
					"text" : "shape cube"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-avg", 0 ],
					"source" : [ "obj-adc", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-snapshot", 0 ],
					"source" : [ "obj-avg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-amp-display", 0 ],
					"order" : 1,
					"source" : [ "obj-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-meter", 0 ],
					"order" : 0,
					"source" : [ "obj-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-send-amp", 0 ],
					"order" : 2,
					"source" : [ "obj-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-world", 0 ],
					"source" : [ "obj-fs-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-render-on", 0 ],
					"source" : [ "obj-loadbang-render", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pos1", 0 ],
					"order" : 2,
					"source" : [ "obj-loadbang-shapes", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pos2", 0 ],
					"order" : 0,
					"source" : [ "obj-loadbang-shapes", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape1-attr", 0 ],
					"order" : 3,
					"source" : [ "obj-loadbang-shapes", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape2-attr", 0 ],
					"order" : 1,
					"source" : [ "obj-loadbang-shapes", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape1", 0 ],
					"source" : [ "obj-pack1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape2", 0 ],
					"source" : [ "obj-pack2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape1", 0 ],
					"source" : [ "obj-pos1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape2", 0 ],
					"source" : [ "obj-pos2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-world", 0 ],
					"source" : [ "obj-qmetro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pack1", 2 ],
					"order" : 1,
					"source" : [ "obj-receive-amp1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pack1", 1 ],
					"order" : 2,
					"source" : [ "obj-receive-amp1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-sphere-scale-display", 0 ],
					"order" : 0,
					"source" : [ "obj-receive-amp1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-times2", 0 ],
					"source" : [ "obj-receive-amp2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-toggle-render", 0 ],
					"source" : [ "obj-render-on", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape1", 0 ],
					"source" : [ "obj-shape1-attr", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-shape2", 0 ],
					"source" : [ "obj-shape2-attr", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-times", 0 ],
					"source" : [ "obj-smooth", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-smooth", 0 ],
					"source" : [ "obj-snapshot", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-clip", 0 ],
					"source" : [ "obj-times", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-cube-scale-display", 0 ],
					"order" : 0,
					"source" : [ "obj-times2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pack2", 2 ],
					"order" : 1,
					"source" : [ "obj-times2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-pack2", 1 ],
					"order" : 2,
					"source" : [ "obj-times2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-fs-msg", 0 ],
					"source" : [ "obj-toggle-fs", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-qmetro", 0 ],
					"source" : [ "obj-toggle-render", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-meter" : [ "slider", "slider", 0 ],
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
		"parameter_map" : 		{
			"midi" : 			{
				"slider" : 				{
					"srcname" : "60.note.0.chan.midi",
					"min" : 0.0,
					"max" : 99.0,
					"flags" : 3
				}

			}

		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
