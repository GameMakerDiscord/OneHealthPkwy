/// @descr Create a tween to move to x,y
/// @param x
/// @param y
/// @param duration
/// @param (opt)easing=tweenController.defaultEasing
/// @param (opt)easingY=easing
/// @param (opt)destroyOnEnd=true
// todo:
// @param (opt)completeCallback=noone
//
// completCallback is called when the tween finishes completely.
var sx = argument[0];
var sy = argument[1];
var dx = argument[2];
var dy = argument[3];
var duration = argument[4];

var tc = global._tweenController;
var tween = _tween_add(id, duration, argument_count > 5 ? argument[5] : tc.defaultDestroyOnEnd);

tween[@Tween.Tweening] = _tweeningPos;
tween[@Tween.start_x]  = sx;
tween[@Tween.start_y]  = sy;
tween[@Tween.end_x]    = dx - sx;
tween[@Tween.end_y]    = dy - sy;
tween[@Tween.Easing]   = argument_count > 5 ? argument[5] : tc.defaultEasing;
tween[@Tween.Easing2]  = argument_count > 6 ? argument[6] : tween[Tween.Easing];

return tween;