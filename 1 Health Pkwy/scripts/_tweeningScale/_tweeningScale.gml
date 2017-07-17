/// @desc internal tweener for scale
// expects to be called from object tweening.
/// @param tween
var tween = argument0;

var easing  = tween[Tween.Easing];
var easingY = tween[Tween.Easing2];
if (easingY <= 0) easingY = easing;

var sx = tween[Tween.start_x];
var sy = tween[Tween.start_y];
var dx = tween[Tween.end_x];
var dy = tween[Tween.end_y];

var startTime = tween[Tween.StartTime];
var duration = tween[Tween.Duration];

var currentTime = gameTimer - startTime;
if (currentTime > duration) currentTime = duration;

var targetId = tween[Tween.TargetId];

with (targetId) {
	if (sx != dx)
		image_xscale = script_execute(easing, currentTime, sx, dx, duration);
	if (sy != dy)
		image_yscale = script_execute(easingY, currentTime, sy, dy, duration);
}

return (currentTime == duration);