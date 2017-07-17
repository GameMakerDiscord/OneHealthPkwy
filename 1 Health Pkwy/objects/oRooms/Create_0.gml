/// @description simple object to room info

#macro NumBuyHirePanels	(5)

//////////////////////
/// Room Category Characteristics
// Category determines colors
enum RoomCategory {
	Emergency,
	Administration,
	Diagnosis,
	Treatment,
	
	NumCategories
};

enum RoomColor {
	Room,
	Label,
	ActiveFill,
	InactiveFill,
	InactiveBorder,
	BHFill,
	BHLabel,
}

roomColors = [ ];
var cat = RoomCategory.Emergency;
roomColors[cat, RoomColor.Room]           = colorToGLSL(make_color_rgb(154,  85,  83));
roomColors[cat, RoomColor.Label]          = make_color_rgb(100,  43,  45);
roomColors[cat, RoomColor.ActiveFill]     = colorToGLSL(make_color_rgb(188, 142, 134));
roomColors[cat, RoomColor.InactiveFill]   = colorToGLSL(make_color_rgb(154,  85,  83));
roomColors[cat, RoomColor.InactiveBorder] = colorToGLSL(make_color_rgb(149,  77,  76));
roomColors[cat, RoomColor.BHFill]         = colorToGLSL(make_color_rgb(154,  85,  83));
roomColors[cat, RoomColor.BHLabel]        = make_color_rgb(100,  43,  45);

cat = RoomCategory.Administration;
roomColors[cat, RoomColor.Room]           = colorToGLSL(make_color_rgb( 79,  78,  98));
roomColors[cat, RoomColor.Label]          = make_color_rgb( 32,  29,  44);
roomColors[cat, RoomColor.ActiveFill]     = colorToGLSL(make_color_rgb(166, 168, 189));
roomColors[cat, RoomColor.InactiveFill]   = colorToGLSL(make_color_rgb( 79,  78,  98));
roomColors[cat, RoomColor.InactiveBorder] = colorToGLSL(make_color_rgb( 72,  71,  92));
roomColors[cat, RoomColor.BHFill]         = colorToGLSL(make_color_rgb( 79,  78,  98)); 
roomColors[cat, RoomColor.BHLabel]        = make_color_rgb( 32,  29,  44);

cat = RoomCategory.Diagnosis;
roomColors[cat, RoomColor.Room]				    = colorToGLSL(make_color_rgb(198, 158, 149));
roomColors[cat, RoomColor.Label]			    = make_color_rgb(164, 101,  98);
roomColors[cat, RoomColor.ActiveFill]     = colorToGLSL(make_color_rgb(228, 224, 224));
roomColors[cat, RoomColor.InactiveFill]   = colorToGLSL(make_color_rgb(198, 158, 149));
roomColors[cat, RoomColor.InactiveBorder] = colorToGLSL(make_color_rgb(188, 142, 134));
roomColors[cat, RoomColor.BHFill]				  = colorToGLSL(make_color_rgb(198, 158, 149));
roomColors[cat, RoomColor.BHLabel]			  = make_color_rgb(164, 101,  98);

cat = RoomCategory.Treatment;
roomColors[cat, RoomColor.Room]           = colorToGLSL(make_color_rgb(232, 214, 200));
roomColors[cat, RoomColor.Label]          = make_color_rgb(114, 104,  95);
roomColors[cat, RoomColor.ActiveFill]     = colorToGLSL(make_color_rgb(232, 214, 200));
roomColors[cat, RoomColor.InactiveFill]   = colorToGLSL(make_color_rgb(128, 105,  97));
roomColors[cat, RoomColor.InactiveBorder] = colorToGLSL(make_color_rgb(113,  93,  86));
roomColors[cat, RoomColor.BHFill]         = colorToGLSL(make_color_rgb(128, 105,  97));
roomColors[cat, RoomColor.BHLabel]        = make_color_rgb(232, 214, 200);


//////////////////////
/// Room Size Characteristics
// The size determines the sprite and text orientation to use
enum RoomSize {
	s1x1 = 0,
	s1x2,
	s2x1,
	s2x2,
	
	NumSizes
};

roomSprites = array_create(RoomSize.NumSizes);
roomSprites[RoomSize.s1x1] = sGame_Room_1x1;
roomSprites[RoomSize.s1x2] = sGame_Room_1x2;
roomSprites[RoomSize.s2x1] = sGame_Room_2x1;
roomSprites[RoomSize.s2x2] = sGame_Room_2x1;

