/// sc_init_stage()

stage_max_attack = floor(2 + stage * 0.125)
stage_min_pause = 50  / (1 + stage * 0.05)
stage_max_pause = 200 / (1 + stage * 0.05)

ob_field.alarm[0] = random_range(stage_min_pause, stage_max_pause)

