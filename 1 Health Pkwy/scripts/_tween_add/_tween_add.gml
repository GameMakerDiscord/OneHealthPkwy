/// @desc Create a tween
/// @param targetId
/// @param duration
/// @param (optional)destroyOnEnd=true
var tc = global._tweenController;
var newTween = noone;

with (tc) {
	var newIndex = 0;
	if (ds_stack_empty(tween_freeIndices)) {
		// Create a new tween array
		newIndex = array_length_1d(tween_pool);
 	  tween_pool[@newIndex] = array_create(Tween.Size);
		
		newTween = tween_pool[newIndex];
	
		// initialize the data structures
		newTween[@Tween.Tweeners] = ds_list_create();
		newTween[@Tween.Next] = ds_list_create();
		newTween[@Tween.CallbackParams] = array_create(Tween.defaultCallbackParamCount);
	
	} else {
		newIndex = ds_stack_pop(tween_freeIndices);
		newTween = tween_pool[newIndex];
	}
}

// reinitialize
newTween[@Tween.Id]       = newIndex;
newTween[@Tween.Prev]     = noone;
newTween[@Tween.Callback] = noone;

// Set Defaults
newTween[@ Tween.TargetId]     = argument[0];
newTween[@ Tween.Duration]     = argument[1];
newTween[@ Tween.DestroyOnEnd] = (argument_count > 2) ? argument[2] : tc.defaultDestroyOnEnd;

return newTween;