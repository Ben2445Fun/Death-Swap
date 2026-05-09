# Create scoreboard objective for configuration
    scoreboard objectives add DeathSwap dummy
    scoreboard players set #DeathSwap.2 DeathSwap 2

# Create scoreboard to count wins
    scoreboard objectives add DeathSwap.Wins dummy {text: "Wins", color: gold, bold: true}
    scoreboard objectives setdisplay below_name DeathSwap.Wins
    scoreboard objectives setdisplay list DeathSwap.Wins

# First time setup
    execute unless score DeathSwap.MinTime DeathSwap matches 0.. run function deathswap:firsttimesetup
