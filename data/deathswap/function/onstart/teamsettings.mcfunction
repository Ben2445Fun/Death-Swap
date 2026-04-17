execute if score DeathSwap.PVP DeathSwap matches 0 run return run function deathswap:onstart/pvpdisallowed
team modify DeathSwap friendlyFire true
data merge storage deathswap:data {pvptext: "True", pvpcolor: green}
