/// @desc set an oncomplete on a tween
/// @param tween
/// @param callback
/// @param ... 
/// @param params
var tween = argument[0];
var cb = argument[1];

//var newCallback = callback_add(cb);

tween[@Tween.Callback] = cb;
tween[@Tween.CallbackParamCount] = argument_count - 2;

var callbackParamCount = argument_count - 2;
var callbackParams = tween[@Tween.CallbackParams]
	
for (var arg = 2; arg < argument_count; ++arg) {
	callbackParams[@ (arg - 2)] = argument[arg];
}

//callback_setParams(newCallback, callbackParams);

//ds_list_add(tween[@Tween.Callback], newCallback);

return tween;