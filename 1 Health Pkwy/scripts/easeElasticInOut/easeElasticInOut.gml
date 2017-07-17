/// @desc Easing function: Elastic - In/Out
// src: https://github.com/jesusgollonet/ofpennereasing/blob/master/PennerEasing/Elastic.cpp
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

if (_t == 0) return _b; if (_t >= _d) return _b + _c; 
_t /= _d/2;

var p = _d*(.3*1.5);
var s = p/4;

_t--;
if (_t < 0)	return -.5 * (_c * power(2, 10 * _t) * sin((_t * _d - s) * (2*pi) / p)) + _b;
return _c * power(2, -10 * _t) * sin((_t * _d - s) * (2 * pi) /p) * .5 + _c + _b;