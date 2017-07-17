/// @description simple object to patient info

global.patientHeads = [
	[sPatient_1_Alive, sPatient_1_Dead], 
	[sPatient_2_Alive, sPatient_2_Dead], 
	[sPatient_3_Alive, sPatient_3_Dead], 
];

global.patientStatus = [
	colorToGLSL(make_color_rgb(228, 224, 224)),
	colorToGLSL(make_color_rgb(187, 212, 165)),
	colorToGLSL(make_color_rgb( 75, 105,  47)),
	colorToGLSL(make_color_rgb( 55, 148, 110)),
];




// we don't actually process anything with iPatients
// NOTE: deactivation means !!! NO `with(iPatients)` !!!
instance_deactivate_object(id);