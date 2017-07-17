/// @desc Create a new tweener and return it
var tc = global._tweenController;
var newTweener = noone;
with (tc) {
	var newIndex = 0;
	if (ds_stack_empty(tweener_freeIndices)) {
		// create a new tweener array
		newIndex = array_length_1d(tweener_pool);
 	  tweener_pool[@newIndex] = array_create(Tweener.Size);
		newTweener = tweener_pool[newIndex];
		newTweener[@Tweener.TweenList] = ds_list_create();
	} else {
		newIndex = ds_stack_pop(tweener_freeIndices);
		newTweener = tweener_pool[newIndex];
	}
	
	
	newTweener[@Tweener.Id] = newIndex;
}

return newTweener;