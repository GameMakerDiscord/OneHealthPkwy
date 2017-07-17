/// @desc a tween for the scale of an image.
/// @param x-scale
/// @param y-scale
/// @param duration
/// @param (opt)easing=defaultEasing
var tc = global._tweenController;

var sx  = argument[0];
var sy  = argument[1];
var ssx = argument[2];
var ssy = argument[3];
var d   = argument[4];
var ease  = argument_count > 5 ? argument[5] : tc.defaultEasing;
var ease2 = argument_count > 6 ? argument[6] : ease;

var tween = _tween_add(id, d);

tween[@Tween.Tweening] = _tweeningScale;
tween[@Tween.start_x]  = sx;
tween[@Tween.start_y]  = sy;
tween[@Tween.end_x]    = ssx - sx;
tween[@Tween.end_y]    = ssy - sy;
tween[@Tween.Easing]   = ease;
tween[@Tween.Easing2]  = ease2;

return tween;