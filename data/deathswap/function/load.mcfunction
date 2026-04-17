team add DeathSwap
team modify DeathSwap seeFriendlyInvisibles false
scoreboard objectives add DeathSwap dummy
scoreboard objectives add DeathSwap.PearlAge dummy
scoreboard objectives add DeathSwap.Join trigger
execute unless score DeathSwap.Min DeathSwap matches 0.. run function deathswap:firsttimesetup
