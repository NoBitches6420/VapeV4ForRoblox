
run(function()
    local BDAFR 
    local Option
    local root = game.Players.LocalPlayer.Character.Head
    local http = cloneref(game:GetService('HttpService'))


    BDAFR = vape.Catagories.Blatant:CreateModule({
        Name = "BDAFR"
        Function = function()
            while task.wait() do
                local args = {
                    game:GetService("ReplicatedStorage"):WaitForChild("Inventories"):WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("snowball"), 
                    "snowball",
                    Option,
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
        end,
        ToolTip = "BDAFR exploit v69"
    })
    BDAFR:CreateDropdown({
        Name = "Projectile Mode"
        List = ReplicatedStorage.Assets.Projectiles:GetChildren()
        Function = function(Projectile)
            Option = Projectile
        end,
    })
end
