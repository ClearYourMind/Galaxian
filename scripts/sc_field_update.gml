/// sc_field_update()

var _x = max_x*2 + 4
var _y = view_yview[1] + 4

with ob_bug_order
    instance_destroy()

var offset_min_done = false
ob_field.offset_min = 0

for (var i=0; i<field_w; i++) {
    var _found = false
    for (var j=0; j<field_h; j++)
    if ds_grid_get(field, i,j) > 0 {
        _found = true
        with instance_create(_x + i*field_step_x, _y + j*field_step_y, ds_grid_get(field_objs, i,j)) {
            cell_x = i
            cell_y = j
            ds_grid_set(field, i,j, id)
        }
    }
    with ob_field
    if not _found {
        if not offset_min_done {
            offset_min = -((i+1) * field_step_x)
        }
    } else {
        offset_min_done = true
        offset_max = max_x - (field_w - (field_w-i-1)) * field_step_x
    }
}

