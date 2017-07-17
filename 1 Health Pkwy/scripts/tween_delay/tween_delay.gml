/// @desc Dummy tween to delay a tween
/// @param duration
var duration = argument[0];

var tc = global._tweenController;
var tween = _tween_add(id, duration, argument_count > 1 ? argument[1] : tc.defaultDestroyOnEnd);

tween[@Tween.Tweening] = _tweeningDelay;

return tween;