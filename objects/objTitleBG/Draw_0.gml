/// @description Render shader


time += 0.02

shader_set(shader)
	shader_set_uniform_f(u_time, time)
	shader_set_uniform_f_array(u_resolution, resolution)
	draw_self()
shader_reset()