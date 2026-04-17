# Clear Chat
    tellraw @s {text: "\n\n\n\n\n\n\n\n\n"}

# Title Bar
    tellraw @s {text: "■▬▬▬▬▬▬▬▬ Death Swap Configuration ▬▬▬▬▬▬▬▬■", bold: true, color: dark_gray}

# PVP Allowed
    execute if score DeathSwap.PVP DeathSwap matches 0 run tellraw @s [{text: "PVP: [", color: dark_gray}, {text: "Off", color: red, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/enablepvp"}}, {text: "]", color: dark_gray, bold: false}]
    execute if score DeathSwap.PVP DeathSwap matches 1 run tellraw @s [{text: "PVP: [", color: dark_gray}, {text: "On", color: green, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/disablepvp"}}, {text: "]", color: dark_gray, bold: false}]

# Enderpearls
    execute if score DeathSwap.Pearls DeathSwap matches 0 run tellraw @s [{text: "Enderpearls: [", color: dark_gray}, {text: "Off", color: red, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/pearlage"}}, {text: "]", color: dark_gray, bold: false}]
    execute if score DeathSwap.Pearls DeathSwap matches 1 run tellraw @s [{text: "Enderpearls: [", color: dark_gray}, {text: "Remove After Time", color: yellow, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/pearlon"}}, {text: "]", color: dark_gray, bold: false}]
    execute if score DeathSwap.Pearls DeathSwap matches 2 run tellraw @s [{text: "Enderpearls: [", color: dark_gray}, {text: "On", color: green, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/pearloff"}}, {text: "]", color: dark_gray, bold: false}]

tellraw @s {text: ""}

# Timings
    tellraw @s {text: "Time Between Swaps:", color: dark_gray}
    tellraw @s [{text: "    Minimum:  [", color: dark_gray}, {score: {name: "DeathSwap.Min", objective: "DeathSwap"}, color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmin {time: TIME_IN_SECONDS}"}}, {text: " seconds", color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmin {time: TIME_IN_SECONDS}"}}, {text: "]", color: dark_gray, bold: false}]
    tellraw @s [{text: "    Maximum: [", color: dark_gray}, {score: {name: "DeathSwap.Max", objective: "DeathSwap"}, color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmax {time: TIME_IN_SECONDS}"}}, {text: " seconds", color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmax {time: TIME_IN_SECONDS}"}}, {text: "]", color: dark_gray, bold: false}]

tellraw @s {text: ""}

# Spread Distance
    tellraw @s [{text: "Minimum Distance Between Players: [", color: dark_gray}, {score: {name: "DeathSwap.MinDistance", objective: "DeathSwap"}, color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmindistance {distance: NUMBER_OF_BLOCKS}"}}, {text: " Blocks", color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmindistance {distance: NUMBER_OF_BLOCKS}"}}, {text: "]", color: dark_gray}]
    tellraw @s [{text: "Maximum Spread Distance: [", color: dark_gray}, {score: {name: "DeathSwap.MaxDistance", objective: "DeathSwap"}, color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxdistance {distance: NUMBER_OF_BLOCKS}"}}, {text: " Blocks", color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxdistance {distance: NUMBER_OF_BLOCKS}"}}, {text: "]", color: dark_gray}]

tellraw @s {text: ""}

# Update
    tellraw @s {text: "Update Datapack", bold: true, color: green, click_event: {action: "run_command", command: "/function deathswap:backup"}}

# Uninstall
    tellraw @s {text: "Uninstall Datapack", bold: true, color: red, hover_event: {action: "show_text", value: {text: "!! WARNING !! This is irriversible!", color: red}}, click_event: {action: "run_command", command: "/function deathswap:uninstall"}}

# Bottom
    tellraw @s {text: "■▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬■", color: dark_gray, bold: true}
