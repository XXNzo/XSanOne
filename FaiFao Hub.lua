if game.CoreGui:FindFirstChild("Skay_Loader") then
    game.CoreGui.Skay_Loader:Destroy()
end

function AutoJoinDiscord(DiscordCode)
	local req = (syn and syn.request) or (http and http.request) or http_request
	if req then
		req({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = game:GetService('HttpService'):JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = game:GetService('HttpService'):GenerateGUID(false),
				args = {code = DiscordCode}
			})
		})
	end
end

local Client = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

local Skay_Loader = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrameCorner = Instance.new("UICorner")
local MainFrameGlow = Instance.new("ImageLabel")
local MainImage = Instance.new("ImageLabel")
local MainImageCorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local MainImageLineFrame = Instance.new("Frame")
local Frame1 = Instance.new("Frame")
local Frame2 = Instance.new("Frame")
local Frame3 = Instance.new("Frame")
local Frame4 = Instance.new("Frame")
local MainFrameGlow_2 = Instance.new("ImageLabel")
local LoadingLineFrame = Instance.new("Frame")
local LoadingLineIndicator = Instance.new("Frame")
local LoadingLineIndicatorCorner = Instance.new("UICorner")
local LoadingLineFrameCorner = Instance.new("UICorner")
local LoadingText = Instance.new("TextLabel")

local ButtonsFrame = Instance.new("Frame")
local DiscordButton = Instance.new("TextButton")
local DiscordButtonCorner = Instance.new("UICorner")
local SkipButton = Instance.new("TextButton")
local SkipButtonCorner = Instance.new("UICorner")

local SwitchFrame = Instance.new("Frame")

Skay_Loader.Name = "Skay_Loader"
Skay_Loader.Parent = game.CoreGui
Skay_Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Skay_Loader
MainFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
MainFrame.Position = UDim2.new(0.356198341, 0, 0.233829498, 0)
MainFrame.Size = UDim2.new(0, 610, 0, 429)

MainFrameCorner.CornerRadius = UDim.new(0, 4)
MainFrameCorner.Name = "MainFrameCorner"
MainFrameCorner.Parent = MainFrame

MainFrameGlow.Name = "MainFrameGlow"
MainFrameGlow.Parent = MainFrame
MainFrameGlow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrameGlow.BackgroundTransparency = 1.000
MainFrameGlow.Position = UDim2.new(-0.054036539, 0, -0.0545454361, 0)
MainFrameGlow.Size = UDim2.new(1.05993366, 30, 1.03786647, 30)
MainFrameGlow.ZIndex = 0
MainFrameGlow.Image = "rbxassetid://4996891970"
MainFrameGlow.ImageColor3 = Color3.fromRGB(15, 15, 15)

MainImage.Name = "MainImage"
MainImage.Parent = MainFrame
MainImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainImage.BackgroundTransparency = 1.000
MainImage.Position = UDim2.new(0.328190297, 0, 0.209206328, 0)
MainImage.Size = UDim2.new(0, 220, 0, 194)
MainImage.ZIndex = 2
MainImage.Image = "rbxassetid://11965733811"
MainImage.ImageTransparency = 1.000

MainImageCorner.Name = "MainImageCorner"
MainImageCorner.Parent = MainImage

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 0, 0.0649999976, 0)
Title.Size = UDim2.new(0, 72, 0, 16)
Title.Font = Enum.Font.Gotham
Title.Text = "Fai Fao Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 30.000
Title.TextTransparency = 1.000

MainImageLineFrame.Name = "MainImageLineFrame"
MainImageLineFrame.Parent = MainFrame
MainImageLineFrame.BackgroundColor3 = Color3.fromRGB(255, 28, 20)
MainImageLineFrame.BackgroundTransparency = 1.000
MainImageLineFrame.BorderSizePixel = 0
MainImageLineFrame.Position = UDim2.new(0.270670712, 0, 0.157426983, 0)
MainImageLineFrame.Size = UDim2.new(0, 279, 0, 230)

