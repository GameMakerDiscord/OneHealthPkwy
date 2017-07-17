/// @desc Easing function: Elastic - In
// src: https://github.com/jesusgollonet/ofpennereasing/blob/master/PennerEasing/Elastic.cpp
/// @param0 currentTime
/// @param1 startValue
/// @param2 changeInValue
/// @param3 duration
var _t = argument0;
var _b = argument1;
var _c = argument2;
var _d = argument3;

// Modeled after the damped sine wave y = sin(13pi/2*x)*pow(2, 10 * (x - 1))
_t /= _d;
if (_t==0) return _b;  
if (_t>=1) return _b+_c;  
var p = _d*.3;
var a = _c; 
var s = p/4;

_t--;
var postFix =a*power(2,10*_t); // this is a fix, again, with post-increment operators
return -(postFix * sin((_t*_d-s)*(2*pi)/p )) + _b;
