-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local label = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.319221944, 0, 0.293827176, 0)
Frame.Size = UDim2.new(0, 241, 0, 46)

label.Name = "label"
label.Parent = Frame
label.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
label.BorderColor3 = Color3.fromRGB(255, 255, 255)
label.Size = UDim2.new(0, 241, 0, 46)
label.Font = Enum.Font.LuckiestGuy
label.Text = "N/A"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 25)
UICorner_2.Parent = Frame

-- Scripts:

local function IGIIB_fake_script() -- label.LocalScript 
	local script = Instance.new('LocalScript', label)

	function SUB(o) 
		local yes = o
		local ok
		while task.wait() do   
			yes, ok = string.gsub(yes, "^(-?%d+)(%d%d%d)", '%1,%2')
			if (ok==0) then
				break
			end
		end
		return yes 
	end 
	while task.wait() do
		local cash = 0
		for i,v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
			if v.Name == "MoneyDrop" then 
				local subbed = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
				cash = cash + subbed
			end
		end
		task.wait(0.05)
		script.Parent.Text = '$'..SUB(cash)
	end
end
coroutine.wrap(IGIIB_fake_script)()
local function XMSKM_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
	script.Parent.Selectable = true
	
	
end
coroutine.wrap(XMSKM_fake_script)()
