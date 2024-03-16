local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Sheriff VS Murder", "Default")

local tab = DrRayLibrary.newTab("Main", "6957914583")

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

tab.newInput("Input", "Change Walkspeed", function(text)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = text
end)

tab.newKeybind("Input Key", "Soon", function(key)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = key
end)

tab.newSlider("Slider", "Change Walkspeed", 150, false, function(num)
game:GetService("RunService").RenderStepped:wait()
while task.wait() do
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = num
     end
end)
