/// sc_field_fill()
var order;
order[0]= "  # #  "
order[1]= "# ### #"
order[2]= "#######"
order[3]= " ##### "
order[4]= "# ### #"

ds_grid_clear(field, noone)
ds_grid_clear(field_objs, noone)
for (var i=0; i<5; i++)
for (var j=0; j<7; j++)
if string_char_at(order[i], j+1) = "#" {
    ds_grid_set(field_objs, j, i, ob_bug_order)
    ds_grid_set(field, j, i, 1)
}
