set ram_list [get_db [all_registers -macro] .name]
foreach i $ram_list {
deselectAll
selectInst $i
set LLX [expr [dbGet selected.box_llx] - 3]
set LLY [expr [dbGet selected.box_lly] - 3]
set URX [expr [dbGet selected.box_urx] + 3]
set URY [expr [dbGet selected.box_ury] + 3]
createPlaceBlockage -box $LLX $LLY $URX $URY -type hard
}
