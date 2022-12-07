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
    local firstWindow = all[1]
    print(firstWindow:id())
    local nextWindow = nil
    for i, window in pairs(all) do
        if window:id() == win:id() then
            local next = (i % #all) + 1
            nextWindow = all[next]
            break
        end
    end
    nextWindow:focus()
end

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "ESCAPE", function()
    CycleWindows()
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "F", function()
    FocusAndMaximizeApp("Fork")
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

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "C", function()
    FocusAndMaximizeApp("Visual Studio Code")
end)

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "D", function()
    FocusAndMaximizeApp("Dictionary")
end)