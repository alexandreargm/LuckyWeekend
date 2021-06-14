# message first time they join the event
tellraw @a[tag=lw_luck_cleared] ["",{"text":"Evento ","color":"gold"},{"text":"[Suerte del fin de semana]","color":"green","hoverEvent":{"action":"show_text","contents":"Recibes el efecto [Suerte IV] que mejora la suerte al pescar y al abrir cofres del mundo."}},{"text":" activo!","color":"gold"}]

# reset clear_luck tag
execute as @a[tag=lw_luck_cleared] run tag @s remove lw_luck_cleared


#  give to all currently online players
## effect
effect give @a minecraft:luck 43200 3 true

# first join
## effect
effect give @a[tag=!lw_first_join] minecraft:luck 43200 3 true

## mark as already joined
execute as @a[tag=!lw_first_join] run tag @s add lw_first_join


# re-joined
## effect
effect give @e[type=minecraft:player, scores={lw_quits=1}] minecraft:luck 43200 3 true

## reset scoreboard count
scoreboard players set @a[scores={lw_quits=1}] lw_quits 0


# died
## effect
effect give @e[type=minecraft:player, scores={lw_deaths=1}] minecraft:luck 43200 3 true

## reset scoreboard count
scoreboard players set @e[scores={lw_deaths=1}] lw_deaths 0