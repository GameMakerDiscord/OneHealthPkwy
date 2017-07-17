/// @desc Easing function: Circular - Out
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

_t /= _d;
--_t;
return _c * sqrt(1 - _t * _t) + _b;