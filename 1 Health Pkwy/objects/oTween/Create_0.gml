/// @desc tween settings and constants here
enum Tweener {
  Id,
	TweenList,
	Scratch,
	
	Size,
};

enum Tween {
	Id,
	Tweening,
	
	TargetId,
	Status,
	Duration,
	Easing,
	Easing2,
	DestroyOnEnd,
	
	Callback,
	CallbackParams,
	CallbackParamCount,
	Prev,
	Next,
	
	// from the data start index, the array stores data specific to the tweener
	StartTime,
	Tweeners, 
	
	TweeningData,
	
	// tween_move, tween_scale
	start_x = Tween.TweeningData,
	start_y,
	end_x,
	end_y,
	
	// tween_rotate, tween_image_rotate
	start_rot = Tween.TweeningData,
	end_rot,
	
	data0 = Tween.TweeningData,
	data1,
	data2,
	data3,
	data4,
	data5,
	data6,
	maxData, 
	
	// a rough estimate of how many maximum data spots we'll need so we can pre-allocate
	// increase at your le-sh-ore
	Size = Tween.TweeningData + 16,	
	defaultCallbackParamCount = 10,
}

enum TweenStatus {
	Idle,
	Playing,
	Complete,
	Cancelled,
}

// tween / tweener config
defaultDestroyOnEnd = true;
defaultEasing = easeExpoIn;

///////////////// 
tweener_pool			  = [ ]; 
tweener_freeIndices = ds_stack_create();
tweenerList			    = ds_list_create();

tween_pool          = [ ];
tween_freeIndices   = ds_stack_create();

global._tweenController = id;
global.tweener = tweener_add();