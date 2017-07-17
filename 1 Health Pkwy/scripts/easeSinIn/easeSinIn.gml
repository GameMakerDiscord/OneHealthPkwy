/// @desc Easing function: Sinusodial - In
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

return -_c * cos(_t / _d * (pi / 2)) + _c + _b;