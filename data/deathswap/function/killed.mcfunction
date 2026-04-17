team leave @s
tag @s remove DeathSwap.NoPos
tag @s remove DeathSwap.Swap
tag @s remove DeathSwap.SwapPos
tag @s remove DeathSwap.Unswapped
scoreboard players reset @s DeathSwap.Deaths
tellraw @a [{selector: "@s", color: red}, {text: " has been eliminated!", color: white}]
execute store result score DeathSwap.Players DeathSwap if entity @a[team=DeathSwap]
execute if score DeathSwap.Players DeathSwap matches 1 as @p[team=DeathSwap] run function deathswap:end
