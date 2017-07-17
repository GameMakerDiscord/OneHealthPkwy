/// @desc Play a tween with the current tweener
/// @param tweener
/// @param tween
var tweener = argument0;
var tween = argument1;
var tc = global._tweenController;

if (!is_array(tweener)) tweener = tc.tweener_pool[tweener];
if (!is_array(tween))   tween   = tc.tween_pool[tween];

tween[@Tween.StartTime] = gameTimer;
tween[@Tween.Status] = TweenStatus.Playing;

// Add our tweener to the update list if this is the first tween on it.
var tweenList = tweener[Tweener.TweenList];
ds_list_add(tweenList, tween);
if (ds_list_size(tweenList) == 1) {
	var tweenerId = tweener[@Tweener.Id];
	ds_list_add(tc.tweenerList, tweenerId);
}

return tween;