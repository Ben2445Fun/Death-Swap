scoreboard players enable @a DeathSwap.Join
tellraw @a [{text: "Death Swap", color: dark_gray, bold: true}, {text: " will begin in 30 seconds! Type ", color: white, bold: false}, {text: "/trigger DeathSwap.Join", color: blue, bold: false, underlined: true, click_event: {action: "run_command", command: "/trigger DeathSwap.Join"}}, {text: " to join!", color: white, bold: false, underlined: false}]
schedule function deathswap:startround 30s replace
