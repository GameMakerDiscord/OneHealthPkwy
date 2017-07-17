/// @desc Easing function: Back - In/Out
// src: https://github.com/jesusgollonet/ofpennereasing/blob/master/PennerEasing/Back.cpp
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

_t /= _d / 2;
var s = 1.70158 * 1.525;
if (_t < 1) return _c / 2* (_t* _t* ((s+1)*_t - s)) + _b;
_t -= 2;
return _c/2*(_t *_t * ((s+1)*_t + s) + 2) + _b;