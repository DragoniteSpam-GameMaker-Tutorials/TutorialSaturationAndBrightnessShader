x = 100;
y = 160;
image_xscale = 2;
image_yscale = 2;

draw_set_colour(c_black);
draw_text(20, 20, "Saturation: " + string(saturation));
draw_text(20, 40, "Value: " + string(value));
draw_text(20, 60, "Up and down affect saturation, left and right affect value");

draw_text(x, y - 20, "Default sprite");
draw_self();

x = 400;
y = 160;

draw_text(x, y - 20, "Modified");
shader_set(shd_saturation_brightness);
shader_set_uniform_f(shader_get_uniform(shd_saturation_brightness, "uniform_sat"), saturation);
shader_set_uniform_f(shader_get_uniform(shd_saturation_brightness, "uniform_val"), value);
draw_self();
shader_reset();