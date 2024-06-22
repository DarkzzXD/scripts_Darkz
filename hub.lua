function osprint(message)
	warn("[ Scripts do Darkz ] - " .. message)
end

osprint("Executando...")

-- Global Values -- Dont change/Não mude
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

function s_destroy()
		_G.RaiseAFloppaAutoClickFloppa = false
		_G.canCheckAutoClickFloppa = true
      		OrionLib:Destroy()
end

local TabRAF = Window:MakeTab({
	Name = "Raise a Floppa",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TabSC = Window:MakeTab({
	Name = "Sanic Chase",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TabSCG = TabSC:AddSection({
	Name = "Modos de Jogo"
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
	Name = "Script"
})

local TabEtcPlayer = TabEtc:AddSection({
	Name = "Personagem"
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
	Name = "Deletar Fezes",
	Callback = function()
  		for i, Poop in workspace:GetDescendants() do
			if Poop:IsA("Model") or Poop:IsA("BasePart") then
				if Poop.Name == "Poop" then
					Poop:Destroy()
				end
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
-- -12800.046875, 57.98476028442383, -16092.3515625
TabRAFBackrooms:AddButton({
	Name = "Abrir the_darkwebs | Raise a Floppa 1",
	Callback = function()
		Player.PlayerGui["Backrooms Shop"].Frame.Visible = true
      end    
})

TabRAFBackrooms:AddButton({
	Name = "Teleportar para as Backrooms | Raise a Floppa 1",
	Callback = function()
		Character.HumanoidRootPart.CFrame = CFrame.new(-12800.046875, 57.98476028442383, -16092.3515625)
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

TabSCG:AddLabel("Sanic Infection")

TabSCG:AddButton({
	Name = "Virar Sanic Amarelo | Sanic Infection",
	Callback = function()
		Character.HumanoidRootPart.CFrame = CFrame.new(-48.26789093017578, 104.34778594970703, 658.488525390625)
  	end    
})

TabSCG:AddButton({
	Name = "Resgatar Pontos | Sanic Infection",
	Callback = function()
        local hrp = Character.HumanoidRootPart or Character.Torso or Character.UpperTorso
		hrp.CFrame = CFrame.new(21.13048553466797, 91.03083801269531, 556.1837768554688)
		keypress(Enum.KeyCode.E)
		task.wait(4)
		keyrelease(Enum.KeyCode.E)
  	end    
})

TabSCG:AddLabel("Sanic Minigame")

TabSCG:AddButton({
	Name = "Revelar onde esta Sanic | Sanic Minigame",
	Callback = function()
       for i, PlayerV in game:GetService("Players"):GetPlayers() do
        if PlayerV.Team == game:GetService("Teams").Sanic then
            OrionLib:MakeNotification({
	Name = "Notificação",
	Content = "O Sanic é: " .. PlayerV.Name .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
          PlayerV.Character.HumanoidRootPart.TheSwirlyHeadMan_Body.AlwaysOnTop = true
         repeat task.wait() until PlayerV.Team ~= game:GetService("Teams").Sanic
          PlayerV.Character.HumanoidRootPart.TheSwirlyHeadMan_Body.AlwaysOnTop = false
         end
end
  	end    
})

TabSCG:AddButton({
	Name = "Coletar Pontos | Sanic Minigame",
	Callback = function()
        Character.HumanoidRootPart.CFrame = CFrame.new(241.23609924316406, 2.939272165298462, -1.9747358560562134)
Character.HumanoidRootPart.CFrame = CFrame.new(241.23609924316406, 2.939272165298462, -1.9747358560562134)
Character.HumanoidRootPart.CFrame = CFrame.new(241.23609924316406, 2.939272165298462, -1.9747358560562134)
Character.HumanoidRootPart.CFrame = CFrame.new(241.23609924316406, 2.939272165298462, -1.9747358560562134)        
       task.wait(0.5)
        keypress(Enum.KeyCode.E)
        task.wait(1)
        keyrelease(Enum.KeyCode.E)
  	end    
})

TabEtcUI:AddButton({
	Name = "Reiniciar Script",
	Callback = function()
		s_destroy()
       		loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkzzXD/scripts_Darkz/main/hub.lua"))()
  	end    
})


TabEtcAdmin:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

TabEtcUI:AddButton({
	Name = "Parar Script",
	Callback = function()
		s_destroy()
  	end    
})

TabEtcUI:AddButton({
	Name = "Não irei algumas funções do Raise a Floppa (FPS)",
	Callback = function()
		OrionLib:MakeNotification({
	    	Name = "Notificação",
	    	Content = "O script irá previnir o check do AutoClick, talvez pode ajudar em FPS.",
	    	Image = "rbxassetid://4483345998",
	    	Time = 5
	    })
        _G.canCheckAutoClickFloppa = false
  	end    
})

TabEtcPlayer:AddSlider({
	Name = "Velocidade do Personagem",
	Min = 0,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Velocidade",
	Callback = function(Value)
		Character:FindFirstChildOfClass("Humanoid").WalkSpeed = Value
	end    
})

TabEtcPlayer:AddSlider({
	Name = "FOV Camera (Não testado)",
	Min = 0,
	Max = 120,
	Default = 70,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		workspace.CurrentCamera.FieldOfView = Value
	end    
})

TabEtcPlayer:AddButton({
	Name = "Resetar Personagem",
	Callback = function()
        Character:FindFirstChildOfClass("Humanoid"):TakeDamage(Character:FindFirstChildOfClass("Humanoid").Health)
	OrionLib:MakeNotification({
		Name = "Notificação",
		Content = "Seu personagem deve ter morrido.",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
  	end    
})

TabEtcPlayer:AddButton({
	Name = "Copiar Posição do Personagem",
	Callback = function()
        setclipboard(Character.HumanoidRootPart.Position)
	OrionLib:MakeNotification({
		Name = "Notificação",
		Content = "Copiado a posição do personagem com sucesso.",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
  	end    
})

OrionLib:Init()

OrionLib:MakeNotification({
	Name = "Notificação",
	Content = "Bem-vindo, " .. Player.DisplayName .. "!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
