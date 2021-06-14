# Initialize scoreboard

## settings
### init datpack is enabled option
scoreboard objectives add lw_enabled dummy
scoreboard players set #luckyWeekend lw_enabled 0

## giving effect
### re-joined
scoreboard objectives add lw_quits minecraft.custom:leave_game

### died
scoreboard objectives add lw_deaths deathCount


# Send loaded msg
tellraw @a {"text": "Suerte del finde cargado!", "color": "#32F035"}
