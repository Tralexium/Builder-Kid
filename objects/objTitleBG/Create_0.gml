/// @description Init vars


shader = shdTitle
u_resolution = shader_get_uniform(shader, "iResolution")
u_time = shader_get_uniform(shader, "iTime")

time = 0
resolution = [display_get_gui_width(), display_get_gui_height()]