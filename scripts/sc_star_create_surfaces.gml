/// sc_star_create_surfaces()

for (var i=0; i<sf_star_count; i++) 
if not surface_exists(sf_star[i])
    sf_star[i] = surface_create(view_wview[0], view_hview[0])

var _star_n = stars_max div sf_star_count
for (var i=0; i<sf_star_count; i++) {
    surface_set_target(sf_star[i])
    draw_clear_alpha(c_white, 0)
    for (var j=0; j<_star_n; j++) {
        var star = stars[j + _star_n*i]
        draw_point(star[0], star[1])
    }
    surface_reset_target()

}


