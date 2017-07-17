/// @desc Easing function: Bounce - Out
// src: https://github.com/warrenm/AHEasing/blob/master/AHEasing/easing.c
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

_t /= _d;

if(_t < 1/2.75) {
	return _c * (7.5625 * _t * _t) + _b;	
} else if (_t < (2/2.75)) {
	_t -= (1.5 / 2.75);
	return _c * (7.5625 *  _t * _t + .75) + _b;
} else if (_t < (2.5/2.75)) {
	_t -= (2.25/2.75);
	return _c*(7.5625 * _t * _t + .9375) + _b;
}

_t -= (2.625/2.75);
return _c*(7.5625 * _t * _t + .984375) + _b;