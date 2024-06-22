function osprint(message)
	warn("[ Scripts do Darkz ] - " .. message)
end
osprint("Executando...")

-- Global Values
_G.RaiseAFloppaAutoClickFloppa = false
_G.canCheckAutoClickFloppa = true

task.spawn(function()
	while _G.canCheckAutoClickFloppa and task.wait() do
		if _G.RaiseAFloppaAutoClickFloppa then	
			pcall(function()
				fireclickdetector(workspace.Floppa.ClickDetector)
			end)
		end
	end
end)

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/DarkzzXD/scripts_Darkz/main/orionlibrary.lua")))()
local Window = OrionLib:MakeWindow({Name = "Scripts do Darkz", HidePremium = false, SaveConfig = false, ConfigFolder = "Config"})

local TabRAF = Window:MakeTab({
	Name = "Raise a Floppa",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TabRAFBackrooms = TabRAF:AddSection({
	Name = "Backrooms"
})

local TabRAFFloppa = TabRAF:AddSection({
	Name = "Floppa"
})

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

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character

TabRAFFloppa:AddToggle({
	Name = "AutoClick (Meio bugado)",
	Default = false,
	Callback = function(Value)
		_G.RaiseAFloppaAutoClickFloppa = Value
	end    
})

TabRAFFloppa:AddButton({
	Name = "Deletar Fezes | Raise a Floppa 1",
	Callback = function()
  		for i, Poop in workspace:GetChildren() do
			if Poop.Name == "Poop" and Poop:IsA("BasePart") then
				Poop:Destroy()
			end
		end
      end    
})

TabRAFFloppa:AddButton({
	Name = "Colher Dinheiro",
	Callback = function()

local OriginalCFrame = Character:WaitForChild("HumanoidRootPart").CFrame
		for i, Cash in workspace:GetChildren() do
			if Cash.Name == "Money" or Cash.Name == "Money Bag" then
				pcall(function()
					Cash.CFrame = Character.HumanoidRootPart.CFrame
                    Cash.CanCollide = false
                    task.wait()
            	end)
			end
		end
      

      end    
})

TabRAFFloppa:AddButton({
	Name = "Pet Floppa",
	Callback = function()
		local OriginalCFrame = Character.HumanoidRootPart.CFrame
        local loopTP = true

        task.spawn(function()
    while task.wait() and loopTP == true do
      		Character.HumanoidRootPart.CFrame = workspace.Floppa.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
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

TabRAFFloppa:AddButton({
	Name = "TP Floppa",
	Callback = function()
      		Character.HumanoidRootPart.CFrame = workspace.Floppa.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
  	end    
})

TabRAFBackrooms:AddButton({
	Name = "Abrir the_darkweb | Raise a Floppa 1",
	Callback = function()
		Player.PlayerGui["Backrooms Shop"].Frame.Visible = true
      end    
})

TabRAFBackrooms:AddButton({
	Name = "Coletar - Água de Amendoa | Raise a Floppa 2",
	Callback = function()
OrionLib:MakeNotification({
	Name = "Notificação",
	Content = "Por-favor aguarde, coletando Água de Amendoa.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
            for i = 0, 4 do
                      		Character.HumanoidRootPart.CFrame = CFrame.new(559.618774, -1216.10034, -79.0163116, 0.517561734, 7.25531422e-08, -0.855645895, -2.21851533e-08, 1, 7.1374096e-08, 0.855645895, -1.79578663e-08, 0.517561734)
                            workspace.CurrentCamera.CFrame = CFrame.new(554.48053, -1207.37708, -74.8082047, 0.633606553, 0.569509923, -0.523642361, 0, 0.676841855, 0.736128569, 0.773655534, -0.466415882, 0.428851366)
                            task.wait(0.5)
                            keypress("E")
                            task.wait(1.4)
                            keyrelease("E")
                            wait(0.6)
            end
            Character.HumanoidRootPart.CFrame = CFrame.new(1176.09265, -1216.35034, -27.8811455, -0.18662633, 3.33773862e-08, 0.982430995, -4.38096883e-08, 1, -4.22965378e-08, -0.982430995, -5.09336431e-08, -0.18662633)
             workspace.CurrentCamera.CFrame = CFrame.new(554.48053, -1207.37708, -74.8082047, 0.633606553, 0.569509923, -0.523642361, 0, 0.676841855, 0.736128569, 0.773655534, -0.466415882, 0.428851366)
                            wait(0.5)
                            keypress("E")
                            wait(1.4)
                            keyrelease("E")
      end    
})

TabEtcDebug:AddButton({
	Name = "Copiar Posição do Personagem",
	Callback = function()
        setclipboard(Character.HumanoidRootPart.Position)
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
		_G.RaiseAFloppaAutoClickFloppa = false
		_G.canCheckAutoClickFloppa = true
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
