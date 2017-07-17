/// @desc Tweener internal function to process a single tweener's tweens
/// @param tweener
var tweener = argument0;
var tweenList = tweener[@Tweener.TweenList];
var scratch = 0;
var removeList = 0;
var scount = 0;
var removeCount = 0;

var numTweens = ds_list_size(tweenList);
for (var ti = 0; ti < numTweens; ++ti) {
	var tween = tweenList[| ti];
	var targetId = tween[@Tween.TargetId];
	var tweening = tween[Tween.Tweening];
	
	if (script_execute(tweening, tween)) {
		// returns true when complete	
		
		// fire the tweens that follow:	
		var nextList = tween[@Tween.Next];
		var numNext = ds_list_size(nextList);
		for (var nextIndex = 0; nextIndex < numNext; ++nextIndex) {
			var nt = nextList[| nextIndex];
			
			// todo: maintain previos tween
			nt[@Tween.Prev] = noone;
			
			scratch[scount, 0] = 1;
			scratch[scount, 1] = targetId;
			scratch[scount, 2] = nt;
			scount++;
		}
		ds_list_clear(tween[@Tween.Next]);
		
		// call callback outside of loop in case it adds tweens
		if (tween[@Tween.Callback] != noone) {
			scratch[scount, 0] = 2;
			scratch[scount, 1] = targetId;
			scratch[scount, 2] = tween;
			scount++;
		}
		
		// todo: looping, conditional destroy
		removeList[removeCount] = tween;
		removeCount++;
	}
}

for (var si = 0; si < scount; ++si) {
	var actionType = scratch[si, 0];
	var targetId = scratch[si, 1];
	var tween = scratch[si, 2];
	
	with (targetId) {
		switch(actionType) {
			case 1: tweener_play(tweener, tween); break;
			case 2: {
				var func = tween[@Tween.Callback];
				var params = tween[@Tween.CallbackParams];
				var paramCount = tween[@Tween.CallbackParamCount];
				
				runScriptArray(func, params, paramCount);	
			} break;
			default: break;
		}
	}
}

// todo: destroy on end when tweener is finished, rather than here.
for (var ri = 0; ri < removeCount; ++ri) {
	var tween = removeList[@ri];
	ds_list_delete(tweenList, ds_list_find_index(tweenList, tween));
	tween_destroy(tween);
}

return ds_list_size(tweenList) == 0;