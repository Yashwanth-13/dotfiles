require("hyprland.variables")
require("hyprland.on_boot")

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1.25
})


hl.on("hyprland.start", startup_apps())