roomIcons = array_create(RoomSize.NumSizes);
roomIcons[RoomSize.s1x1] = [sHUD_Buy_SizeIcon_1x1, sHUD_Buy_SizeIcon_1x1_Alt];
roomIcons[RoomSize.s1x2] = [sHUD_Buy_SizeIcon_1x2, sHUD_Buy_SizeIcon_1x2_Alt];
roomIcons[RoomSize.s2x1] = [sHUD_Buy_SizeIcon_2x1, sHUD_Buy_SizeIcon_2x1_Alt];
roomIcons[RoomSize.s2x2] = [sHUD_Buy_SizeIcon_2x2];

roomShapes = array_create(RoomSize.NumSizes);
roomShapes[RoomSize.s1x1] = [ [0, 0] ];
roomShapes[RoomSize.s1x2] = [ [0, 0], [0, 1] ];
roomShapes[RoomSize.s2x1] = [ [0, 0], [1, 0] ];
roomShapes[RoomSize.s2x2] = [ [0, 0], [1, 0] ,
                              [0, 1], [1, 1] ];
															
enum DoorOrient {
	HotDog,
	Hamburger,
	NumDoors,
}

// "Door" object members
enum Door {	Sprite, X, Y };

DoorOrients = array_create(RoomSize.NumSizes);
DoorOrients[RoomSize.s1x1] = [ 
 [DoorOrient.Hamburger, 11, -3], [DoorOrient.HotDog, 29, 11], 
 [DoorOrient.Hamburger, 11, 29], [DoorOrient.HotDog, -3, 11] 
];

DoorOrients[RoomSize.s1x2] = [ 
 [DoorOrient.Hamburger, 11, -3], 
 [DoorOrient.HotDog, 29, 11], [DoorOrient.HotDog, 29, 45],
 [DoorOrient.Hamburger, 11, 65], 
 [DoorOrient.HotDog, -3, 45], [DoorOrient.HotDog, -3, 11], 
];

DoorOrients[RoomSize.s2x1] = [ 
 [DoorOrient.Hamburger, 11, -3], [DoorOrient.Hamburger, 45, -3], 
 [DoorOrient.HotDog, 65, 11], 
 [DoorOrient.Hamburger, 11, 31], [DoorOrient.Hamburger, 45, 32], 
 [DoorOrient.HotDog, -3, 11] 
];

DoorOrients[RoomSize.s2x2] = [
 [DoorOrient.Hamburger, 11, -3], [DoorOrient.Hamburger, 45, -3], 
 [DoorOrient.HotDog,    29, 11], [DoorOrient.HotDog,    29, 45],
 [DoorOrient.Hamburger, 11, 29], [DoorOrient.Hamburger, 45, 29], 
 [DoorOrient.HotDog,    -3, 45], [DoorOrient.HotDog,    -3, 11], 
];

doorSprites = array_create(DoorOrient.NumDoors);
doorSprites[DoorOrient.HotDog]    = sGame_Door_HotDog;
doorSprites[DoorOrient.Hamburger] = sGame_Door_Hamburger;

enum RoomTextOrientation {
	Horizontal,
	Vertical,
};

roomText = array_create(RoomSize.NumSizes);
roomText[RoomSize.s1x1] = RoomTextOrientation.Horizontal;
roomText[RoomSize.s1x2] = RoomTextOrientation.Vertical;
roomText[RoomSize.s2x2] = RoomTextOrientation.Horizontal;
roomText[RoomSize.s2x1] = RoomTextOrientation.Horizontal;


////////////////////////////
// Setup Room Data
enum RoomType {
	Invalid = -1,
	
	// Emergency - Admission / Diagnosis
	Emergency = 0,
	Triage,
	
	// Administration
	Reception,
	Pharmacy,
		
	// Diagnosis
	GeneralPractice,
	
	// Treament
	Treatment,
	
	NumTypes
};


enum RoomDef {
	Type,
	Category,
	
	Size,
	Label,
	SubLabel,	// Optional Line 2
	BHLabel, // Label to show in BuyHire list
	
	Ailments,	// RoomType:Effect - Diagnosis: Detect, Treatment: Treats
	Cost,	    // Cost to buy
	
