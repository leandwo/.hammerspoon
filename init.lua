function focusAndMaximizeApp(appName)
    hs.application.launchOrFocus(appName)
    local app = hs.appfinder.appFromName(appName)
    for _, window in pairs(app:allWindows()) do
        window:maximize()
    end
end

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "W", function()
    hs.notify.new({ title = "Hammerspoon", informativeText = "Hello World" }):send()
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "A", function()
    focusAndMaximizeApp("Alacritty")
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "R", function()
    focusAndMaximizeApp("Google Chrome")
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "S", function()
    focusAndMaximizeApp("Visual Studio Code")
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "C", function()
    focusAndMaximizeApp("Visual Studio Code")
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "T", function()
    focusAndMaximizeApp("Microsoft Teams")
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "G", function()
    focusAndMaximizeApp("Godot")
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "D", function()
    focusAndMaximizeApp("Discord")
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "F", function()
    focusAndMaximizeApp("Fork")
end)