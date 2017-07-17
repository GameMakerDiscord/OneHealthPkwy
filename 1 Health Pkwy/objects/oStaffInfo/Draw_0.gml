/// @desc draw staff info / text
draw_self();


var scol = draw_get_color();
draw_set_font(fnt_game);

var iconPos = infoPositions[StaffInfo.StaffIcon];
var namePos = infoPositions[StaffInfo.StaffName];
var titlePos = infoPositions[StaffInfo.StaffTitle];
var salPos  = infoPositions[StaffInfo.StaffSalary];
var salDolPos = infoPositions[StaffInfo.StaffSalaryDollar];
var salVal = infoPositions[StaffInfo.StaffSalaryVal];
var statsLabelPos = infoPositions[StaffInfo.StaffStatsLabel];
var statsTop = infoPositions[StaffInfo.StaffStatsTop];
var statsSpacing = infoPositions[StaffInfo.StaffStatsSpace];
var statY = statsTop[1];

var xx = x; var yy = y;
var statValX = xx + statsTop[0] + statsSpacing[0];

with (viewing) {
	var salary = staffDef[Staff.Salary];
	var stitle = iStaff.staffTitles[staffDef[Staff.Title]];
	
	draw_set_color(iGame.moneyAlt);
	draw_text(  xx+salPos[0],      yy+salPos[1], "Salary: ");
	outlineText(xx+salVal[0],      yy+salVal[1], "000",      iGame.moneyFg, iGame.moneyBg);
	draw_sprite(sIconDollar, 0, xx+salDolPos[0], yy+salDolPos[1]);
	
	draw_set_color(iGame.statBg);
	draw_text(xx+namePos[0],       yy+namePos[1], sname);
	draw_text(xx+titlePos[0],			 yy+titlePos[1], stitle);
	draw_text(xx+statsLabelPos[0], yy+statsLabelPos[1], "Stats");
	draw_text(xx+statsTop[0],      yy+statY, "DAYS EMPLOYED: "); 
	outlineText(statValX,          yy+statY, "000", 
	            iGame.statFg, iGame.statBg);
	statY += (2 * statsSpacing[1]);
	
	draw_text(xx+statsTop[0],      yy+statY, "PATIENTS SEEN: ");
	outlineText(statValX,          yy+statY, "000", 
	            iGame.statFg, iGame.statBg);
	
	statY = statsTop[1] + statsSpacing[1];
	draw_set_color(iGame.moneyRed);
	draw_text(xx+statsTop[0],				yy+statY, "SALARY PAID: ");
	outlineText(statValX,						yy+statY, "000", iGame.titleFg, iGame.titleBg);
	
	statY += 2 * statsSpacing[1];
	draw_set_color(iGame.moneyAlt);
	draw_text(xx+statsTop[0],				yy+statY, "MONEY EARNED: ");
	outlineText(statValX,						yy+statY, "000", iGame.moneyFg, iGame.moneyBg);
	
	var lx=x; var ly=y; var d=depth;
	depth = other.depth-1;
	x = xx+iconPos[0];
	y = yy+iconPos[1];
	staff_icon_draw(roomCat);
	
	x=lx;y=ly;depth=d;
}
draw_set_color(scol);