/// @desc a tween for the scale of an image.
/// @param x-scale
/// @param y-scale
/// @param duration
/// @param (opt)easing=defaultEasing
var tc = global._tweenController;

var sx = image_xscale;
var sy = image_yscale;
var ssx = argument[0];
var ssy = argument[1];
var d = argument[2];
var ease = argument_count > 3 ? argument[3] : tc.defaultEasing;
var ease2 = argument_count > 4 ? argument[4] : ease;

var tween = _tween_add(id, d);

tween[@Tween.Tweening] = _tweeningScale;
tween[@Tween.start_x]  = sx;
tween[@Tween.start_y]  = sy;
tween[@Tween.end_x]    = ssx - sx;
tween[@Tween.end_y]    = ssy - sy;
tween[@Tween.Easing]   = ease;
tween[@Tween.Easing2]  = ease2;

return tween;