/// @desc Play another tween after this tween finishes
/// @param tween
/// @param nextTween
var tween = argument0;
var nextTween = argument1;

ds_list_add(tween[Tween.Next], nextTween);
nextTween[Tween.Prev] = tween;

return nextTween;