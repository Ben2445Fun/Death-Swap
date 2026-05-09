$execute store result score DeathSwap.TimeUnknown DeathSwap run random value 0..$(timemax)
bossbar set deathswap name [{text: "Players Remaining: ", color: gray}, {score: {name: "DeathSwap.Players", objective: "DeathSwap"}, color: red, bold: true},{text: " | Next Swap in ??? seconds", color: gray}]
execute store result bossbar deathswap value run scoreboard players get DeathSwap.TimeUnknown DeathSwap
