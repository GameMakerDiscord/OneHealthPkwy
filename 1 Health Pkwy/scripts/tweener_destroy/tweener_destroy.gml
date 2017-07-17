/// @desc Delete a tweener and free up its index
/// @param tweenerIdOrTweener
var tweenerId = argument0;
if (is_array(tweenerId)) 
	tweenerId = tweenerId[Tweener.Id];

var tc = global._tweenController;
with (tc) {
	var pos = ds_list_find_index(tweenerList, tweenerId);
	if (pos >= 0)
		ds_list_delete(tweenerList, pos);
}