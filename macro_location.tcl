set macro_list [get_db [all_registers -macro] .name]
foreach i $macro_list {
deselectAll
selectInst $i
puts "placeInstance $i [dbGet selected.pt_x] [dbGet selected.pt_y] [dbGet selected.orient]"
}
