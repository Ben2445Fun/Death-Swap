execute store result score DeathSwap.Players DeathSwap if entity @a[team=DeathSwap]
bossbar set deathswap name [{text: "Players Remaining: ", color: gray}, {score: {name: "DeathSwap.Players", objective: "DeathSwap"}, color: red, bold: true}]
