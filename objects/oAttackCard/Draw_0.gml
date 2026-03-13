//Shake

var _shakeX = random_range(-1,1)*shake;
var _shakeY = random_range(-1,1)*shake;

//Draw Shadow
draw_sprite_ext(sprite_index, image_index, x+shadowX+_shakeX, y+shadowY+_shakeY, image_xscale-shadowSize, image_yscale-shadowSize, image_angle+angle, c_black, image_alpha*SHADOW_ALPHA);

//Draw Self
draw_sprite_ext(sprite_index, image_index, x+_shakeX, y+_shakeY, image_xscale, image_yscale, image_angle+angle, image_blend, image_alpha);

//Checking Rng
if (global.SilenceRng != noone)
{
draw_text(x,y,global.SilenceRng.Roll)
draw_text(x,y+32,global.SilenceRng.base)
draw_text(x,y-64,global.SilenceRng.take_value)
}

//Draw Disable
if disabled
{
    draw_sprite_ext(sprite_index, image_index, x+_shakeX, y+_shakeY, image_xscale, image_yscale, image_angle, c_red, image_alpha*.2);
    draw_sprite_ext(sCardDisable,0,x+_shakeX, y+_shakeY, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

//Draw Flash
shader_set(shFlash);

if flashAlpha > 0
{
    draw_sprite_ext(sprite_index, image_index, x+_shakeX, y+_shakeY, image_xscale, image_yscale, image_angle+angle, flashColor, flashAlpha);
}

//Reset Shader
shader_reset();