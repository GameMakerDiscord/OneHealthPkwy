/// @desc Easing function: Exponential - In
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

return _c * power(2, 10 * (_t/_d - 1) ) + _b;