function FocusAndMaximizeApp(appName)
    hs.application.launchOrFocus(appName)
    -- local app = hs.appfinder.appFromName(appName)
    -- for _, window in pairs(app:allWindows()) do
    --     window:maximize()
    -- end
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

function CreateMehShortcut(appName, letters)
    for _, letter in ipairs(letters) do
        hs.hotkey.bind({ "shift", "alt", "ctrl" }, letter, 
            function() 
                FocusAndMaximizeApp(appName) 
            end
        )
    end
end

hs.hotkey.bind({ "shift", "alt", "ctrl" }, "ESCAPE", function()
    CycleWindows()
end)

CreateMehShortcut("Alacritty", { "A" })
CreateMehShortcut("Fork", { "F" })
CreateMehShortcut("Google Chrome", { "G" })
CreateMehShortcut("Inkdrop", { "I" })
CreateMehShortcut("Messages", { "M" })
CreateMehShortcut("Microsoft Teams", { "W"})
CreateMehShortcut("Postman", { "P" })
CreateMehShortcut("Spotify", { "S" })
CreateMehShortcut("Studio 3T", { "D" }) -- D for database
CreateMehShortcut("Todoist", { "T" })
CreateMehShortcut("Visual Studio Code", { "V" })
CreateMehShortcut("Logos", { "L" })
-- CreateMehShortcut("Xcode", { "X" })
