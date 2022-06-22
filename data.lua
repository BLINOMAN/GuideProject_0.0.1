local styles = data.raw["gui-style"].default

data:extend
{
    {
        type = "custom-input",
        name = "my-custom-input",
        key_sequence = "I",
        consuming = "none"
    }
}

styles["content_frame"] = {
    type = "frame_style",
    parent = "inside_shallow_frame_with_padding",
    vertically_stretchable = "on"
}

styles["controls_flow"] = {
    type = "vertical_flow_style"
}

styles["controls_textfield"] = {
    type = "textbox_style",
    width = 36
}
