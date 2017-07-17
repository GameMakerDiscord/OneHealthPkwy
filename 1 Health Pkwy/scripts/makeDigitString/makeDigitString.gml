/// @description make a string with trailing and prefix 0s
/// @param value
/// @param digitsToShow
/// @param (opt)separateEveryX
var _value = argument[0];
var _digitsToShow = argument[1];
var _separator = argument_count > 2 ? argument[2] : -1;

var tens = power(10, _digitsToShow - 1);
var valueString = "";
while (tens > 0 && _value < tens) {
	valueString += "0";
	tens *= .1;
}

if (_value > 0)
	valueString += string(_value);
	
return valueString;
