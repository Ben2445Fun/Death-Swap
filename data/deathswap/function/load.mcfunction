# Create team and modify settings
    team add DeathSwap
    team modify DeathSwap seeFriendlyInvisibles false

# Create scoreboard objective for configuration
    scoreboard objectives add DeathSwap dummy
    scoreboard players set #DeathSwap.2 DeathSwap 2

# First time setup
    execute unless score DeathSwap.Min DeathSwap matches 0.. run function deathswap:firsttimesetup

gamerule immediate_respawn true
