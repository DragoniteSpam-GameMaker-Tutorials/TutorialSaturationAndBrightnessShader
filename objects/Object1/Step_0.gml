if (keyboard_check(vk_up)) {
    saturation += 0.01;
    saturation = min(1, saturation);
}
if (keyboard_check(vk_down)) {
    saturation -= 0.01;
    saturation = max(-1, saturation);
}
if (keyboard_check(vk_right)) {
    value += 0.01;
    value = min(1, value);
}
if (keyboard_check(vk_left)) {
    value -= 0.01;
    value = max(-1, value);
}