Frame1.Name = "Frame1"
Frame1.Parent = MainImageLineFrame
Frame1.BackgroundColor3 = Color3.fromRGB(255, 28, 20)
Frame1.BackgroundTransparency = 1.000
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(1.01792109, 0, 0.0260869563, 0)
Frame1.Size = UDim2.new(0, 2, 1, 2)

Frame2.Name = "Frame2"
Frame2.Parent = MainImageLineFrame
Frame2.BackgroundColor3 = Color3.fromRGB(255, 28, 20)
Frame2.BackgroundTransparency = 1.000
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.0179211479, 0, 1.02608693, 0)
Frame2.Size = UDim2.new(1, 0, 0, 2)

Frame3.Name = "Frame3"
Frame3.Parent = MainImageLineFrame
Frame3.BackgroundColor3 = Color3.fromRGB(255, 28, 20)
Frame3.BackgroundTransparency = 1.000
Frame3.BorderSizePixel = 0
Frame3.Position = UDim2.new(0.0179211479, 0, 0.0173913538, 0)
Frame3.Size = UDim2.new(1, 2, 0, 2)

Frame4.Name = "Frame4"
Frame4.Parent = MainImageLineFrame
Frame4.BackgroundColor3 = Color3.fromRGB(255, 28, 20)
Frame4.BackgroundTransparency = 1.000
Frame4.BorderSizePixel = 0
Frame4.Position = UDim2.new(0.0179211479, 0, 0.0173913054, 0)
Frame4.Size = UDim2.new(0, 2, 1, 2)

SwitchFrame.Name = "SwitchFrame"
SwitchFrame.Parent = MainImageLineFrame
SwitchFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
SwitchFrame.BorderSizePixel = 0
SwitchFrame.Position = UDim2.new(-0.0645161271, 0, -0.0130434781, 0)
SwitchFrame.Size = UDim2.new(0, 314, 0, 248)

MainFrameGlow_2.Name = "MainFrameGlow"
MainFrameGlow_2.Parent = MainFrame
MainFrameGlow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrameGlow_2.BackgroundTransparency = 1.000
MainFrameGlow_2.Position = UDim2.new(-0.054036539, 0, -0.0545454361, 0)
MainFrameGlow_2.Size = UDim2.new(1.05993366, 30, 1.03786647, 30)
MainFrameGlow_2.ZIndex = 0
MainFrameGlow_2.Image = "rbxassetid://4996891970"
MainFrameGlow_2.ImageColor3 = Color3.fromRGB(15, 15, 15)

LoadingLineFrame.Name = "LoadingLineFrame"
LoadingLineFrame.Parent = MainFrame
LoadingLineFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
LoadingLineFrame.BackgroundTransparency = 1.000
LoadingLineFrame.Position = UDim2.new(0.193176538, 0, 1.07338119, 0)
LoadingLineFrame.Size = UDim2.new(0, 375, 0, 36)

LoadingLineIndicator.Name = "LoadingLineIndicator"
LoadingLineIndicator.Parent = LoadingLineFrame
LoadingLineIndicator.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
LoadingLineIndicator.BackgroundTransparency = 1.000
LoadingLineIndicator.Size = UDim2.new(0, 0, 1, 0)

LoadingLineIndicatorCorner.CornerRadius = UDim.new(0, 3)
LoadingLineIndicatorCorner.Name = "LoadingLineIndicatorCorner"
LoadingLineIndicatorCorner.Parent = LoadingLineIndicator

LoadingLineFrameCorner.CornerRadius = UDim.new(0, 3)
LoadingLineFrameCorner.Name = "LoadingLineFrameCorner"
LoadingLineFrameCorner.Parent = LoadingLineFrame

LoadingText.Name = "LoadingText"
LoadingText.Parent = LoadingLineFrame
LoadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.BackgroundTransparency = 1.000
LoadingText.Position = UDim2.new(0.394666672, 0, -0.861111104, 0)
LoadingText.Size = UDim2.new(0, 78, 0, 17)
LoadingText.Font = Enum.Font.Gotham
LoadingText.Text = "Loading.."
LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.TextSize = 16.000
LoadingText.TextTransparency = 1.000

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = MainFrame
ButtonsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonsFrame.BackgroundTransparency = 1.000
ButtonsFrame.Size = UDim2.new(1, 0, 1, 0)

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = ButtonsFrame
DiscordButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
DiscordButton.Position = UDim2.new(0.383606464, 0, 0.487179488, 0)
DiscordButton.Size = UDim2.new(0, 142, 0, 44)
DiscordButton.AutoButtonColor = false
DiscordButton.Font = Enum.Font.Gotham
DiscordButton.Text = "Discord"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 17.000
DiscordButton.TextTransparency = 1
DiscordButton.BackgroundTransparency = 1

