function FocusAndMaximizeApp(appName)
    hs.application.launchOrFocus(appName)
    local app = hs.appfinder.appFromName(appName)
    for _, window in pairs(app:allWindows()) do
        window:maximize()
    end
end

function CycleWindows()
    local app = hs.application.frontmostApplication()
    local win = hs.window.focusedWindow()
    local all = app:allWindows()
    if app == nil or win == nil or all == nil then return end
    -- grabs the last window, which become the first window when focused
    local nextWindow = all[#all] 
    nextWindow:focus()
end

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "ESCAPE", function()
    CycleWindows()
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "F", function()
    FocusAndMaximizeApp("Fork")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "P", function()
    FocusAndMaximizeApp("Postman")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "B", function()
    FocusAndMaximizeApp("Logos")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "A", function()
    FocusAndMaximizeApp("Alacritty")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "R", function()
    FocusAndMaximizeApp("Nirvana")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "S", function()
    FocusAndMaximizeApp("Spotify")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "T", function()
    FocusAndMaximizeApp("Microsoft Teams")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "G", function()
    FocusAndMaximizeApp("Google Chrome")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "X", function()
    FocusAndMaximizeApp("Xcode")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "C", function()
    FocusAndMaximizeApp("Visual Studio Code")
end)

-- mnemonic: database
hs.hotkey.bind({ "shift", "alt", "ctrl" }, "D", function()
    FocusAndMaximizeApp("Studio 3T")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "M", function()
    FocusAndMaximizeApp("Messages")
end)