/// sc_field_fill()
var order;

order[0]= "  # #  "
order[1]= "0 ### 0"
order[2]= "0#0#0#0"
order[3]= " ##### "
order[4]= "# ### #"

order[0]= "  0 0  "
order[1]= "0 000 0"
order[2]= "0000000"
order[3]= " 00000 "
order[4]= "0 000 0"

ds_grid_clear(field, noone)
ds_grid_clear(field_objs, noone)
for (var i=0; i<5; i++)
for (var j=0; j<7; j++)
switch string_char_at(order[i], j+1) {
case "#":
    ds_grid_set(field_objs, j, i, ob_bug_order)
    ds_grid_set(field, j, i, 1)
break
case "0":
    ds_grid_set(field_objs, j, i, ob_bug_classic_order)
    ds_grid_set(field, j, i, 1)
break
}
