/// @desc Easing function: Back - In
// src: https://github.com/jesusgollonet/ofpennereasing/blob/master/PennerEasing/Back.cpp
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

_t /= _d;

var s = 1.70158;
return _c* (_t * _t * ((s+1) * _t - s)) + _b;
