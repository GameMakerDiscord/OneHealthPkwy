/// @desc free a tween index
/// @param tween
var tween = argument0;
var tc = global._tweenController;
with (tc) {
	if (!is_array(tween)) tween = tween[Tween.Id];
	var tweenId = tween[Tween.Id];
	ds_stack_push(tween_freeIndices, tweenId);
	
	tween[Tween.Status] = TweenStatus.Idle;
	var tweeners = tween[Tween.Tweeners];
	while (ds_list_size(tweeners) > 0) {
		var tw = tweeners[| 0];
		var tl = tw[Tweener.TweenList];
		var pos = ds_list_find_index(tl, tweenId);
		if (pos >= 0) 
			ds_list_delete(tl, pos);
		ds_list_delete(tweeners, 0);
	}

	ds_list_clear(tween[@Tween.Next]);
};