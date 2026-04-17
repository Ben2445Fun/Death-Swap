# Decrease timer
    scoreboard players remove DeathSwap.Time DeathSwap 1

# Find if anyone died
    execute as @a[scores={DeathSwap.Deaths=1..}, team=DeathSwap] run function deathswap:runtime/killed

# Call actionbar
    execute as @a run function deathswap:runtime/actionbar with storage deathswap:data
