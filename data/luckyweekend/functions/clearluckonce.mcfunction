# first join after clearluck
## clear effect
effect clear @a[tag=!lw_luck_cleared] minecraft:luck

## message about event end
execute as @a[tag=!lw_luck_cleared] run tellraw @p ["",{"text":"Evento ","color":"blue","hoverEvent":{"action":"show_text","contents":"Recibes el efecto [Suerte IV] que mejora la suerte al pescar y al abrir cofres del mundo."}},{"text":"[Suerte del fin de semana]","color":"green","hoverEvent":{"action":"show_text","contents":"Recibes el efecto [Suerte IV] que mejora la suerte al pescar y al abrir cofres del mundo."}},{"text":" ha terminado.","color":"blue"}]

## mark as cleared
execute as @a[tag=!lw_luck_cleared] run tag @s add lw_luck_cleared