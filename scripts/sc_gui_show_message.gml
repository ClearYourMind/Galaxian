/// sc_gui_show_message(str, appear_delay, disappear_delay)

var _delay = 0 
var _disappear_delay = 60

if argument_count > 1
    _delay = argument[1]
    
if argument_count > 2
    _disappear_delay = argument[2]

with ob_gui {
    str_message = argument[0]
    if _delay > 0 {
        alarm[0] = _delay
        message_visible = false
    } else
        message_visible = true

    alarm[1] = _delay + _disappear_delay
}

