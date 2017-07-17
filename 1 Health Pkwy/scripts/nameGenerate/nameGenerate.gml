/// @description randomly generate a gendered name
/// @param (opt)gender
var _gender = argument_count > 0 ? argument[0] : irandom(1);

var nameLists;
if (variable_global_exists("_nameLists"))
	nameLists = global._nameLists;
else {
	nameLists = array_create(2);	// 2 Genders
	
	// male = 0
	// female = 1
	nameLists[0] = [ "Bobberts", "Johnson", "Howard", "Dewey", "Humperts", "Barold" ];
	nameLists[1] = [ "Nancy",    "Yolanda", "Linda",  "Wendy", "Jenni",    "Gertie" ];
	global._nameLists = nameLists;
}

// names wouldn't actually be gendered... they're last names

var names = nameLists[_gender];
return names[irandom(array_length_1d(names) - 1)];