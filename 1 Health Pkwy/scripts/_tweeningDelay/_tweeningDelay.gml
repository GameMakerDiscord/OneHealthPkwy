// @desc Tweening function for delay
// expects to be called from object tweening.
/// @param tween
var tween = argument0;

var startTime = tween[Tween.StartTime];
var duration = tween[Tween.Duration];

var currentTime = gameTimer - startTime;
if (currentTime > duration) currentTime = duration;

return (currentTime == duration);