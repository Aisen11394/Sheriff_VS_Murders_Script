local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Sheriff VS Murder", "Default")

local tab = DrRayLibrary.newTab("Main", "6957914583")

tab.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)

tab.newToggle("Toggle", "Off/On ESP", true, function(toggleState)
    if toggleState then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Aisen11394/ESP/main/ON.lua"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Aisen11394/ESPP/main/.lua"))()
    else
        print('A')
    end
end)

tab.newInput("Input", "Change Walkspeed", function(text)
        game:GetService("RunService").RenderStepped:wait()
while task.wait() do
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = text
        end
end)

tab.newInput("Input", "Change JumpPower", function(text)
        game:GetService("RunService").RenderStepped:wait()
while task.wait() do
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = text
        end
end)

tab.newKeybind("Input Key", "Soon", function(key)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = key
end)

tab.newSlider("Slider", "???", 150, false, function(num)
game:GetService("RunService").RenderStepped:wait()
while task.wait() do
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
        end
end)
