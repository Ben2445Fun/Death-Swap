scoreboard objectives add DeathSwap.Deaths deathCount
team join DeathSwap @a[scores={DeathSwap.Join = 1..}]
execute if score DeathSwap.PVP DeathSwap matches 0 run team modify DeathSwap friendlyFire false
execute if score DeathSwap.PVP DeathSwap matches 1 run team modify DeathSwap friendlyFire true
execute if score DeathSwap.Pearls DeathSwap matches 0 run function deathswap:removeallpearls
execute if score DeathSwap.Pearls DeathSwap matches 1 run function deathswap:periodicallyremovepearls
execute store result storage deathswap:data distancemin long 1 run scoreboard players get DeathSwap.MinDistance DeathSwap
execute store result storage deathswap:data distancemax long 1 run scoreboard players get DeathSwap.MaxDistance DeathSwap
execute store result storage deathswap:data timemin int 1 run scoreboard players get DeathSwap.Min DeathSwap
execute store result storage deathswap:data timemax int 1 run scoreboard players get DeathSwap.Max DeathSwap
execute if score DeathSwap.PVP DeathSwap matches 0 run data merge storage deathswap:data {pvptext: "False", pvpcolor: red}
execute if score DeathSwap.PVP DeathSwap matches 1 run data merge storage deathswap:data {pvptext: "True", pvpcolor: green}
execute if score DeathSwap.Pearls DeathSwap matches 0 run data merge storage deathswap:data {pearlstext: "Disallowed", pearlscolor: red}
execute if score DeathSwap.Pearls DeathSwap matches 1 run data merge storage deathswap:data {pearlstext: "Short Lives", pearlscolor: yellow}
execute if score DeathSwap.Pearls DeathSwap matches 2 run data merge storage deathswap:data {pearlstext: "Allowed", pearlscolor: green}
scoreboard players reset @a DeathSwap.Join
kill @e[distance=0.., type=item]
clear @a[team=DeathSwap]
effect give @a[team=DeathSwap] regeneration 5 20
effect give @a[team=DeathSwap] saturation 5 20
function deathswap:spreadplayers with storage deathswap:data
function deathswap:randomizetime with storage deathswap:data
execute as @a[team=DeathSwap] at @s run function deathswap:info
