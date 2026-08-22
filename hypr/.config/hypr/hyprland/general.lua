require("hyprland.variables")
require("hyprland.on_boot")

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1.25
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@120",
    -- position = "",
    scale = 1
})


hl.on("hyprland.start", Startup_Apps())
