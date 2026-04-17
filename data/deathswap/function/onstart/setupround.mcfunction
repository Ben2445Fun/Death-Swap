# Put all tributes on team and remove tribute option
    team join DeathSwap @a[scores={DeathSwap.Join = 1..}]
    scoreboard objectives remove DeathSwap.Join

# Set team settings
    function deathswap:onstart/teamsettings

# Change pearl settings
    function deathswap:onstart/pearlsettings

# Store config items to be used in functions
    execute store result storage deathswap:data distancemin long 1 run scoreboard players get DeathSwap.MinDistance DeathSwap
    execute store result storage deathswap:data distancemax long 1 run scoreboard players get DeathSwap.MaxDistance DeathSwap
    execute store result storage deathswap:data timemin int 1 run scoreboard players get DeathSwap.Min DeathSwap
    execute store result storage deathswap:data timemax int 1 run scoreboard players get DeathSwap.Max DeathSwap

# Create Death Counter
    scoreboard objectives add DeathSwap.Deaths deathCount

# "Reset" world for game
    kill @e[distance=0.., type=item]
    clear @a[team=DeathSwap]
    effect give @a[team=DeathSwap] regeneration 5 20
    effect give @a[team=DeathSwap] saturation 5 20

# Create bossbar for counting
    bossbar add deathswap {text: "Players Remaining: ", color: gray}
    bossbar set deathswap color red
    bossbar set deathswap players @a

# Count number of players
    function deathswap:runtime/playersremaining

# Start Round
    function deathswap:onstart/spreadplayers with storage deathswap:data
    function deathswap:runtime/randomizetime with storage deathswap:data
    execute as @a[team=DeathSwap] at @s run function deathswap:onstart/startround
