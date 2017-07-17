#!/bin/bash
SourcePath="Source"
ExportPath="Exports"

WholeExports=("ui-titlebar-status" "ui-titlebar-gameicon" 
	          "ui-buyhire-bg" "ui-buyhire-panel"
	          "ui-doctor-clipboard" "ui-doctor-clipboardicon"
		      "ui-patient-folder-bg" "ui-patient-ailment-panel"
	          "room-table" "room-grid"
		      "room-1x1" "room-1x2" "room-2x1" 
		      "door-hamburger" "door-hotdog" 
			  "icon-dollar" "icon-heart")

SplitExports=("ui-titlebar-closebutton" "ui-endturn"
	          "ui-buyhire-tab" "ui-buy-sizeicon" 
	 		  "ui-sidebar"
	          "ui-staff-fire" "doctor-face" 
	          "ui-patient-folder" "ui-patient-ailment-option" "patient")

#FrameExports=("")

for export in ${WholeExports[@]}; do
	~/aseprite.exe -b "$SourcePath/$export.ase" --save-as "$ExportPath/$export.png"
done

for export in ${SplitExports[@]}; do
	~/aseprite.exe -b "$SourcePath/$export.ase" --save-as "$ExportPath/$export-{layer}.png"
done

### This needs to be updated to export Layers of Frames as sprite sheets
#for export in ${FrameExports[@]}; do
	#~/aseprite.exe -b "$SourcePath/$export.ase" --save-as "$ExportPath/$export-{layer}-frames.png"
#done