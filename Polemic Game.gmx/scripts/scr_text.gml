//scr_text("text",speed,x,y);
with(obj_text)
{
    instance_destroy();
}
txt = instance_create(argument2,argument3,obj_text);
with (txt)
{
    padding = 16;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    spd = 1.5;
    font = Sfnt;

    text_length= string_length(text);
    font_size= font_get_size(font);

    draw_set_font(font);

    text_width = string_width_ext(text, font_size+(font_size/2),maxlength);
    text_height = string_height_ext(text, font_size+(font_size/2),maxlength);

    boxwidth= text_width + (padding*2);
    boxheight = text_height + (padding*2);
    x = ((2*x) - boxwidth)/2;
    y = ((2*y) - boxheight)/2;
}
