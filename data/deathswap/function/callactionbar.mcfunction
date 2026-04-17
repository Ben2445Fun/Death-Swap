scoreboard players remove DeathSwap.Time DeathSwap 1
execute as @a[scores={DeathSwap.Deaths = 1..}] run function deathswap:killed
execute as @a[team=DeathSwap] run function deathswap:actionbar with storage deathswap:data
