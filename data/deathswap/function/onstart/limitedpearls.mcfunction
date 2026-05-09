scoreboard objectives add DeathSwap.PearlAge dummy
data merge storage deathswap:data {pearlstext: "removed after 4 seconds", pearlscolor: yellow}
function deathswap:runtime/periodicallyremovepearls
