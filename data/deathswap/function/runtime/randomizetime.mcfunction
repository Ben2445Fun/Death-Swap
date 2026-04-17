# Store random amount of time between swaps
    $execute store result score DeathSwap.Time DeathSwap run random value $(timemin)..$(timemax)
    execute store result storage deathswap:data time int 1 run scoreboard players get DeathSwap.Time DeathSwap
    execute store result bossbar deathswap max run scoreboard players get DeathSwap.Time DeathSwap

# Call a function to call the swap function after the time decided above
    function deathswap:runtime/scheduleswap with storage deathswap:data
