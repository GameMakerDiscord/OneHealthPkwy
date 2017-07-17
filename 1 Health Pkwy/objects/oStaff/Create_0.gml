/// @description simple object to store staff info

#macro NumStaffGeneration	(27)

///////////////////////////////////
// Staff data
////////////////////////////////// 

/// I apologize, I don't really know anything about the health care system.
enum Titles  { Resident, RN, Doctor, DeptChief, NumTitles };
enum Genders { Male, Female, NumGender };
enum Staff   { Category, Name, FaceEyes, Face, Salary, Gender, Title, NumMembers }

staffPrefix = array_create(Titles.NumTitles);
staffPrefix[Titles.Resident]  = "";
staffPrefix[Titles.RN]        = "Rn. ";
staffPrefix[Titles.Doctor]    = "Dr. ";
staffPrefix[Titles.DeptChief] = "Dr. ";

staffTitles = array_create(Titles.NumTitles);
staffTitles[Titles.Resident]  = "Resident";
staffTitles[Titles.RN]        = "R. Nurse"; // "Registered Nurse";
staffTitles[Titles.Doctor]    = "Doctor";
staffTitles[Titles.DeptChief] = "Dept. Chief"; // "Chief Physician";

staffSalaries = array_create(Titles.NumTitles);
staffSalaries[Titles.Resident]  = [ [ 100, 50,  75,  75 ], [ 100, 50,  75,  75 ] ];
staffSalaries[Titles.RN]        = [ [ 125, 75, 100, 100 ], [ 125, 75, 100, 100 ] ];
staffSalaries[Titles.Doctor]    = [ [ 175, -1, 125, 150 ], [ 175, -1, 125, 150 ] ];
staffSalaries[Titles.DeptChief] = [ [ 250, -1, 250, 250 ], [ 250, -1, 250, 250 ] ];
																             // [ [ Min ], [ Max ] ];
///////////////////////////////////
// Staff appearance
////////////////////////////////// 

staffFaces = [ 
	[ sStaff_male_head_1, sStaff_male_head_2, ],
	[ sStaff_female_head_1 ]
];

staffEyes = [ sStaff_face_eyes_1, sStaff_face_eyes_2, sStaff_face_eyes_3 ];

var numFaces = [ array_length_1d(staffFaces[0]), array_length_1d(staffFaces[1]) ];
var numEyes  = array_length_1d(staffEyes); 

///////////////////////////////////
// Staff definitions
////////////////////////////////// 
																						 
staffDefs      = array_create(NumStaffGeneration);
availableStaff = ds_list_create();

// Generate some staffs
for (var staffIndex = 0; staffIndex < NumStaffGeneration; ++staffIndex) {
	staffDefs[staffIndex] = array_create(Staff.NumMembers);
	ds_list_add(availableStaff, staffIndex);

	var newStaff = staffDefs[staffIndex];
	
	var gender = irandom(Genders.NumGender - 1);
	newStaff[@Staff.Gender]   = gender;
	newStaff[@Staff.Name]     = nameGenerate(gender);
	newStaff[@Staff.Title]    = irandom(Titles.NumTitles - 1);
	newStaff[@Staff.Category] = irandom(RoomCategory.NumCategories - 1);	
	
	var faces = staffFaces[gender];
	newStaff[@Staff.Face]     = faces[irandom(numFaces[gender] - 1)];
	newStaff[@Staff.FaceEyes] = staffEyes[irandom(numEyes - 1)];
	
	var salaryScale = staffSalaries[newStaff[Staff.Title]];
	var salaryMin   = salaryScale[0];
	var salaryMax   = salaryScale[1];
	
	var smn = salaryMin[Staff.Category];
	var smx = salaryMax[Staff.Category];
	
	newStaff[@Staff.Salary] = smn + irandom((smx - smn) - 1);
}

// we don't actually process anything with iStaff
// NOTE: deactivation means !!! NO `with(iStaff)` !!!
instance_deactivate_object(id);
