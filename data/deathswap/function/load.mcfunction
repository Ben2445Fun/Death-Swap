# Create team and modify settings
    team add DeathSwap
    team modify DeathSwap seeFriendlyInvisibles false

# Create scoreboard objective for configuration
    scoreboard objectives add DeathSwap dummy

# First time setup
    execute unless score DeathSwap.Min DeathSwap matches 0.. run function deathswap:firsttimesetup