	Capacity,	// Amount of patients we can hold
	
	NumMembers
};

/////
// ER
var emergencyRoom = array_create(RoomDef.NumMembers, 0);
emergencyRoom[RoomDef.Type]     = RoomType.Emergency;
emergencyRoom[RoomDef.Category] = RoomCategory.Emergency;
emergencyRoom[RoomDef.Size]     = RoomSize.s1x2;
emergencyRoom[RoomDef.Label]		= "EMERGENCY";
emergencyRoom[RoomDef.BHLabel]	= "EMERGENCY";
emergencyRoom[RoomDef.Ailments] = [ AilmentType.BrokenBone, AilmentType.Poisoning ];
emergencyRoom[RoomDef.Cost]     = 100;
emergencyRoom[RoomDef.Capacity] = 8;

/////
// Triage
var triage = array_create(RoomDef.NumMembers, 0);
triage[RoomDef.Type]     = RoomType.Triage;
triage[RoomDef.Category] = RoomCategory.Emergency;
triage[RoomDef.Size]     = RoomSize.s1x1;
triage[RoomDef.Label]		 = "TRIAGE";
triage[RoomDef.BHLabel]	 = "TRIAGE";
triage[RoomDef.Ailments] = [ AilmentType.BrokenBone, AilmentType.Poisoning ];
triage[RoomDef.Cost]     = 50;
triage[RoomDef.Capacity] = 2;

/////
// Reception
var reception = array_create(RoomDef.NumMembers, 0);
reception[RoomDef.Type]     = RoomType.Reception;
reception[RoomDef.Category] = RoomCategory.Administration;
reception[RoomDef.Size]     = RoomSize.s2x1;
reception[RoomDef.Label]		= "RECEPTION";
reception[RoomDef.BHLabel]	= "RECEPTION";
reception[RoomDef.Ailments] = [ ];
reception[RoomDef.Cost]     = 75;
reception[RoomDef.Capacity] = 8;

/////
// Pharmacy
var pharmacy = array_create(RoomDef.NumMembers, 0);
pharmacy[RoomDef.Type]     = RoomType.Pharmacy;
pharmacy[RoomDef.Category] = RoomCategory.Administration;
pharmacy[RoomDef.Size]     = RoomSize.s2x1;
pharmacy[RoomDef.Label]		 = "PHARMACY";
pharmacy[RoomDef.BHLabel]	 = "PHARMACY";
pharmacy[RoomDef.Ailments] = [ ];
pharmacy[RoomDef.Cost]     = 150;
pharmacy[RoomDef.Capacity] = 6;

/////
// General Practice
var gp = array_create(RoomDef.NumMembers, 0);
gp[RoomDef.Type]     = RoomType.GeneralPractice;
gp[RoomDef.Category] = RoomCategory.Diagnosis;
gp[RoomDef.Size]     = RoomSize.s1x1;
gp[RoomDef.Label]		 = "GENERAL";
gp[RoomDef.SubLabel] = "PRACTICE";
gp[RoomDef.BHLabel]  = "GENERAL P.";
gp[RoomDef.Ailments] = [ ];
gp[RoomDef.Cost]     = 100;
gp[RoomDef.Capacity] = 2;

/////
// Treatment
var treatment = array_create(RoomDef.NumMembers, 0);
treatment[RoomDef.Type]     = RoomType.Treatment;
treatment[RoomDef.Category] = RoomCategory.Treatment;
treatment[RoomDef.Size]     = RoomSize.s2x1;
treatment[RoomDef.Label]		= "TREATMENT";
treatment[RoomDef.BHLabel]	= "TREATMENT";
treatment[RoomDef.Ailments] = [ ];
treatment[RoomDef.Cost]     = 100;
treatment[RoomDef.Capacity] = 8;

///////////////////////////////
// Create Room Table
roomDefs = array_create(RoomType.NumTypes);
roomDefs[RoomType.Emergency]       = emergencyRoom;
roomDefs[RoomType.Triage]          = triage;
roomDefs[RoomType.Reception]       = reception;
roomDefs[RoomType.Pharmacy]        = pharmacy;
roomDefs[RoomType.GeneralPractice] = gp;
roomDefs[RoomType.Treatment]       = treatment;

// we don't actually process anything with iRooms
// NOTE: deactivation means !!! NO `with(iRooms)` !!!
instance_deactivate_object(id);