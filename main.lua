local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Scripts do Darkz - v1", HidePremium = false, SaveConfig = false, ConfigFolder = "Config"})
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
-- Raise a Floppa 1
local TabRAF1 = Window:MakeTab({
	Name = "Raise a Floppa 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TabRAF1Backrooms = TabRAF1:AddSection({
	Name = "Backrooms"
})

local TabRAF1Floppa = TabRAF1:AddSection({
	Name = "Floppa"
})



TabRAF1Floppa:AddButton({
	Name = "Pet Floppa",
	Callback = function()
		local OriginalCFrame = Character:WaitForChild("HumanoidRootPart").CFrame
        local loopTP = true

        task.spawn(function()
    while task.wait() and loopTP == true do
      		Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Floppa.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
            --workspace.CurrentCamera.CFrame = workspace.Floppa.HumanoidRootPart.CFrame
         end
    end)
         task.wait(0.5)
                                   keypress("E")
                                   task.wait(1.4)
                                   keyrelease("E")
loopTP = false
		repeat task.wait() until Character:FindFirstChildOfClass("Humanoid").WalkSpeed > 0
		Character:WaitForChild("HumanoidRootPart").CFrame = OriginalCFrame
  	end    
})

TabRAF1Floppa:AddButton({
	Name = "TP Floppa",
	Callback = function()
      		Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Floppa.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
  	end    
})

TabRAF1Backrooms:AddButton({
	Name = "Abrir the_darkweb",
	Callback = function()
		Player.PlayerGui["Backrooms Shop"].Frame.Visible = true
      end    
})




local TabRAF2 = Window:MakeTab({
	Name = "Raise a Floppa 2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TabRAF2Backrooms = TabRAF2:AddSection({
	Name = "Backrooms"
})

local TabRAF2Floppa = TabRAF2:AddSection({
	Name = "Floppa"
})


TabRAF2Floppa:AddButton({
	Name = "Pet Floppa",
	Callback = function()
		local OriginalCFrame = Character:WaitForChild("HumanoidRootPart").CFrame
        local loopTP = true

        task.spawn(function()
    while task.wait() and loopTP == true do
      		Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Floppa.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
            --workspace.CurrentCamera.CFrame = workspace.Floppa.HumanoidRootPart.CFrame
         end
    end)
         task.wait(0.5)
                                   keypress("E")
                                   task.wait(1.4)
                                   keyrelease("E")
loopTP = false
		repeat task.wait() until Character:FindFirstChildOfClass("Humanoid").WalkSpeed > 0
		Character:WaitForChild("HumanoidRootPart").CFrame = OriginalCFrame
  	end    
})

TabRAF2Floppa:AddButton({
	Name = "TP Floppa",
	Callback = function()
      		Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Floppa.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
  	end    
})

TabRAF2Backrooms:AddButton({
	Name = "Coletar - Água de Amendoa",
	Callback = function()
OrionLib:MakeNotification({
	Name = "Notificação",
	Content = "Por-favor aguarde, coletando Água de Amendoa.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
            for i = 0, 4 do
                      		Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(559.618774, -1216.10034, -79.0163116, 0.517561734, 7.25531422e-08, -0.855645895, -2.21851533e-08, 1, 7.1374096e-08, 0.855645895, -1.79578663e-08, 0.517561734)
                            workspace.CurrentCamera.CFrame = CFrame.new(554.48053, -1207.37708, -74.8082047, 0.633606553, 0.569509923, -0.523642361, 0, 0.676841855, 0.736128569, 0.773655534, -0.466415882, 0.428851366)
                            task.wait(0.5)
                            keypress("E")
                            task.wait(1.4)
                            keyrelease("E")
                            wait(0.6)
            end
            Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1176.09265, -1216.35034, -27.8811455, -0.18662633, 3.33773862e-08, 0.982430995, -4.38096883e-08, 1, -4.22965378e-08, -0.982430995, -5.09336431e-08, -0.18662633)
             workspace.CurrentCamera.CFrame = CFrame.new(554.48053, -1207.37708, -74.8082047, 0.633606553, 0.569509923, -0.523642361, 0, 0.676841855, 0.736128569, 0.773655534, -0.466415882, 0.428851366)
                            wait(0.5)
                            keypress("E")
                            wait(1.4)
                            keyrelease("E")
      end    
})


-- Etc Tab
local TabEtc = Window:MakeTab({
	Name = "Etc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TabEtcAdmin = TabEtc:AddSection({
	Name = "Admin"
})

local TabEtcUI = TabEtc:AddSection({
	Name = "UI"
})

local TabEtcDebug = TabEtc:AddSection({
	Name = "Debug"
})

TabEtcDebug:AddButton({
	Name = "Copiar Posição do Personagem",
	Callback = function()
        setclipboard(Character:WaitForChild("HumanoidRootPart").Position)
  	end    
})

TabEtcAdmin:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

TabEtcUI:AddButton({
	Name = "Destruir UI",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

OrionLib:Init()

OrionLib:MakeNotification({
	Name = "Notificação",
	Content = "Bem-vindo, " .. Player.DisplayName .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
