# Give luck if enabled
execute if score #luckyWeekend lw_enabled matches 1 run function luckyweekend:giveluck
execute if score #luckyWeekend lw_enabled matches 0 run function luckyweekend:clearluckonce