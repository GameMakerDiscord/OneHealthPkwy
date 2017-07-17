/// @desc Easing function: Quadratic - In/Out
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

_t /= _d / 2;
if (_t < 1) return 2 *_t *_t + _b;
_t--;
return -_c / 2 * (_t * (_t - 2) - 1) + _b;