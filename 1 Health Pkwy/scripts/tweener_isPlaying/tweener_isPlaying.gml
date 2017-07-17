/// @desc Returns whether the tweener is playing any tweens at all
/// @param tweener
var tweener = argument0;
if (!is_array(tweener)) {
	if (tweener < 0) return false;
	
	var tc = global._tweenController;
	tweener = tc.tweener_pool[tweener];
}

return ds_list_size(tweener[Tweener.TweenList]) > 0;