scoreboard players operation DeathSwap.Time DeathSwap = DeathSwap.Max DeathSwap
scoreboard players operation DeathSwap.Time DeathSwap *= #DeathSwap.2 DeathSwap
execute store result storage deathswap:data time int 1 run scoreboard players get DeathSwap.Time DeathSwap
execute store result bossbar deathswap max run scoreboard players get DeathSwap.Time DeathSwap

# Call a function to call the swap function after the time decided above
    function deathswap:runtime/scheduleswap with storage deathswap:data
