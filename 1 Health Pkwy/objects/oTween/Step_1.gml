/// @desc update all our tweeners
var numTweeners = ds_list_size(tweenerList);
for (var ti = 0; ti < numTweeners; ++ti) {
	var tweenerId = tweenerList[| ti];
	var tweener = tweener_pool[tweenerId];
	
	// return true when tweener has no tweens left to play.
	if (_tweener_run(tweener)) {
		ds_list_delete(tweenerList, ti);
		ti--;
		numTweeners--;
	}
}