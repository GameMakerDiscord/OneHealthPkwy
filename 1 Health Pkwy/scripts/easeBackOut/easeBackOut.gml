/// @desc Easing function: Back - Out
// src: https://github.com/warrenm/AHEasing/blob/master/AHEasing/easing.c
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

var s = 1.70158;
_t = _t/_d-1;
return _c * (_t * _t * ((s + 1) * _t + s) + 1) + _b;
