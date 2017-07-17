/// @description simple object to ailment info

////////////////////////////////////////////
// Ailments
////////////////////////////////////////////
enum AilmentType {
	BrokenBone,
	Poisoning,
	
	// Basic Illness
	Flu,
	Cold,
	Bronch,
	Runs,
	
	// Psychiatric
	Depression,
	Anxiety,
	Psychosis,
	
	// Pain Management
	Sprain,
	Migraine,
	
	// Special Ward
	Pregnancy,
	Elderly,
}

// we don't actually process anything with iAilments
// NOTE: deactivation means !!! NO `with(iAilments)` !!!
instance_deactivate_object(id);