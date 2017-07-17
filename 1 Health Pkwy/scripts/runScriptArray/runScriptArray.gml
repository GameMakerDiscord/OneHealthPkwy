/// @description Variadic Arugments
var _func = argument[0];
var _params = argument[1];
var _paramCount = argument_count > 2 ? argument[2] : array_length_1d(_params);

var ret = noone;
switch (_paramCount) {
	case 0:  ret = script_execute(_func); break;
	case 1:  ret = script_execute(_func, _params[0]); break;
	case 2:	 ret = script_execute(_func, _params[0], _params[1]); break;
	case 3:  ret = script_execute(_func, _params[0], _params[1], _params[2]); break;
	case 4:  ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3]); break;
	case 5:	 ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4]); break;
	case 6:  ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5]); break;
	case 7:  ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6]); break;
	case 8:	 ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7]); break;
	case 9:	 ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7], _params[8]); break;
	case 10: ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7], _params[8], _params[9]); break;
	case 11: ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7], _params[8], _params[9], _params[10]); break;
	case 12: ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7], _params[8], _params[9], _params[10], _params[11]); break;
	case 13: ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7], _params[8], _params[9], _params[10], _params[11], _params[12]); break;
	case 14: ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7], _params[8], _params[9], _params[10], _params[11], _params[12], _params[13]); break;
	case 15: ret = script_execute(_func, _params[0], _params[1], _params[2], _params[3], _params[4], _params[5], _params[6], _params[7], _params[8], _params[9], _params[10], _params[11], _params[12], _params[13], _params[14]); break;
};

return ret;