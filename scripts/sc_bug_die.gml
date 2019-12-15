/// sc_bug_die()

event_perform(ev_other, ev_user0)
instance_destroy()
sc_gui_update()

// check for score (give bonus lives)
if score >= (lives_added + 1) * score_for_live {
    lives_added++
    score_for_live = score_for_live * (lives_added+1)
    lives++
}

// check for wave clear
if instance_number(ob_bug) = 0 
if lives >= 0 and instance_exists(ob_ship) {
    ob_master.alarm[1] = 200
    sc_gui_show_message("STAGE "+string(stage+1), 60, 90)
}

