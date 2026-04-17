execute if score DeathSwap.Pearls DeathSwap matches 0 run return run function deathswap:onstart/nopearls
execute if score DeathSwap.Pearls DeathSwap matches 1 run return run function deathswap:onstart/limitedpearls
data merge storage deathswap:data {pearlstext: "Allowed", pearlscolor: green}
