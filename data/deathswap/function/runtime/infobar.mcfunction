# Schedule info to run again
    schedule function deathswap:runtime/infobar 1s replace

# Remove time from timer
    scoreboard players remove DeathSwap.Time DeathSwap 1

# Search for killed players
    execute as @a[scores={DeathSwap.Deaths=1..}, team=DeathSwap] run function deathswap:runtime/killed

# Update bossbar
    execute store result bossbar deathswap value run scoreboard players get DeathSwap.Time DeathSwap
    execute if score DeathSwap.Timer DeathSwap matches 0 run return run function deathswap:runtime/notimer with storage deathswap:data
    execute if score DeathSwap.Timer DeathSwap matches 1 run return run function deathswap:runtime/vaguetimer
    bossbar set deathswap name [{text: "Players Remaining: ", color: gray}, {score: {name: "DeathSwap.Players", objective: "DeathSwap"}, color: red, bold: true},{text: " | Next Swap in ", color: gray},{score: {name: "DeathSwap.Time", objective: "DeathSwap"}},{text: " seconds"}]
