# Clear Chat
    tellraw @s {text: "\n\n\n\n\n\n\n\n\n"}

# Title Bar
    tellraw @s {text: "■▬▬▬▬▬▬▬▬ Death Swap Configuration ▬▬▬▬▬▬▬▬■", bold: true, color: dark_gray}

# PVP Allowed
    execute if score DeathSwap.PVP DeathSwap matches 0 run tellraw @s [{text: "PVP: [", color: dark_gray}, {text: "Off", color: red, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/enablepvp"}, hover_event: {action: "show_text", value: "Whether or not players can directly attack each other"}}, {text: "]", color: dark_gray, bold: false}]
    execute if score DeathSwap.PVP DeathSwap matches 1 run tellraw @s [{text: "PVP: [", color: dark_gray}, {text: "On", color: green, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/disablepvp"}, hover_event: {action: "show_text", value: "Whether or not players can directly attack each other"}}, {text: "]", color: dark_gray, bold: false}]

# Enderpearls
    execute if score DeathSwap.Pearls DeathSwap matches 0 run tellraw @s [{text: "Enderpearls: [", color: dark_gray}, {text: "Off", color: red, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/pearlage"}, hover_event: {action: "show_text", value: "If ender pearls should be allowed. Short life removes an ender pearl after 4.4 seconds"}}, {text: "]", color: dark_gray, bold: false}]
    execute if score DeathSwap.Pearls DeathSwap matches 1 run tellraw @s [{text: "Enderpearls: [", color: dark_gray}, {text: "Short Life", color: yellow, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/pearlon"}, hover_event: {action: "show_text", value: "If ender pearls should be allowed. Short life removes an ender pearl after 4.4 seconds"}}, {text: "]", color: dark_gray, bold: false}]
    execute if score DeathSwap.Pearls DeathSwap matches 2 run tellraw @s [{text: "Enderpearls: [", color: dark_gray}, {text: "On", color: green, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/pearloff"}, hover_event: {action: "show_text", value: "If ender pearls should be allowed. Short life removes an ender pearl after 4.4 seconds"}}, {text: "]", color: dark_gray, bold: false}]

# Reset Advancements
    execute if score DeathSwap.Advancements DeathSwap matches 0 run tellraw @s [{text: "Reset Advancements: [", color: dark_gray}, {text: "False", color: red, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/resetadvancements"}, hover_event: {action: "show_text", value: "If all advancements should be removed before a round starts"}}, {text: "]", color: dark_gray, bold: false}]
    execute if score DeathSwap.Advancements DeathSwap matches 1 run tellraw @s [{text: "Reset Advancements: [", color: dark_gray}, {text: "True", color: green, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/dontresetadvancements"}, hover_event: {action: "show_text", value: "If all advancements should be removed before a round starts"}}, {text: "]", color: dark_gray, bold: false}]

# Grace Period
    execute if score DeathSwap.Grace DeathSwap matches 0 run tellraw @s [{text: "Grace Period: [", color: "dark_gray"}, {text: "False", color: red, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/enablegrace"}, hover_event: {action: "show_text", value: "When enabled, first timer will take twice as long as maximum time between swaps"}}, {text: "]", color: "dark_gray", bold: false}]
    execute if score DeathSwap.Grace DeathSwap matches 1 run tellraw @s [{text: "Grace Period: [", color: "dark_gray"}, {text: "True", color: green, bold: true, click_event: {action: "run_command", command: "/function deathswap:config/disablegrace"}, hover_event: {action: "show_text", value: "When enabled, first timer will take twice as long as maximum time between swaps"}}, {text: "]", color: "dark_gray", bold: false}]


tellraw @s {text: ""}

# Timings
    tellraw @s {text: "Time Between Swaps:", color: dark_gray}
    tellraw @s [{text: "    Minimum:  [", color: dark_gray}, {score: {name: "DeathSwap.Min", objective: "DeathSwap"}, color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmin {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The shortest amount of time a swap can occur"}}, {text: " seconds", color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmin {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The shortest amount of time a swap can occur"}}, {text: "]", color: dark_gray, bold: false}]
    tellraw @s [{text: "    Maximum: [", color: dark_gray}, {score: {name: "DeathSwap.Max", objective: "DeathSwap"}, color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmax {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The longest amount of time a swap can occur"}}, {text: " seconds", color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmax {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The longest amount of time a swap can occur"}}, {text: "]", color: dark_gray, bold: false}]

tellraw @s {text: ""}

# Spread Distance
    tellraw @s [{text: "Minimum Distance Between Players: [", color: dark_gray}, {score: {name: "DeathSwap.MinDistance", objective: "DeathSwap"}, color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmindistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The minimum number of blocks between players"}}, {text: " Blocks", color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmindistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The minimum number of blocks between players"}}, {text: "]", color: dark_gray}]
    tellraw @s [{text: "Maximum Spread Distance: [", color: dark_gray}, {score: {name: "DeathSwap.MaxDistance", objective: "DeathSwap"}, color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxdistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The maximum distance from 0 0 players will be teleported to"}}, {text: " Blocks", color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxdistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The maximum distance from 0 0 players will be teleported to"}}, {text: "]", color: dark_gray}]

tellraw @s {text: ""}

# Update
    tellraw @s {text: "Update Datapack", bold: true, color: green, click_event: {action: "run_command", command: "/function deathswap:backup"}}

# Uninstall
    tellraw @s {text: "Uninstall Datapack", bold: true, color: red, hover_event: {action: "show_text", value: {text: "!! WARNING !! This is irriversible!", color: red}}, click_event: {action: "run_command", command: "/function deathswap:uninstall"}}

# Bottom
    tellraw @s {text: "■▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬■", color: dark_gray, bold: true}
