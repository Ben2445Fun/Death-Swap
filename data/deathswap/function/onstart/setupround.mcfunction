# Test if there's at least 2 players
    execute store result score DeathSwap.Players DeathSwap if entity @a[scores={DeathSwap.Join = 1..}]
    execute if score DeathSwap.Players DeathSwap matches ..1 run return run function deathswap:onstart/notenoughplayers

# Create team (deletes on end so no players are leftover if they leave midround)
    team add DeathSwap
    team modify DeathSwap seeFriendlyInvisibles false

# Put all tributes on team and remove tribute option
    team join DeathSwap @a[scores={DeathSwap.Join = 1..}]
    scoreboard objectives remove DeathSwap.Join
    gamemode spectator @a[team=!DeathSwap]
    gamemode survival @a[team=DeathSwap]
    clear @a[gamemode=survival]
    xp set @a 0
    effect give @a[team=DeathSwap] regeneration 5 20
    effect give @a[team=DeathSwap] saturation 5 20

# Clear advancements if enabled
    execute if score DeathSwap.Advancements DeathSwap matches 1 run advancement revoke @a everything

# Set team settings
    function deathswap:onstart/teamsettings

# Change pearl settings
    function deathswap:onstart/pearlsettings

# Store config items to be used in functions
    execute store result storage deathswap:data distancemin long 1 run scoreboard players get DeathSwap.MinDistance DeathSwap
    execute store result storage deathswap:data distancemax long 1 run scoreboard players get DeathSwap.MaxDistance DeathSwap
    execute store result storage deathswap:data timemin int 1 run scoreboard players get DeathSwap.MinTime DeathSwap
    execute store result storage deathswap:data timemax int 1 run scoreboard players get DeathSwap.MaxTime DeathSwap

# Create Death Counter
    scoreboard objectives add DeathSwap.Deaths deathCount

# "Reset" world for game
    kill @e[distance=0.., type=item]
    gamerule locator_bar false
    gamerule immediate_respawn true
    time set 0
    worldborder set 30000000
    defaultgamemode spectator

# Create bossbar for counting
    bossbar add deathswap {text: "PLACEHOLDER"}
    bossbar set deathswap color red
    bossbar set deathswap players @a

# Count number of players
    execute store result score DeathSwap.Players DeathSwap if entity @a[team=DeathSwap]

# Start Round
    function deathswap:onstart/spreadplayers with storage deathswap:data
    function deathswap:onstart/gracesettings
    title @a title {text: "DEATH SWAP", color: "dark_gray", bold: true}
    title @a[team=DeathSwap] subtitle {text: "BE THE LAST ONE STANDING"}
    function deathswap:onstart/informsettings with storage deathswap:data
    execute as @a[team=DeathSwap] at @s run playsound entity.ender_dragon.growl ui @s ~ ~ ~ 1 1
    function deathswap:runtime/infobar
