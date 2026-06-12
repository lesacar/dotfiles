---@module 'hl'

-- monitor = name, resolution@hz, position, scale
--[[
hl.monitor({
    output   = "e-DP1",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.config({
    monitorv2 = {
        output = "HDMI-A-1",
        mode = "1920x1080@120",
        position = "auto",
        scale = 1,
        transform = 0,
    },
})
--]]

hl.monitor({
    output   = "e-DP1",
    mode     = "1920x1080@60",
    position = "auto",
    scale    = 1.5,
    transform = 0,
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@120",
    position = "auto",
    scale    = 1,
    transform = 0,
})

--##################

--## MY PROGRAMS ###

--##################

-- See https://wiki.hypr.land/Configuring/Keywords/

-- Set programs that you use

local terminal = "kitty"

local browser = "brave"

local fileManager = "pcmanfm"

-- both go to clipboard
local select_screenshot = "boomer"
local full_screenshot = "screenshot"

-- other launchers take too much ram
local app_launcher = "wofi --show drun"

hl.env("XCURSOR_SIZE", 24)

hl.env("HYPRCURSOR_SIZE", 24)


-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly

hl.permission({ binary = "/usr/bin/grim", type = "screencopy", mode = "allow" })


hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 3,
        border_size = 2,

        col = {
            active_border = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

       resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },
})

hl.config({
    decoration = {
        rounding = 10,
        rounding_power = 2,
        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = false,
        },

        blur = {
            enabled = false,
        },
    },
})

hl.config({
    animations = {
        enabled = false,
    },
})


-- See https://wiki.hypr.land/Configuring/Dwindle-Layout/ for more

hl.config({
    dwindle = {
        -- You probably want this
        preserve_split = true,
    },
})

-- See https://wiki.hypr.land/Configuring/Master-Layout/ for more

hl.config({
    master = {
        new_status = "master",
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#misc

hl.config({
    misc = {
        -- remove cringe
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        disable_splash_rendering = true,

        background_color = "0x000000",
        enable_swallow = true,
        enable_anr_dialog = false,
    },
})

hl.config({
    input = {
        kb_options = "caps:swapescape", "compose:ralt",
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = 0,
        -- -1.0 - 1.0, 0 means no modification.
        accel_profile = "flat",
        -- no mouse acceleration
        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.5,
            -- stop accidental line changes in neovim
            disable_while_typing = true,
        },
    },
})

hl.device({
        name = "logitech-g305-1",
        accel_profile = "flat",
        sensitivity = -0.5,
})

-- See https://wiki.hypr.land/Configuring/Keywords/

local mainMod = "SUPER"

-- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more

hl.bind("Print", hl.dsp.exec_cmd(select_screenshot))
hl.bind(mainMod .. " + " .. "Print", hl.dsp.exec_cmd(full_screenshot))

hl.bind(mainMod .. " + " .. "Return", hl.dsp.exec_cmd(terminal))

hl.bind(mainMod .. " + " .. "W", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + " .. "N", hl.dsp.exec_cmd("hyprctl hyprsunset temperature 2500"))

hl.bind(mainMod .. " + SHIFT + " .. "N", hl.dsp.exec_cmd("hyprctl hyprsunset identity"))

hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close())

hl.bind(mainMod .. " + SHIFT + "  .. "F", hl.dsp.window.fullscreen({ mode = "fullscreen"}))

hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen({ mode = "maximized" }))

hl.bind(mainMod .. " + SHIFT + "  .. "M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch \"hl.dsp.exit()\""))

hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd(fileManager))

hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())

hl.bind(mainMod .. " + " .. "S", hl.dsp.exec_cmd(app_launcher))

hl.bind(mainMod .. " + " .. "P", hl.dsp.window.pin())

hl.bind("SUPER" .. " + " .. "J", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + " .. "up", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + " .. "down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]

hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))

hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))

hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))

hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))

hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))

hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))

hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))

hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))

hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))

hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1}))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)

-- bind = $mainMod, R, togglespecialworkspace, magic

-- bind = $mainMod SHIFT, R, movetoworkspace, special:magic

-- Move/resize windows with mainMod + LMB/RMB and dragging

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

-- https://www.reddit.com/r/hyprland/comments/11c2lie/how_to_moveresize_windows_with_only_the_keyboard/

hl.bind(mainMod .. " + " .. "R", hl.dsp.submap("resize"))

hl.define_submap("resize", function()
    hl.bind("right", hl.dsp.window.resize({ x = 25, y = 0, relative = true }))
    hl.bind("left", hl.dsp.window.resize({ x = -25, y = 0, relative = true }))
    hl.bind("up", hl.dsp.window.resize({ x = 0, y = -25, relative = true }))
    hl.bind("down", hl.dsp.window.resize({ x = 0, y = 25, relative = true }))

    hl.bind("Return", hl.dsp.submap("reset"))
    hl.bind("Escape", hl.dsp.submap("reset"))
    hl.bind("R", hl.dsp.submap("reset"))

    -- doesn't work since lua update
    -- hl.bind(mainMod .. " + " .. "R", hl.dsp.submap("reset"))
end)

-- Laptop multimedia keys for volume and LCD brightness

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true })

-- Requires playerctl

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

--#############################

--## WINDOWS AND WORKSPACES ###

--#############################

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more

-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrules that are useful

hl.window_rule({
    name  = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- Hyprland-run windowrule

hl.window_rule({
    name  = "move-hyprland-run",
    match = {
        class = "hyprland-run",
    },
    move = { 20, "monitor_h-120" },
})

hl.config({
    xwayland = {
        enabled = true,
        force_zero_scaling = true,
    },
})

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("kanshi")
    hl.exec_cmd("hyprnotify -s")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprsunset")
end)
