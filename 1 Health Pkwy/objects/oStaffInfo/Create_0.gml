viewing = noone;

enum StaffInfo {
	StaffIcon,
	StaffName,
	StaffTitle,
	StaffSalary,
	StaffSalaryDollar,
	StaffSalaryVal,
	StaffFire,
	StaffStatsLabel,
	StaffStatsTop,
	StaffStatsSpace,
}
infoPositions = [
	[ 7, 16], // Icon
	[23, 21], // Name
	[ 7, 30], // Title
	[ 8, 39], // Salary
	[62, 38], // Dollar Symbol
	[69, 39], // Salary Value
	[63, 32], // Fire Button
	[ 7, 51], // Stats Label
	[ 7, 62], // Beginning of Stats Display
 	[63,  8]	// 3 pixels + 6 fnt height 
];

