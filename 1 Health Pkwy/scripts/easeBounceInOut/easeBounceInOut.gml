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

if(_t < _d/2) return easeBounceIn(_t*2, 0, _c, _d) * 0.5 + _b;
else return easeBounceOut(_t * 2 - _d, 0, _c, _d) * 0.5 + _c * 0.5 + _b;