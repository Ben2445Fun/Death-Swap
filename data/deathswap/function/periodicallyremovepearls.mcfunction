schedule function deathswap:periodicallyremovepearls 1t replace
execute as @e[distance=0.., type=ender_pearl] run scoreboard players add @s DeathSwap.PearlAge 1
execute as @e[distance=0.., scores={DeathSwap.PearlAge = 88..}, type=ender_pearl] run kill @s
