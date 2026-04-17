tag @a[team=DeathSwap] add DeathSwap.Unswapped
tag @a remove DeathSwap.NoPos
scoreboard objectives add DeathSwap.X dummy
scoreboard objectives add DeathSwap.Y dummy
scoreboard objectives add DeathSwap.Z dummy
execute as @a[team=DeathSwap] run function deathswap:getpos
function deathswap:getnotteleported
scoreboard objectives remove DeathSwap.X
scoreboard objectives remove DeathSwap.Y
scoreboard objectives remove DeathSwap.Z
