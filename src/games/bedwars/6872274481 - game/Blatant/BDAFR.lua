
run(function()
    local BDAFR 
    local root = game.Players.LocalPlayer.Character.Head
    local http = cloneref(game:GetService('HttpService'))


    vape
    local args = {
        game:GetService("ReplicatedStorage"):WaitForChild("Inventories"):WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("snowball"), 
        "snowball",
        "meteor_shower",
        root.CFrame.Position,
        root.CFrame.Position,
        Vector3.new(0, 5, 0),
        http:GenerateGUID(false),
        {
            shotId = http:GenerateGUID(false),
            drawDurationSec = 1
        },
        workspace:GetServerTimeNow(),
    }
    game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("ProjectileFire"):InvokeServer(unpack(args))
end