DiscordButtonCorner.CornerRadius = UDim.new(0, 3)
DiscordButtonCorner.Name = "DiscordButtonCorner"
DiscordButtonCorner.Parent = DiscordButton

SkipButton.Name = "SkipButton"
SkipButton.Parent = ButtonsFrame
SkipButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
SkipButton.Position = UDim2.new(0.383606523, 0, 0.881118894, 0)
SkipButton.Size = UDim2.new(0, 142, 0, 31)
SkipButton.AutoButtonColor = false
SkipButton.Font = Enum.Font.Gotham
SkipButton.Text = "Skip"
SkipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SkipButton.TextSize = 17.000
SkipButton.TextTransparency = 1
SkipButton.BackgroundTransparency = 1

SkipButtonCorner.CornerRadius = UDim.new(0, 3)
SkipButtonCorner.Name = "SkipButtonCorner"
SkipButtonCorner.Parent = SkipButton

local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
function getplatform()
    if (GuiService:IsTenFootInterface()) then
        return "Console"
    elseif (UserInputService.TouchEnabled and not UserInputService.MouseEnabled) then
		return "Mobile (phone)"
    else
        return "Desktop"
    end
end

local ToggledSkip = false

if getplatform() == "Mobile (phone)" then
	loadstring(game:HttpGet("https://gitlab.com/L1ZOT/skays-hub/-/raw/main/Script/"..game.PlaceId.."/Script.lua"))()
else

SkipButton.MouseButton1Click:Connect(function()
	ToggledSkip = true
end)

SkipButton.MouseButton1Click:Connect(function()
	TweenService:Create(
        LoadingLineIndicator,
        TweenInfo.new(.5, Enum.EasingStyle.Quad),
        {Size = UDim2.new(0, 375, 1, 0)}
    ):Play()
	LoadingText.Visible = false
	repeat task.wait(.2) until LoadingLineIndicator.Size == UDim2.new(0, 375, 1, 0)
	wait(.3)
	game.CoreGui.Skay_Loader:Destroy()
	loadstring(game:HttpGet("https://gitlab.com/L1ZOT/skays-hub/-/raw/main/Script/"..game.PlaceId.."/Script.lua"))()
end)

