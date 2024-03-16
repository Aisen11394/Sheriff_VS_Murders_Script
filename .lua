local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("DrRay", "Default")

local tab = DrRayLibrary.newTab("Main", "11600511955")

tab.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)

tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)

tab.newInput("Input", "Prints your input.", function(text)
    print("Entered text: " .. text)
end)

tab.newKeybind("Input Key", "Press the key to start; it will be printed out.", function(key)
    print(key)
end)

tab.newSlider("Slider", "Change Walkspeed", 16, 100, false, function(num)
game:GetService("RunService").RenderStepped:wait()
while task.wait() do
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = num
     end
end)
