/// sc_field_update()

var _x = view_xview[1] + 4
var _y = view_yview[1] + 4

with ob_bug_order
    instance_destroy()

for (var j=0; j<field_h; j++)
for (var i=0; i<field_w; i++)
if ds_grid_get(field, i,j) > 0 {
    with instance_create(_x + i*field_step_x, _y + j*field_step_y, ds_grid_get(field_objs, i,j)) {
        cell_x = i
        cell_y = j
        ds_grid_set(field, i,j, id)
        
    }
}

