# Clear Chat
    tellraw @s {text: "\n\n\n\n\n\n\n\n\n"}

# Title Bar
    tellraw @s {text: "■▬▬▬▬▬▬▬▬ Death Swap Configuration ▬▬▬▬▬▬▬▬■", bold: true, color: dark_gray}

# PvP Setting
    $tellraw @s [{text: "PVP: [", color: dark_gray}, {text: "$(pvp)", color: $(pvpcolor), bold: true, click_event: {action: "run_command", command: "/function deathswap:$(pvpfunction)"}, hover_event: {action: "show_text", value: "Whether or not players can directly attack each other"}}, {text: "]", color: dark_gray, bold: false}]

# Ender Pearls Setting
    $tellraw @s [{text: "Enderpearls: [", color: dark_gray}, {text: "$(pearl)", color: $(pearlcolor), bold: true, click_event: {action: "run_command", command: "/function deathswap:$(pearlfunction)"}, hover_event: {action: "show_text", value: "If ender pearls should be allowed. Short life removes an ender pearl after 4 seconds"}}, {text: "]", color: dark_gray, bold: false}]

# Advancements Setting
    $tellraw @s [{text: "Reset Advancements: [", color: dark_gray}, {text: "$(advancement)", color: $(advancementcolor), bold: true, click_event: {action: "run_command", command: "/function deathswap:$(advancementfunction)"}, hover_event: {action: "show_text", value: "If all advancements should be removed before a round starts"}}, {text: "]", color: dark_gray, bold: false}]

# Grace Period Setting
    $tellraw @s [{text: "Grace Period: [", color: dark_gray}, {text: "$(grace)", color: $(gracecolor), bold: true, click_event: {action: "run_command", command: "/function deathswap:$(gracefunction)"}, hover_event: {action: "show_text", value: "When enabled, first timer will take twice as long as maximum time between swaps"}}, {text: "]", color: dark_gray, bold: false}]

# Timer Setting
    $tellraw @s [{text: "Timer View: [", color: dark_gray},{text: "$(timer)", color: $(timercolor), bold: true, click_event: {action: "run_command", command: "/function deathswap:$(timerfunction)"}, hover_event: {action: "show_text", value: "How players see how much time is left until the next swap (vague gives < values"}},{text: "]", color: dark_gray, bold: false}]

# Separator
    tellraw @s {text: ""}

# Timings
    tellraw @s {text: "Time Between Swaps:", color: dark_gray}
    tellraw @s [{text: "    Minimum:  [", color: dark_gray}, {score: {name: "DeathSwap.MinTime", objective: "DeathSwap"}, color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmintime {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The shortest amount of time a swap can occur"}}, {text: " seconds", color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmintime {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The shortest amount of time a swap can occur"}}, {text: "]", color: dark_gray, bold: false}]
    tellraw @s [{text: "    Maximum: [", color: dark_gray}, {score: {name: "DeathSwap.MaxTime", objective: "DeathSwap"}, color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxtime {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The longest amount of time a swap can occur"}}, {text: " seconds", color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxtime {time: TIME_IN_SECONDS}"}, hover_event: {action: "show_text", value: "The longest amount of time a swap can occur"}}, {text: "]", color: dark_gray, bold: false}]

tellraw @s {text: ""}

# Spread Distance
    tellraw @s [{text: "Minimum Distance Between Players: [", color: dark_gray}, {score: {name: "DeathSwap.MinDistance", objective: "DeathSwap"}, color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmindistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The minimum number of blocks between players"}}, {text: " Blocks", color: red, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmindistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The minimum number of blocks between players"}}, {text: "]", color: dark_gray}]
    tellraw @s [{text: "Maximum Spread Distance: [", color: dark_gray}, {score: {name: "DeathSwap.MaxDistance", objective: "DeathSwap"}, color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxdistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The maximum distance from 0 0 players will be teleported to"}}, {text: " Blocks", color: green, bold: true, click_event: {action: "suggest_command", command: "/function deathswap:config/setmaxdistance {distance: NUMBER_OF_BLOCKS}"}, hover_event: {action: "show_text", value: "The maximum distance from 0 0 players will be teleported to"}}, {text: "]", color: dark_gray}]

tellraw @s {text: ""}

# Uninstall
    tellraw @s {text: "Uninstall Datapack", bold: true, color: red, hover_event: {action: "show_text", value: {text: "!! WARNING !! This is irriversible!", color: red}}, click_event: {action: "run_command", command: "/function deathswap:uninstall"}}

# Bottom
    tellraw @s {text: "■▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬■", color: dark_gray, bold: true}
