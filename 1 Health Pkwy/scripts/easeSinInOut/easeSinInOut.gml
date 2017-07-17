/// @desc Easing function: Sinusodial - In/Out
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

return -_c / 2 * (cos(pi * _t/_d) - 1) + _b;