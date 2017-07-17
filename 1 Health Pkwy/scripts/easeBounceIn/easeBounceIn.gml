/// @desc Easing function: Bounce - In/Out
// src: https://github.com/warrenm/AHEasing/blob/master/AHEasing/easing.c
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

return _c - easeBounceOut(_d - _t, 0, _c, _d) + _b;