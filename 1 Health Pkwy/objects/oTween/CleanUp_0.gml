/// @description delete lists / tweener lists
var numTweener = array_length_1d(tweener_pool);
for (var i = 0; i < numTweener; ++i) {
	var tweener = tweener_pool[i];
	ds_list_destroy(tweener[@Tweener.TweenList]);
}

var numTweens = array_length_1d(tween_pool);
for (var i = 0; i < numTweens; ++i) {
	var tween = tween_pool[i];
	ds_list_destroy(tween[@Tween.Next]);
}

tweener_pool = 0;
tween_pool = 0;
ds_stack_destroy(tweener_freeIndices);
ds_stack_destroy(tween_freeIndices);
ds_list_destroy(tweenerList);