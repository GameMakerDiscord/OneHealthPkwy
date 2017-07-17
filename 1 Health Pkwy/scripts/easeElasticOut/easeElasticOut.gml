/// @desc Easing function: Elastic - Out
// src: https://github.com/jesusgollonet/ofpennereasing/blob/master/PennerEasing/Elastic.cpp
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

_t /= _d;

if (_t==0) return _b;  
if (_t >= 1) return _b+_c;

var p = _d*.3;
var s = p/4;

return _c * power(2, -10 * _t) * sin(( _t * _d - s) * (2*pi) /p) + _c + _b;