DiscordButton.MouseButton1Click:Connect(function()
	DiscordButton.Text = "Coppied Discord"
	setclipboard("https://discord.gg/VEEn3MvDnb")
	AutoJoinDiscord("VEEn3MvDnb")
	task.wait(.9)
	DiscordButton.Text = "Discord"
end)

	wait(1)
	
	TweenService:Create(
		MainImage,
		TweenInfo.new(4, Enum.EasingStyle.Quad),
		{ImageTransparency = 0}
	):Play()
	
	TweenService:Create(
		Title,
		TweenInfo.new(.7, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0.44, 0,0.065, 0)}
	):Play()
	
	TweenService:Create(
		Title,
		TweenInfo.new(.5, Enum.EasingStyle.Quad),
		{TextTransparency = 0}
	):Play()
	
		TweenService:Create(
			SwitchFrame,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{Size = UDim2.new(0, 0, 0, 248)}
		):Play()
	
	repeat task.wait() until MainImage.ImageTransparency == 0
	TweenService:Create(
		MainImage,
		TweenInfo.new(.6, Enum.EasingStyle.Quad),
		{Size = UDim2.new(0,0,0,0)}
	):Play()
	
		TweenService:Create(
			SwitchFrame,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{Size = UDim2.new(0, 314, 0, 248)}
		):Play()
	
	repeat task.wait() until MainImage.Size == UDim2.new(0,0,0,0)
	
	MainImage.Visible = false
	
	task.wait(.27)
	
	TweenService:Create(
		LoadingLineFrame,
		TweenInfo.new(.3, Enum.EasingStyle.Quad),
		{Position = UDim2.new(0.185, 0,0.778, 0)}
	):Play()
	task.wait(.087)
	TweenService:Create(
		LoadingLineFrame,
		TweenInfo.new(.8, Enum.EasingStyle.Quad),
		{BackgroundTransparency = 0}
	):Play()
	
	TweenService:Create(
		LoadingLineIndicator,
		TweenInfo.new(.8, Enum.EasingStyle.Quad),
		{BackgroundTransparency = 0}
	):Play()
	
	TweenService:Create(
		LoadingText,
		TweenInfo.new(.3, Enum.EasingStyle.Quad),
		{TextTransparency = 0}
	):Play()
	
    repeat task.wait() until LoadingText.TextTransparency == 0
		spawn(function()
			for i,v in pairs(ButtonsFrame:GetChildren()) do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(.3, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 0}
					):Play()
					TweenService:Create(
						v,
						TweenInfo.new(.3, Enum.EasingStyle.Quad),
						{TextTransparency = 0}
					):Play()
				end
			end
		end)

		spawn(function()
			LoadingText.Text = 'Loading'
			wait(.8)
			LoadingText.Text = 'Loading.'
			wait(.9)
			LoadingText.Text = 'Loading..'
			wait(.7)
			LoadingText.Text = 'Loading...'
			wait(.8)
			LoadingText.Text = 'Loading.'
			wait(.9)
			LoadingText.Text = 'Loading..'
			wait(.7)
			LoadingText.Text = 'Loading.
				TweenInfo.new(3, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 70, 1, 0)}
			):Play()
			repeat task.wait() until LoadingLineIndicator.Size == UDim2.new(0, 70, 1, 0)
			wait(.4)
			TweenService:Create(
				LoadingLineIndicator,
				TweenInfo.new(1.4, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 130, 1, 0)}
			):Play()
			repeat task.wait() until LoadingLineIndicator.Size == UDim2.new(0, 130, 1, 0)
			wait(.1)
			TweenService:Create(
				LoadingLineIndicator,
				TweenInfo.new(1.4, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 210, 1, 0)}
			):Play()
			repeat task.wait() until LoadingLineIndicator.Size == UDim2.new(0, 210, 1, 0)
			wait(.2)
			TweenService:Create(
				LoadingLineIndicator,
				TweenInfo.new(.8, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 290, 1, 0)}
			):Play()

			repeat task.wait() until LoadingLineIndicator.Size == UDim2.new(0, 290, 1, 0)
			wait(.3)
			TweenService:Create(
				LoadingLineIndicator,
				TweenInfo.new(.6, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 340, 1, 0)}
			):Play()

			repeat task.wait() until LoadingLineIndicator.Size == UDim2.new(0, 340, 1, 0)
			wait(.4)
			TweenService:Create(
				LoadingLineIndicator,
				TweenInfo.new(1, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 375, 1, 0)}
			):Play()
			repeat task.wait() until LoadingLineIndicator.Size == UDim2.new(0, 375, 1, 0)
			task.wait(.9)
			TweenService:Create(
				LoadingLineIndicator,
				TweenInfo.new(.3, Enum.EasingStyle.Quad),
				{Size = UDim2.new(0, 0, 1, 0)}
			):Play()
			task.wait(.2)
			LoadingLineIndicator.Visible = false
			LoadingText.Visible = false
			TweenService:Create(
				LoadingLineFrame,
				TweenInfo.new(.6, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0.193176538, 0, 1.07338119, 0)}
			):Play()
			TweenService:Create(
				LoadingLineFrame,
				TweenInfo.new(.3, Enum.EasingStyle.Quad),
				{BackgroundTransparency = 1}
			):Play()
			wait(.8)
			game.CoreGui.Skay_Loader:Destroy()
			if ToggledSkip == false then
				loadstring(game:HttpGet("https://gitlab.com/L1ZOT/skays-hub/-/raw/main/Script/"..game.PlaceId.."/Script.lua"))()
			end
		end)
	end
