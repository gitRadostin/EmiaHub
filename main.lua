--[[
EmiaHub
Made by didyzzy_42798
https://github.com/gitRadostin/EmiaHub
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()



local Window = Library.CreateLib("Emia☘'s Hub", "DarkTheme")

local Games = Window:NewTab("Rare Scripts💕📜")
local GamesSection = Games:NewSection("Discord https://discord.gg/GgY8sYje Have fun")

GamesSection:NewButton("Gaze Bypass", "CHAT BYPASS OP", function()--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]



if not game:IsLoaded() then
    game.IsLoaded:Wait()
end


    function makeMessage(message)
    pcall(function()
        msg = tostring(message)
        
        if game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral") then
            game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral"):DisplaySystemMessage(msg)
            else
        game:GetService("StarterGui"):SetCore(
            "ChatMakeSystemMessage",
            {
                Text = msg,
                Color = Color3.fromRGB(255, 89, 98),
                Font = Enum.Font.GothamMedium,
                FontSize = 16
            }
        )
        end
    end)
    end
    
    
    local function Smooth(gui)
    if not gui:IsA("GuiObject") then
        warn("The provided object is not a valid GUI object.")
        return
    end
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(1.5, 0)
    uiCorner.Parent = gui
    
    return uiCorner
end
    
    
local guiName = "GazeGayUI5"
local coreGay = game:GetService("CoreGui")


if not coreGay:FindFirstChild(guiName) then
   
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = guiName  

    
    screenGui.Parent = coreGay

    makeMessage("•   Gaze bypass V6 loaded.")
else
   
    makeMessage("•   Gaze bypass V6 is already executed..")
    return
end


local TweenService = game:GetService("TweenService")

local gui = Instance.new("ScreenGui")
local GazerMain = Instance.new("Frame")
local GazerTitle = Instance.new("TextLabel")
local GazerTitle2 = Instance.new("TextLabel")
local TextBax = Instance.new("TextBox")
local chat = Instance.new("TextButton")
local UICornerMain = Instance.new("UICorner")
local UICornerTitle = Instance.new("UICorner")

local UICornerTextBax = Instance.new("UICorner")
local UICornerChat = Instance.new("UICorner")

local toggleScrollFrameBtn = Instance.new("TextButton") 

local scrollFrame = Instance.new("ScrollingFrame") 
local UICornerToggleBtn = Instance.new("UICorner")
local UICornerClear = Instance.new("UICorner")
local UICornerUndo = Instance.new("UICorner")

gui.Name = "GazerAlteredGui"
gui.Parent = cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui") 


GazerMain.Size = UDim2.new(0.5, 0, 0.5, 0)
GazerMain.Position = UDim2.new(0.25, 0, 0.25, 0)
GazerMain.BackgroundColor3 = Color3.fromRGB(255, 238, 238)
GazerMain.BorderColor3 = Color3.fromRGB(255, 89, 98)
GazerMain.BorderSizePixel = 1
GazerMain.Active = true
GazerMain.Draggable = true
GazerMain.Parent = gui

Smooth(GazerMain)

GazerTitle.Size = UDim2.new(0.85, 0, 0.2, 0) 
GazerTitle.Position = UDim2.new(0, 0, 0, 0)
GazerTitle.BackgroundColor3 = Color3.fromRGB(255, 238, 238)
GazerTitle.BorderColor3 = Color3.fromRGB(255, 89, 98)
GazerTitle.BorderSizePixel = 1
GazerTitle.BackgroundTransparency = 1
GazerTitle.Text = "Gaze Bypass"
GazerTitle.TextSize = 30
GazerTitle.TextColor3 = Color3.fromRGB(255, 200, 200)
GazerTitle.Font = Enum.Font.GothamBold
GazerTitle.Parent = GazerMain


GazerTitle2.Size = UDim2.new(0.5, 0, 0.1, 0)
GazerTitle2.Position = UDim2.new(1.1, 0, 0, 0)
GazerTitle2.BackgroundColor3 = Color3.fromRGB(255, 89, 98)
GazerTitle2.BorderColor3 = Color3.fromRGB(255, 238, 238)
GazerTitle2.BorderSizePixel = 1
GazerTitle2.Text = "Examples"
GazerTitle2.TextSize = 20
GazerTitle2.TextColor3 = Color3.new(1, 1, 1)
GazerTitle2.Font = Enum.Font.GothamBold
GazerTitle2.Parent = GazerMain


UICornerTitle.CornerRadius = UDim.new(0, 10)
UICornerTitle.Parent = GazerTitle


-- Replace the ImageLabel with a TextLabel for the icon
local GazerIcon = Instance.new("TextLabel")
GazerIcon.Size = UDim2.new(0.15, 0, 0.25, 0)
GazerIcon.Position = UDim2.new(0.65, 0, 0, 0)
GazerIcon.BackgroundTransparency = 1
GazerIcon.Text = "FAX"
GazerIcon.TextSize = 30
GazerIcon.TextColor3 = Color3.fromRGB(255, 89, 98)
GazerIcon.Font = Enum.Font.GothamBold
GazerIcon.Parent = GazerMain

-- Add a squish animation to the TextLabel
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true) -- Loop the animation

local squishGoal = {Size = UDim2.new(0.15, 0, 0.2, 0)} -- Reduce height for squish effect
local normalGoal = {Size = UDim2.new(0.15, 0, 0.25, 0)} -- Return to original size

local squishTween = TweenService:Create(GazerIcon, tweenInfo, squishGoal)
local normalTween = TweenService:Create(GazerIcon, tweenInfo, normalGoal)

-- Start the squish animation
squishTween:Play()
squishTween.Completed:Connect(function()
    normalTween:Play()
end)

TextBax.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBax.Position = UDim2.new(0.1, 0, 0.3, 0)
TextBax.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBax.BorderColor3 = Color3.fromRGB(70, 70, 70)
TextBax.BorderSizePixel = 1
TextBax.PlaceholderText = "(Enter Message)"
TextBax.TextColor3 = Color3.new(1, 1, 1)
TextBax.Font = Enum.Font.Code
TextBax.ClearTextOnFocus = true
TextBax.Text = ""
TextBax.TextSize = 18
TextBax.Parent = GazerMain

Smooth(TextBax)

-- Toggle ScrollFrame Button
toggleScrollFrameBtn.Size = UDim2.new(0.2, 0, 0.2, 0)
toggleScrollFrameBtn.Position = UDim2.new(0.70, 0, 0.5, 0)
toggleScrollFrameBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleScrollFrameBtn.BorderColor3 = Color3.fromRGB(70, 70, 70)
toggleScrollFrameBtn.Text = "Examples"
toggleScrollFrameBtn.TextSize = 18
toggleScrollFrameBtn.TextColor3 = Color3.new(1, 1, 1)
toggleScrollFrameBtn.Font = Enum.Font.Code
toggleScrollFrameBtn.Parent = GazerMain


-- Adding rounded corners to Toggle Button
UICornerToggleBtn.CornerRadius = UDim.new(0, 10)
UICornerToggleBtn.Parent = toggleScrollFrameBtn


-- Scroll Frame
scrollFrame.Size = UDim2.new(0.5, 0, 0.9, 0)
scrollFrame.Position = UDim2.new(1.1, 0, 0.1, 0)
scrollFrame.BackgroundColor3 = Color3.fromRGB(255, 238, 238)
scrollFrame.BorderColor3 = Color3.fromRGB(255, 89, 98)
scrollFrame.BorderSizePixel = 1
scrollFrame.Visible = true -- Initially hidden
scrollFrame.Parent = GazerMain

Smooth(scrollFrame)

scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0) -- We will adjust this as buttons are added
scrollFrame.ScrollBarThickness = 8



local TweenService = game:GetService("TweenService")


local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function tweenVisibility(frame, targetVisible)
    local targetTransparency = targetVisible and 0 or 1

    local tween = TweenService:Create(frame, tweenInfo, {BackgroundTransparency = targetTransparency})
    tween:Play()

    for _, child in pairs(frame:GetDescendants()) do
        if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("TextBox") then
            local textTween = TweenService:Create(child, tweenInfo, {TextTransparency = targetTransparency})
            textTween:Play()
        elseif child:IsA("Frame") or child:IsA("ScrollingFrame") or child:IsA("ImageLabel") or child:IsA("ImageButton") then
            local childTween = TweenService:Create(child, tweenInfo, {BackgroundTransparency = targetTransparency})
            childTween:Play()

            -- Tween all text elements within nested frames
            for _, nestedChild in pairs(child:GetDescendants()) do
                if nestedChild:IsA("TextLabel") or nestedChild:IsA("TextButton") or nestedChild:IsA("TextBox") then
                    local nestedTextTween = TweenService:Create(nestedChild, tweenInfo, {TextTransparency = targetTransparency})
                    nestedTextTween:Play()
                end
            end
        end
    end

    if not targetVisible then
        tween.Completed:Connect(function()
            frame.Visible = false
        end)
    else
        frame.Visible = true
    end
end

toggleScrollFrameBtn.MouseButton1Click:Connect(function()
    tweenVisibility(scrollFrame, not scrollFrame.Visible)
    tweenVisibility(GazerTitle2, not GazerTitle2.Visible)
end)






local buttonCount = 0
local function example(text)
task.wait()
    buttonCount = buttonCount + 1

    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.new(1, -10, 0, 40) -- Full width of scroll frame, height of 40
    textButton.Position = UDim2.new(0, 5, 0, (buttonCount - 1) * 45) -- Space each button 45 pixels apart
    textButton.BackgroundColor3 = Color3.fromRGB(255, 89, 98)
    textButton.BorderColor3 = Color3.fromRGB(255, 238, 238)
    textButton.Text = text
    textButton.TextScaled = true -- Enable text scaling
    textButton.TextWrapped = true -- Wrap the text if needed
    textButton.TextSize = 18
    textButton.TextColor3 = Color3.new(1, 1, 1)
    textButton.Font = Enum.Font.Code
    textButton.Parent = scrollFrame
Smooth(textButton)
    
    textButton.MouseButton1Click:Connect(function()
        print(TextBax.Text)
        TextBax.Text = textButton.Text
        
    end)

    
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, buttonCount * 45)
    
end



    example("Gaze Bypass V6 is fucking awesome!")
    example("||||||||||||||||||||||||")
example("https://www.youtube.com/@gazer_ha")
example("#GazeBypassAtTheFuckingBottom")
example("Fuck around and find out for yourself")
example("Want some free Robux?| Go to Xvideos.com for free Robux")
example("I'm tired of all this shit")
example("That was cuntacular 💯")
example("Stop being a cunt")
example("Fuck this shit")
example("Go fuck yourself")
example("I want to kill myself")
example("There's no cure for being a cunt")
example("Fuck you")
example("Fuck you | with love {♡}")
example("1 nigga | 2 nigga | oh damn")
example("https://xvideos.com")
example("https://pornhub.com is awesome")
example("I have a cute XHamster")
example("https://nhentai.net")
example("https://nekopoi.care")
example("E621? Eugh, what the fuck?")
example("This shit is absolutely insane!")
    example("What the hell were you thinking?")
    example("You're such a dumbass")
    example("i can't believe this bullshit")
    example("This is a load of crap")
    example("Get your head out of your ass")
    example("You're driving me fucking crazy")
    example("Quit acting like a little bitch")
    example("This is some serious bullshit right here")
    example("i don't give a flying fuck")
    example("You think you're hot shit, huh?")
    example("What the fuck is going on?")
    example("This party is lit as fuck")
    example("i'm so done with this crap")
    example("Don't be a little shit")
    example("You absolute legend, you crazy bastard")
    example("Shut the fuck up already")
    example("i'm not in the mood for your bullshit")
    example("You're being a real pain in the ass")
    example("This is fucking ridiculous")
    example("Get your shit together")
    example("You gotta be shitting me")
    example("What the fuck is this nonsense?")
    example("You're a total piece of shit")
    example("i'm so fucking tired of this drama")
    example("Get your shit together, damn it")
    example("Why the hell would you do that?")
    example("This is driving me absolutely nuts")
    example("i can't deal with this crap anymore")
    example("Seriously, what the hell were you thinking?")
    example("You are being a complete jackass")
    example("This place is a fucking mess")
    example("Don't test me, you moron")
    example("i swear to god, this is fucking ridiculous")
    example("You're such a fucking idiot")
    example("Stop being such a whiny brat")
    example("This is beyond fucking stupid")
    example("You're asking for trouble, you know that?")
    example("Get the fuck out of my way")
    example("What kind of bullshit is this?")
    example("i’m done with your bullshit excuses")
    example("You're really pushing my buttons here")
    example("This is a complete fucking disaster")
    example("Shit happens, but this is too much")
    
    
    
   

    local time = os.date("*t") -- Gets the current time in table format
local hour = time.hour -- Extract the hour
local minute = time.min -- Extract the minute


    example("This Fuckers Executed At = " .. string.format("%02d:%02d", hour, minute))
local LocalizationS = game:GetService("LocalizationService")
local Player = game.Players.LocalPlayer

local countryMap = {
 ["BD"] = "Bangladesh",
 ["BE"] = "Belgium",
 ["BF"] = "Burkina Faso",
 ["BG"] = "Bulgaria",
 ["BA"] = "Bosnia and Herzegovina",
 ["BB"] = "Barbados",
 ["WF"] = "Wallis and Futuna",
 ["BL"] = "Saint Barthelemy",
 ["BM"] = "Bermuda",
 ["BN"] = "Brunei",
 ["BO"] = "Bolivia",
 ["BH"] = "Bahrain",
 ["BI"] = "Burundi",
 ["BJ"] = "Benin",
 ["BT"] = "Bhutan",
 ["JM"] = "Jamaica",
 ["BV"] = "Bouvet Island",
 ["BW"] = "Botswana",
 ["WS"] = "Samoa",
 ["BQ"] = "Bonaire, Saint Eustatius and Saba",
 ["BR"] = "Brazil",
 ["BS"] = "Bahamas",
 ["JE"] = "Jersey",
 ["BY"] = "Belarus",
 ["BZ"] = "Belize",
 ["RU"] = "Russia",
 ["RW"] = "Rwanda",
 ["RS"] = "Serbia",
 ["TL"] = "East Timor",
 ["RE"] = "Reunion",
 ["TM"] = "Turkmenistan",
 ["TJ"] = "Tajikistan",
 ["RO"] = "Romania",
 ["TK"] = "Tokelau",
 ["GW"] = "Guinea-Bissau",
 ["GU"] = "Guam",
 ["GT"] = "Guatemala",
 ["GS"] = "South Georgia and the South Sandwich Islands",
 ["GR"] = "Greece",
 ["GQ"] = "Equatorial Guinea",
 ["GP"] = "Guadeloupe",
 ["JP"] = "Japan",
 ["GY"] = "Guyana",
 ["GG"] = "Guernsey",
 ["GF"] = "French Guiana",
 ["GE"] = "Georgia",
 ["GD"] = "Grenada",
 ["GB"] = "United Kingdom",
 ["GA"] = "Gabon",
 ["SV"] = "El Salvador",
 ["GN"] = "Guinea",
 ["GM"] = "Gambia",
 ["GL"] = "Greenland",
 ["GI"] = "Gibraltar",
 ["GH"] = "Ghana",
 ["OM"] = "Oman",
 ["TN"] = "Tunisia",
 ["JO"] = "Jordan",
 ["HR"] = "Croatia",
 ["HT"] = "Haiti",
 ["HU"] = "Hungary",
 ["HK"] = "Hong Kong",
 ["HN"] = "Honduras",
 ["HM"] = "Heard Island and McDonald Islands",
 ["VE"] = "Venezuela",
 ["PR"] = "Puerto Rico",
 ["PS"] = "Palestinian Territory",
 ["PW"] = "Palau",
 ["PT"] = "Portugal",
 ["SJ"] = "Svalbard and Jan Mayen",
 ["PY"] = "Paraguay",
 ["IQ"] = "Iraq",
 ["PA"] = "Panama",
 ["PF"] = "French Polynesia",
 ["PG"] = "Papua New Guinea",
 ["PE"] = "Peru",
 ["PK"] = "Pakistan",
 ["PH"] = "Philippines",
 ["PN"] = "Pitcairn",
 ["PL"] = "Poland",
 ["PM"] = "Saint Pierre and Miquelon",
 ["ZM"] = "Zambia",
 ["EH"] = "Western Sahara",
 ["EE"] = "Estonia",
 ["EG"] = "Egypt",
 ["ZA"] = "South Africa",
 ["EC"] = "Ecuador",
 ["IT"] = "Italy",
 ["VN"] = "Vietnam",
 ["SB"] = "Solomon Islands",
 ["ET"] = "Ethiopia",
 ["SO"] = "Somalia",
 ["ZW"] = "Zimbabwe",
 ["SA"] = "Saudi Arabia",
 ["ES"] = "Spain",
 ["ER"] = "Eritrea",
 ["ME"] = "Montenegro",
 ["MD"] = "Moldova",
 ["MG"] = "Madagascar",
 ["MF"] = "Saint Martin",
 ["MA"] = "Morocco",
 ["MC"] = "Monaco",
 ["UZ"] = "Uzbekistan",
 ["MM"] = "Myanmar",
 ["ML"] = "Mali",
 ["MO"] = "Macao",
 ["MN"] = "Mongolia",
 ["MH"] = "Marshall Islands",
 ["MK"] = "Macedonia",
 ["MU"] = "Mauritius",
 ["MT"] = "Malta",
 ["MW"] = "Malawi",
 ["MV"] = "Maldives",
 ["MQ"] = "Martinique",
 ["MP"] = "Northern Mariana Islands",
 ["MS"] = "Montserrat",
 ["MR"] = "Mauritania",
 ["IM"] = "Isle of Man",
 ["UG"] = "Uganda",
 ["TZ"] = "Tanzania",
 ["MY"] = "Malaysia",
 ["MX"] = "Mexico",
 ["IL"] = "Israel",
 ["FR"] = "France",
 ["IO"] = "British Indian Ocean Territory",
 ["SH"] = "Saint Helena",
 ["FI"] = "Finland",
 ["FJ"] = "Fiji",
 ["FK"] = "Falkland Islands",
 ["FM"] = "Micronesia",
 ["FO"] = "Faroe Islands",
 ["NI"] = "Nicaragua",
 ["NL"] = "Netherlands",
 ["NO"] = "Norway",
 ["NA"] = "Namibia",
 ["VU"] = "Vanuatu",
 ["NC"] = "New Caledonia",
 ["NE"] = "Niger",
 ["NF"] = "Norfolk Island",
 ["NG"] = "Nigeria",
 ["NZ"] = "New Zealand",
 ["NP"] = "Nepal",
 ["NR"] = "Nauru",
 ["NU"] = "Niue",
 ["CK"] = "Cook Islands",
 ["XK"] = "Kosovo",
 ["CI"] = "Ivory Coast",
 ["CH"] = "Switzerland",
 ["CO"] = "Colombia",
 ["CN"] = "China",
 ["CM"] = "Cameroon",
 ["CL"] = "Chile",
 ["CC"] = "Cocos Islands",
 ["CA"] = "Canada",
 ["CG"] = "Republic of the Congo",
 ["CF"] = "Central African Republic",
 ["CD"] = "Democratic Republic of the Congo",
 ["CZ"] = "Czech Republic",
 ["CY"] = "Cyprus",
 ["CX"] = "Christmas Island",
 ["CR"] = "Costa Rica",
 ["CW"] = "Curacao",
 ["CV"] = "Cape Verde",
 ["CU"] = "Cuba",
 ["SZ"] = "Swaziland",
 ["SY"] = "Syria",
 ["SX"] = "Sint Maarten",
 ["KG"] = "Kyrgyzstan",
 ["KE"] = "Kenya",
 ["SS"] = "South Sudan",
 ["SR"] = "Suriname",
 ["KI"] = "Kiribati",
 ["KH"] = "Cambodia",
 ["KN"] = "Saint Kitts and Nevis",
 ["KM"] = "Comoros",
 ["ST"] = "Sao Tome and Principe",
 ["SK"] = "Slovakia",
 ["KR"] = "South Korea",
 ["SI"] = "Slovenia",
 ["KP"] = "North Korea",
 ["KW"] = "Kuwait",
 ["SN"] = "Senegal",
 ["SM"] = "San Marino",
 ["SL"] = "Sierra Leone",
 ["SC"] = "Seychelles",
 ["KZ"] = "Kazakhstan",
 ["KY"] = "Cayman Islands",
 ["SG"] = "Singapore",
 ["SE"] = "Sweden",
 ["SD"] = "Sudan",
 ["DO"] = "Dominican Republic",
 ["DM"] = "Dominica",
 ["DJ"] = "Djibouti",
 ["DK"] = "Denmark",
 ["VG"] = "British Virgin Islands",
 ["DE"] = "Germany",
 ["YE"] = "Yemen",
 ["DZ"] = "Algeria",
 ["US"] = "United States",
 ["UY"] = "Uruguay",
 ["YT"] = "Mayotte",
 ["UM"] = "United States Minor Outlying Islands",
 ["LB"] = "Lebanon",
 ["LC"] = "Saint Lucia",
 ["LA"] = "Laos",
 ["TV"] = "Tuvalu",
 ["TW"] = "Taiwan",
 ["TT"] = "Trinidad and Tobago",
 ["TR"] = "Turkey",
 ["LK"] = "Sri Lanka",
 ["LI"] = "Liechtenstein",
 ["LV"] = "Latvia",
 ["TO"] = "Tonga",
 ["LT"] = "Lithuania",
 ["LU"] = "Luxembourg",
 ["LR"] = "Liberia",
 ["LS"] = "Lesotho",
 ["TH"] = "Thailand",
 ["TF"] = "French Southern Territories",
 ["TG"] = "Togo",
 ["TD"] = "Chad",
 ["TC"] = "Turks and Caicos Islands",
 ["LY"] = "Libya",
 ["VA"] = "Vatican",
 ["VC"] = "Saint Vincent and the Grenadines",
 ["AE"] = "United Arab Emirates",
 ["AD"] = "Andorra",
 ["AG"] = "Antigua and Barbuda",
 ["AF"] = "Afghanistan",
 ["AI"] = "Anguilla",
 ["VI"] = "U.S. Virgin Islands",
 ["IS"] = "Iceland",
 ["IR"] = "Iran",
 ["AM"] = "Armenia",
 ["AL"] = "Albania",
 ["AO"] = "Angola",
 ["AQ"] = "Antarctica",
 ["AS"] = "American Samoa",
 ["AR"] = "Argentina",
 ["AU"] = "Australia",
 ["AT"] = "Austria",
 ["AW"] = "Aruba",
 ["IN"] = "India",
 ["AX"] = "Aland Islands",
 ["AZ"] = "Azerbaijan",
 ["IE"] = "Ireland",
 ["ID"] = "Indonesia",
 ["UA"] = "Ukraine",
 ["QA"] = "Qatar",
 ["MZ"] = "Mozambique"
}


local success, countryCode = pcall(function()
    return LocalizationS:GetCountryRegionForPlayerAsync(Player)
end)

if success then
    local country = countryMap[countryCode] or "a safe country"
    example("FUCK, Im from " .. country .. "!")
else
    print("Failed to retrieve the player's country/region: " .. tostring(countryCode))
end
example("The Fuck You Mean? 💀")
example("Nigga What The Fuck You Mean")





chat.Size = UDim2.new(0.3, 0, 0.2, 0)
chat.Position = UDim2.new(0.35, 0, 0.7, 0)
chat.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
chat.BorderColor3 = Color3.fromRGB(70, 70, 70)
chat.BorderSizePixel = 1
chat.Text = "Chat"
chat.TextSize = 18
chat.TextColor3 = Color3.new(1, 1, 1)
chat.Font = Enum.Font.Code
chat.Parent = GazerMain


UICornerChat.CornerRadius = UDim.new(0, 10)
UICornerChat.Parent = chat


local function createButtonTween(button)
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {BackgroundColor3 = Color3.fromRGB(100, 100, 100)} -- Change color when clicked

    local tween = TweenService:Create(button, tweenInfo, goal)
    return tween
end

local function isEmoji(c)
    local code = utf8.codepoint(c)  

    
    if (code >= 0x1F600 and code <= 0x1F64F) or  
       (code >= 0x1F300 and code <= 0x1F5FF) or  
       (code >= 0x1F680 and code <= 0x1F6FF) or  
       (code >= 0x1F700 and code <= 0x1F77F) or  
       (code >= 0x1F900 and code <= 0x1F9FF) or  
       (code >= 0x2600 and code <= 0x26FF) or    
       (code >= 0x2700 and code <= 0x27BF) or    
       (code >= 0x1F1E6 and code <= 0x1F1FF) then 
        return true  
    end
    return false  
end






local function isEmoji(c)
    local code = utf8.codepoint(c)  

    
    if (code >= 0x1F600 and code <= 0x1F64F) or  
       (code >= 0x1F300 and code <= 0x1F5FF) or  
       (code >= 0x1F680 and code <= 0x1F6FF) or  
       (code >= 0x1F700 and code <= 0x1F77F) or  
       (code >= 0x1F900 and code <= 0x1F9FF) or  
       (code >= 0x2600 and code <= 0x26FF) or    
       (code >= 0x2700 and code <= 0x27BF) or    
       (code >= 0x1F1E6 and code <= 0x1F1FF) then 
        return true  
    end
    return false  
end




local function modifyText(input)
local replacements = {
        sex = "s••••••e•x•",
        Sex = "S••••••e•x",
        SEX = "S••••••E•X",
        ass = "•a••••••s•s•",
        Ass = "•A••••••s•s•",
        ASS = "•A••••••S•S•",
        fuck = "f••••••u•c•k•",
        Fuck = "F••••••u•c•k•",
        FUCK = "F••••••U•C•K•",
        damn = "•d••••••a••m••n•",
        Damn = "•D••••••a••m••n•",
        DAMN = "•D••••••A••M••N•",
        shit = "•s••••••h•i•t•",
        Shit = "•S••••••h•i•t•",
        SHIT = "•S••••••H•I•T•",
        pornhub = "•p••••••o•r•n•••h•••ub•",
        Pornhub = "•P••••••o•r•n•••h•••ub•",
        porn = "•p••••••o•r•n•",
        Porn = "•P••••••o•r•n•",
        PORN = "•P••••••O•R•N•",
        bitch = "•b•i•t•••c•h•",
        Bitch = "•B•i•t•••c•h•",
        BITCH = "•B•I•T•••C•H•",
        nigga = "ṇ•ị•g•••g•a",
        nigger = "ṇ•ị•g•••g•e•r\b•n•",
        Nigga = "Ṇ•ị•g•••g•a",
        Nigger = "Ṇ•ị•g•••g•e•r\b•n•",
        NIGGER = "Ṇ•Ị•Ģ•••Ģ•E•R\b•N•",
        NIGGAS = "Ṇ•Ị•Ģ•••Ģ•A•S\b•N•",
        NIGGA = "Ṇ•Ị•Ģ•••Ģ•A\b•N•",
        dick = "d••••••i•c•k•",
        Dick = "D••••••i•c•k•",
        DICK = "D••••••I•C•K•",
        cock = "c••••••o•c•k•",
        Cock = "C••••••o•c•k•",
        COCK = "C••••••O•C•K•",
        gay = "g••••••a•y",
        Gay = "Ģ••••••a•y",
        GAY = "Ģ••••••A•Y",
        pussy = "•p•u•s•s••••••y•",
        Pussy = "•P•u•s•s••••••y•",
        PUSSY = "•P•U•S•S••••••Y•",
        breast = "•b•r••••••e•a•s•t•",
        Breast = "•B•r••••••e•a•s•t•",
        BREAST ="•B•R••••••E•A•S•T•",
        ["0"] = "\xEF\xBC\x90•",
    ["1"] = "\xEF\xBC\x91•",
    ["2"] = "\xEF\xBC\x92•",  
    ["3"] = "\xEF\xBC\x93•",  
    ["4"] = "\xEF\xBC\x94•",  
    ["5"] = "\xEF\xBC\x95•",  
    ["6"] = "\xEF\xBC\x96•", 
    ["7"] = "\xEF\xBC\x97•", 
    ["8"] = "\xEF\xBC\x98•",  
    ["9"] = "\xEF\xBC\x99•",  
    }

    local lowerInput = input

    
    for word, replacement in pairs(replacements) do
        lowerInput = lowerInput:gsub("(%s?)(" .. word .. ")(%s?)", function(before, matched, after)
            local modifiedReplacement = replacement
            if before ~= "" then
                modifiedReplacement = modifiedReplacement
            end
            if after ~= "" then
                modifiedReplacement = modifiedReplacement
            end
            return before .. "{" .. modifiedReplacement .. "}" .. after
        end)
    end

    
    local emojiPattern = "[%z\1-\127\194-\244][\128-\191]*"
    local modifiedInput = lowerInput:gsub(emojiPattern, function(c)
        if isEmoji(c) then
            return "{" .. c .. "}"
        end
        return c
    end)

    
    local result = ""
    local insideReplacedWord = false

    for i = 1, #modifiedInput do
        local char = modifiedInput:sub(i, i)

        if char == "{" then
            insideReplacedWord = true
        elseif char == "}" then
            insideReplacedWord = false
        elseif insideReplacedWord then
            result = result .. char
        elseif char == " " then
        result = result .. "\b"
    
        else
            result = result .. char
            
            if i < #modifiedInput and modifiedInput:sub(i + 1, i + 1) ~= " " then
                result = result .. "•"
            end
        end
    end

    
    result = result:gsub("{", ""):gsub("}", "")
    result = result:gsub("•", "\xEF\xBF\xB8")
    result = result:gsub("|", "\r")
    result = result:gsub("Y", "Ү")
    result = result:gsub("h", "һ")
    result = result:gsub("H", "Ң")
    result = result:gsub("I", "Ӏ")
    

    
    local A_1 = result
    local A_2 = "All"

    if game:GetService("TextChatService"):FindFirstChild("TextChannels") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(A_1)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("<<</>>>\b" .. A_1, A_2)
    end
end
    

    
    
    


chat.MouseButton1Click:Connect(function()
    local inputString = TextBax.Text
    modifyText(inputString)

    
    local tween = createButtonTween(chat)
    tween:Play()

    
    tween.Completed:Connect(function()
        chat.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Reset to original color
    end)
end)
    print("PATCHED")
end)
GamesSection:NewButton("ScriptHUB 3v :)", "BIG HUB 256 GAMES", function()
loadstring(game:HttpGet("https://github.com/scripthubekitten/eee/raw/refs/heads/main/eezas", true))()
    print("Clicked")
end)
GamesSection:NewButton("FE DrawTool", "you need items to draw!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Affexter/Programs/refs/heads/main/scripts/tooldrawFE.lua"))()
end)
GamesSection:NewButton("Spray duper BUGGED", "Spray duper BUGGED", function()
    local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Spam = Instance.new("TextButton")
local close = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")


ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(34,139,34)
main.Position = UDim2.new(0.0203577988, 0, 0.641277611, 0)
main.Size = UDim2.new(0, 332, 0, 211)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.Size = UDim2.new(0, 332, 0, 31)
title.Font = Enum.Font.GothamBold
title.Text = "SpraySpam Gui Script By: Balli"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 17

Spam.Name = "Spam"
Spam.Parent = main
Spam.BackgroundColor3 = Color3.new(0, 0, 0)
Spam.Position = UDim2.new(0.363293529, 0, 0.28638497, 0)
Spam.Size = UDim2.new(0, 110, 0, 50)
Spam.Font = Enum.Font.GothamBold
Spam.Text = "Spam"
Spam.TextColor3 = Color3.new(1, 1, 1)
Spam.TextScaled = true
Spam.TextSize = 10
Spam.TextWrapped = true
Spam.MouseButton1Down:connect(function()
wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "Subscribe to Nyaha Gaming";
Text = "Executed.!";
})

game:GetService('RunService').Stepped:connect(function()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Spray" then
if v.Handle.Mesh then
v.Handle.Mesh:Destroy()
end
v.Parent = workspace
end
end
end)
local function paint()
for i,v in pairs(game.Workspace:GetChildren())do
if v.Name == "Handle" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
v.Transparency = 1
v.CanCollide = false
wait()
v.CFrame = game.Players.LocalPlayer.Character["Left Leg"].CFrame
end
end
end
local function equip()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
if v.Name == "Spray" then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
end
while wait(0.05) do
paint()
equip()
end
end)


close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(0, 0, 0)
close.Position = UDim2.new(0.879518092, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 31)
close.Font = Enum.Font.GothamBlack
close.Text = "Close"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.new(0, 0, 1)
openmain.Position = UDim2.new(.001, 0, .79, 0)
openmain.Size = UDim2.new(0, 100, 0, 28)
openmain.Active = true
openmain.Draggable = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(0, 0, 0)
open.Size = UDim2.new(0, 100, 0, 28)
open.Font = Enum.Font.GothamBold
open.Text = "OPEN"
open.TextColor3 = Color3.new(1, 1, 1)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "Made By Balligusapo";
Text = "Have Fun Exploiting!";
})
end)
GamesSection:NewButton("Şex Animations 15R ONLY", "R15 only", function()
    local a = game:GetService("Players").LocalPlayer
repeat
    task.wait()
until game:IsLoaded() and game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate") and
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
    game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Animator")
local b = game:GetService("Players").LocalPlayer.Character.Animate
local c = "http://www.roblox.com/asset/?id="
local d
if not getgenv().OrigLighting then
    getgenv().OrigLighting = game.Lighting.ClockTime
end
getgenv().AlreadyLoaded = false
game.StarterPlayer.AllowCustomAnimations = true
workspace:SetAttribute("RbxLegacyAnimationBlending", true)
if not getgenv().OriginalAnimations then
    getgenv().OriginalAnimations = {}
    if b:FindFirstChild("pose") then
        local e = game:GetService("Players").LocalPlayer.Character.Animate.pose:FindFirstChildOfClass("Animation")
        if e then
            OriginalAnimations[3] = e.AnimationId
        end
    end
    OriginalAnimations[1] = b.idle.Animation1.AnimationId
    OriginalAnimations[2] = b.idle.Animation2.AnimationId
    OriginalAnimations[4] = b.walk:FindFirstChildOfClass("Animation").AnimationId
    OriginalAnimations[5] = b.run:FindFirstChildOfClass("Animation").AnimationId
    OriginalAnimations[6] = b.jump:FindFirstChildOfClass("Animation").AnimationId
    OriginalAnimations[7] = b.climb:FindFirstChildOfClass("Animation").AnimationId
    OriginalAnimations[8] = b.fall:FindFirstChildOfClass("Animation").AnimationId
    if b:FindFirstChild("swim") then
        OriginalAnimations[9] = b.swim:FindFirstChildOfClass("Animation").AnimationId
        OriginalAnimations[10] = b.swimidle:FindFirstChildOfClass("Animation").AnimationId
    end
end
local function f(g)
    return getgenv().OriginalAnimations[g]
end
if syn and syn.queue_on_teleport and not getgenv().AlreadyLoaded then
    syn.queue_on_teleport(
        "loadstring(game:HttpGet('https://raw.githubusercontent.com/Eazvy/public-scripts/main/Universal_Animations_Emotes.lua'))()"
    )
elseif queue_on_teleport and not getgenv().AlreadyLoaded then
    queue_on_teleport(
        "loadstring(game:HttpGet('https://raw.githubusercontent.com/Eazvy/public-scripts/main/Universal_Animations_Emotes.lua'))()"
    )
end
local h = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        h:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        h:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
local i = 0
local j = 0
getgenv().Settings = {
    Favorite = {},
    Custom = {
        Name = nil,
        Idle = nil,
        Idle2 = nil,
        Idle3 = nil,
        Walk = nil,
        Run = nil,
        Jump = nil,
        Climb = nil,
        Fall = nil,
        Swim = nil,
        SwimIdle = nil,
        Wave = 9527883498,
        Laugh = 507770818,
        Cheer = 507770677,
        Point = 507770453,
        Sit = 2506281703,
        Dance = 507771019,
        Dance2 = 507776043,
        Dance3 = 507777268,
        Weight = 9,
        Weight2 = 1
    },
    Chat = false,
    Day = false,
    Spy = false,
    Player,
    EmoteChat = false,
    Animate = false,
    RandomAnim = false,
    Refresh = false,
    DeathPosition,
    Noclip = false,
    RapePlayer = false,
    TwerkAss = false,
    TwerkAss2 = false,
    RandomEmote = false,
    Goto = false,
    Annoy = false,
    CopyMovement = false,
    SyncAnimations = false,
    PlayAlways = false,
    Platform = false,
    FlySpeed = 50,
    InfJump = false,
    ClickTeleport = false,
    ClickToSelect = false,
    SyncEmote = false,
    PlayerSync,
    AnimationSpeedToggle = false,
    CurrentAnimation = "",
    FreezeAnimation = false,
    FreezeEmote = false,
    EmotePrefix = "/em",
    AnimationPrefix = "/a",
    EmoteSpeed = 1,
    AnimationSpeed = 1,
    ReverseSpeed = -1,
    SelectedAnimation = "",
    LastEmote = "",
    Looped = false,
    Reversed = false,
    Time = false,
    TimePosition = 1
}
if makefolder and not isfile("Eazvy-Hub") then
    makefolder("Eazvy-Hub")
end
if isfile and not isfile("Eazvy-Hub/Animations_Settings.txt") and writefile then
    writefile("Eazvy-Hub/Animations_Settings.txt", game:GetService("HttpService"):JSONEncode(getgenv().Settings))
end
function UpdateFile()
    if writefile then
        writefile("Eazvy-Hub/Animations_Settings.txt", game:GetService("HttpService"):JSONEncode(getgenv().Settings))
    end
end
if readfile and isfile("Eazvy-Hub/Animations_Settings.txt") then
    getgenv().Settings = game:GetService("HttpService"):JSONDecode(readfile("Eazvy-Hub/Animations_Settings.txt"))
    if Settings.EmotePrefix and Settings.EmotePrefix == "/e" then
        Settings.EmotePrefix = "/em"
        UpdateFile()
    end
end
local k = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
local l = game:GetService("HttpService")
local function m()
    local n = {}
    local o =
        k(
        {
            Url = "https://games.roblox.com/v1/games/" ..
                tostring(game.PlaceId) .. "/servers/Public?sortOrder=Desc&limit=100"
        }
    )
    local p = l:JSONDecode(o.Body)
    if p and p.data then
        for q, r in next, p.data do
            if type(r) == "table" and tonumber(r.playing) and tonumber(r.maxPlayers) and r.playing < r.maxPlayers then
                table.insert(n, 1, r.id)
            end
        end
    end
    if #n > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(
            game.PlaceId,
            n[math.random(1, #n)],
            game.Players.LocalPlayer
        )
    end
    game:GetService("TeleportService").TeleportInitFailed:Connect(
        function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(
                game.PlaceId,
                n[math.random(1, #n)],
                game.Players.LocalPlayer
            )
        end
    )
end
function getPlayersByName(s)
    local s, t, u = string.lower(s), #s, {}
    for v, r in pairs(game:GetService("Players"):GetPlayers()) do
        if r.Name ~= game:GetService("Players").LocalPlayer then
            if s:sub(0, 1) == "@" then
                if string.sub(string.lower(r.Name), 1, t - 1) == s:sub(2) then
                    return r
                end
            else
                if string.sub(string.lower(r.Name), 1, t) == s or string.sub(string.lower(r.DisplayName), 1, t) == s then
                    return r
                end
            end
        end
    end
end
local w = loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/Eazvy-Hub/main/Content/UILibrary.lua"))()
local function x(y, z)
    w:MakeNotification(
        {Name = "Animation - Error", Content = y .. "\n" .. z, Image = "rbxassetid://161551681", Time = 4}
    )
end
local function A(y, z)
    w:MakeNotification(
        {Name = "Animation - Success", Content = y .. "\n" .. z, Image = "rbxassetid://4914902889", Time = 4}
    )
end
local function B(y, z, C)
    w:MakeNotification(
        {Name = "Animation - Success", Content = y .. "\n" .. z, Image = "rbxassetid://4914902889", Time = C}
    )
end
task.spawn(
    function()
        if getgenv().Teleported and game.CoreGui:FindFirstChild("Orion") then
            game.CoreGui.Orion.Enabled = false
            A(
                "Successfully Loaded Animations Script",
                "Press Q to Toggle UI we've minimized it because you're coming from a different server."
            )
        end
    end
)
local D = {
    ["Fashion"] = 3333331310,
    ["Baby Dance"] = 4265725525,
    ["Cha-Cha"] = 6862001787,
    ["Monkey"] = 3333499508,
    ["Shuffle"] = 4349242221,
    ["Top Rock"] = 3361276673,
    ["Around Town"] = 3303391864,
    ["Fancy Feet"] = 3333432454,
    ["Hype Dance"] = 3695333486,
    ["Bodybuilder"] = 3333387824,
    ["Idol"] = 4101966434,
    ["Curtsy"] = 4555816777,
    ["Happy"] = 4841405708,
    ["Quiet Waves"] = 7465981288,
    ["Sleep"] = 4686925579,
    ["Floss Dance"] = 5917459365,
    ["Shy"] = 3337978742,
    ["Godlike"] = 3337994105,
    ["Hero Landing"] = 5104344710,
    ["High Wave"] = 5915690960,
    ["Cower"] = 4940563117,
    ["Bored"] = 5230599789,
    ["Show Dem Wrists -KSI"] = 7198989668,
    ["Celebrate"] = 3338097973,
    ["Dash"] = 582855105,
    ["Beckon"] = 5230598276,
    ["Haha"] = 3337966527,
    ["Lasso Turn - Tai Verdes"] = 7942896991,
    ["Line Dance"] = 4049037604,
    ["Shrug"] = 3334392772,
    ["Point2"] = 3344585679,
    ["Stadium"] = 3338055167,
    ["Confused"] = 4940561610,
    ["Side to Side"] = 3333136415,
    ['Old Town Road Dance - Lil Nas X"'] = 5937560570,
    ["Hello"] = 3344650532,
    ["Dolphin Dance"] = 5918726674,
    ["Samba"] = 6869766175,
    ["Break Dance"] = 5915648917,
    ["Hips Poppin' - Zara Larsson"] = 6797888062,
    ["Wake Up Call - KSI"] = 7199000883,
    ["Greatest"] = 3338042785,
    ["On The Outside - Twenty One"] = 7422779536,
    ["Boxing Punch - KSI"] = 7202863182,
    ["Sad"] = 4841407203,
    ["Flowing Breeze"] = 7465946930,
    ["Twirl"] = 3334968680,
    ["Jumping Wave"] = 4940564896,
    ["HOLIDAY Dance - Lil Nas X (LNX)"] = 5937558680,
    ["Take Me Under - Zara Larsson"] = 6797890377,
    ["Shuffle"] = 4349242221,
    ["Dizzy"] = 3361426436,
    ["Dancing' Shoes - Twenty One"] = 7404878500,
    ["Fashionable"] = 3333331310,
    ["Fast Hands"] = 4265701731,
    ["Tree"] = 4049551434,
    ["Agree"] = 4841397952,
    ["Power Blast"] = 4841403964,
    ["Swoosh"] = 3361481910,
    ["Jumping Cheer"] = 5895324424,
    ["Disagree"] = 4841401869,
    ["Rodeo Dance - Lil Nas X (LNX)"] = 5918728267,
    ["It Ain't My Fault - Zara Larsson"] = 6797891807,
    ["Rock On"] = 5915714366,
    ["Block Partier"] = 6862022283,
    ["Dorky Dance"] = 4212455378,
    ["Zombie"] = 4210116953,
    ["AOK - Tai Verdes"] = 7942885103,
    ["T"] = 3338010159,
    ["Cobra Arms - Tai   Verdes"] = 7942890105,
    ["Panini Dance - Lil Nas X (LNX)"] = 5915713518,
    ["Fishing"] = 3334832150,
    ["Robot"] = 3338025566,
    ["Around Town"] = 3303391864,
    ["Saturday Dance - Twenty One"] = 7422807549,
    ["Top Rock"] = 3361276673,
    ["Keeping Time"] = 4555808220,
    ["Air Dance"] = 4555782893,
    ["Fancy Feet"] = 3333432454,
    ["Rock Guitar - Royal Blood"] = 6532134724,
    ["Borock's Rage"] = 3236842542,
    ["Ud'zal's Summoning"] = 3303161675,
    ["Y"] = 4349285876,
    ["Swan Dance"] = 7465997989,
    ["Louder"] = 3338083565,
    ["Up and Down - Twenty One"] = 7422797678,
    ["Swish"] = 3361481910,
    ["Drummer Moves - Twenty One"] = 7422527690,
    ["Sneaky"] = 3334424322,
    ["Heisman Pose"] = 3695263073,
    ["Jacks"] = 3338066331,
    ["Cha-Cha 2"] = 3695322025,
    ["BURBERRY LOLA ATTITUDE - NIMBUS"] = 10147821284,
    ["BURBERRY LOLA  ATTITUDE - GEM"] = 10147815602,
    ["BURBERRY LOLA ATTITUDE - HYDRO"] = 10147823318,
    ["BURBERRY LOLA ATTITUDE - BLOOM"] = 10147817997,
    ["Superhero Reveal"] = 3695373233,
    ["Air Guitar"] = 3695300085,
    ["Dismissive Wave"] = 3333272779,
    ["Country Line  Dance - Lil Nas X"] = 5915712534,
    ["Salute"] = 3333474484,
    ["Applaud"] = 5915693819,
    ["Get Out"] = 3333272779,
    ["Hwaiting (화이팅)"] = 9527885267,
    ["Annyeong (안녕)"] = 9527883498,
    ["Bunny Hop"] = 4641985101,
    ["Sandwich Dance"] = 4406555273,
    ["Hyperfast  5G Dance Move"] = 9408617181,
    ["Victory - 24kGoldn"] = 9178377686,
    ["Tantrum"] = 5104341999,
    ["Rock Star - Royal Blood"] = 10714400171,
    ["Drum Solo - Royal Blood"] = 6532839007,
    ["Drum Master - Royal Blood"] = 6531483720,
    ["High Hands"] = 9710985298,
    ["Tilt"] = 3334538554,
    ["Gashina - SUNMI"] = 9527886709,
    ["Chicken Dance"] = 4841399916,
    ["You can't sit with us - Sunmi"] = 9983520970,
    ["Frosty Flair - Tommy Hilfiger"] = 10214311282,
    ["Floor Rock Freeze - Tommy Hilfiger"] = 10214314957,
    ["Boom Boom Clap - George Ezra"] = 10370346995,
    ["Cartwheel - George Ezra"] = 10370351535,
    ["Chill Vibes - George Ezra"] = 10370353969,
    ["Sidekicks - George Ezra"] = 10370362157,
    ["The Conductor - George Ezra"] = 10370359115,
    ["Super Charge"] = 10478338114,
    ["Swag Walk"] = 10478341260,
    ["Mean Mug - Tommy Hilfiger"] = 10214317325,
    ["V Pose - Tommy Hilfiger"] = 10214319518,
    ["Uprise - Tommy Hilfiger"] = 10275008655,
    ["2 Baddies Dance Move - NCT 127"] = 12259828678,
    ["Kick It Dance Move - NCT 127"] = 12259826609,
    ["Sticker Dance Move - NCT 127"] = 12259825026,
    ["Elton John - Rock Out"] = 11753474067,
    ["Elton John - Heart Skip"] = 11309255148,
    ["Elton John - Still Standing"] = 11444443576,
    ["Elton John - Elevate"] = 11394033602,
    ["Elton John - Cat Man"] = 11444441914,
    ["Elton John - Piano Jump"] = 11453082181,
    ["Alo Yoga Pose - Triangle"] = 12507084541,
    ["Alo Yoga Pose - Warrior II"] = 12507083048,
    ["Alo Yoga Pose - Lotus Position"] = 12507085924,
    ["Alo Yoga Pose - Warrior II"] = 12507083048,
    ["Alo Yoga Pose - Triangle"] = 12507084541,
    ["TWICE-Moonlight-Sunrise"] = 12714233242,
    ["TWICE-Set-Me-Free-Dance-1"] = 12714228341,
    ["TWICE-Set-Me-Free-Dance-2"] = 12714231087,
    ["Ay-Yo-Dance-Move-NCT-127"] = 12804157977,
    ["TWICE-The-Feels"] = 12874447851,
    ["Zombie"] = 10714089137,
    ["Rise-Above-The-Chainsmokers"] = 12992262118,
    ["TWICE-What-Is-Love"] = 13327655243,
    ["Man-City-Bicycle-Kick"] = 13421057998,
    ["TWICE-Fancy"] = 13520524517,
    ["TWICE Pop by Nayeon"] = 13768941455,
    ["Tommy - Archer"] = 13823324057,
    ["TWICE-Pop-by-Nayeon"] = 13768941455,
    ["Man City Backflip"] = 13694100677,
    ["Man-City-Scorpion-Kick"] = 13694096724,
    ["Arm Twist"] = 10713968716,
    ["Tommy - Archer"] = 13823324057,
    ["YUNGBLUD – HIGH KICK"] = 14022936101,
    ["TWICE Like Ooh-Ahh"] = 14123781004,
    ["Baby Queen - Air Guitar & Knee Slide"] = 14352335202,
    ["Baby Queen - Dramatic Bow"] = 14352337694,
    ["Baby Queen - Face Frame"] = 14352340648,
    ["Baby Queen - Bouncy Twirl"] = 14352343065,
    ["Baby Queen - Strut"] = 14352362059,
    ["BLACKPINK Pink Venom - Get em Get em Get em"] = 14548619594,
    ["BLACKPINK Pink Venom - I Bring the Pain Like…"] = 14548620495,
    ["BLACKPINK Pink Venom - Straight to Ya Dome"] = 14548621256,
    ["TWICE LIKEY"] = 14899979575,
    ["TWICE Feel Special"] = 14899980745,
    ["BLACKPINK Shut Down - Part 1"] = 14901306096,
    ["BLACKPINK Shut Down - Part 2"] = 14901308987,
    ["Bone Chillin' Bop"] = 15122972413,
    ["Paris Hilton - Sliving For The Groove"] = 15392759696,
    ["Paris Hilton - Iconic IT-Grrrl"] = 15392756794,
    ["Paris Hilton - Checking My Angles"] = 15392752812,
    ["BLACKPINK JISOO Flower"] = 15439354020,
    ["BLACKPINK JENNIE You and Me"] = 15439356296,
    ["Rock n Roll"] = 15505458452,
    ["Air Guitar"] = 15505454268,
    ["Victory Dance"] = 15505456446,
    ["Flex Walk"] = 15505459811,
    ["Olivia Rodrigo Head Bop"] = 15517864808,
    ["Olivia Rodrigo good 4 u"] = 15517862739,
    ["Olivia Rodrigo Fall Back to Float"] = 15549124879,
    ["Nicki Minaj That's That Super Bass"] = 15571446961,
    ["Nicki Minaj Boom Boom Boom"] = 15571448688,
    ["Nicki Minaj Anaconda"] = 15571450952,
    ["Nicki Minaj Starships"] = 15571453761,
    ["Yungblud Happier Jump"] = 15609995579,
    ["Festive Dance"] = 15679621440,
    ["BLACKPINK LISA Money"] = 15679623052,
    ["BLACKPINK ROSÉ On The Ground"] = 15679624464,
    ["Imagine Dragons - “Bones” Dance"] = 15689279687,
    ['GloRilla - "Tomorrow" Dance'] = 15689278184,
    ["d4vd - Backflip"] = 15693621070,
    ["ericdoa - dance"] = 15698402762,
    ["Cuco - Levitate"] = 15698404340,
    ["Mean Girls Dance Break"] = 15963314052,
    ["Paris Hilton Sanasa"] = 16126469463,
    ["BLACKPINK Ice Cream"] = 16181797368,
    ["BLACKPINK Kill This Love"] = 16181798319,
    ["TWICE I GOT YOU part 1"] = 16215030041,
    ["TWICE I GOT YOU part 2"] = 16256203246,
    ["Dave's Spin Move - Glass Animals"] = 16272432203,
    ["Sol de Janeiro - Samba"] = 16270690701,
    ["Beauty Touchdown"] = 16302968986,
    ["Skadoosh Emote - Kung Fu Panda 4"] = 16371217304,
    ["Jawny - Stomp"] = 16392075853,
    ["Mae Stephens - Piano Hands"] = 16553163212,
    ["BLACKPINK Boombayah Emote"] = 16553164850,
    ["BLACKPINK DDU-DU DDU-DU"] = 16553170471,
    ["HIPMOTION - Amaarae"] = 16572740012,
    ["Mae Stephens – Arm Wave"] = 16584481352,
    ["Wanna play?"] = 16646423316,
    ["BLACKPINK-How-You-Like-That"] = 16874470507,
    ["BLACKPINK - Lovesick Girls"] = 16874472321,
    ["Mini Kong"] = 17000021306,
    ["HUGO Let's Drive!"] = 17360699557,
    ["Wisp - air guitar"] = 17370775305,
    ["Vans Ollie"] = 18305395285,
    ["Sturdy Dance - Ice Spice"] = 17746180844,
    ["Shuffle"] = 17748314784,
    ["Rolling Stones Guitar Strum"] = 18148804340,
    ["Rock Out - Bebe Rexha"] = 18225053113,
    ["SpongeBob Imaginaaation 🌈"] = 18443237526,
    ["SpongeBob Dance"] = 18443245017,
    ["Shrek Roar"] = 18524313628,
    ["Team USA Breaking Emote"] = 18526288497,
    ["NBA WNBA Fadeaway"] = 18526362841,
    ["Vroom Vroom"] = 18526397037,
    ["TMNT Dance"] = 18665811005,
    ["Olympic Dismount"] = 18665825805
}
local E = {
    Emotes = {Weight = 9, Weight2 = 1},
    Stylish = {
        Idle = 616136790,
        Idle2 = 616138447,
        Idle3 = 886888594,
        Walk = 616146177,
        Run = 616140816,
        Jump = 616139451,
        Climb = 616133594,
        Fall = 616134815,
        Swim = 616143378,
        SwimIdle = 616144772,
        Weight = 9,
        Weight2 = 1
    },
    Zombie = {
        Idle = 616158929,
        Idle2 = 616160636,
        Idle3 = 885545458,
        Walk = 616168032,
        Run = 616163682,
        Jump = 616161997,
        Climb = 616156119,
        Fall = 616157476,
        Swim = 616165109,
        SwimIdle = 616166655,
        Weight = 9,
        Weight2 = 1
    },
    Robot = {
        Idle = 616088211,
        Idle2 = 616089559,
        Idle3 = 885531463,
        Walk = 616095330,
        Run = 616091570,
        Jump = 616090535,
        Climb = 616086039,
        Fall = 616087089,
        Swim = 616092998,
        SwimIdle = 616094091,
        Weight = 9,
        Weight2 = 1
    },
    Toy = {
        Idle = 782841498,
        Idle2 = 782845736,
        Idle3 = 980952228,
        Walk = 782843345,
        Run = 782842708,
        Jump = 782847020,
        Climb = 782843869,
        Fall = 782846423,
        Swim = 782844582,
        SwimIdle = 782845186,
        Weight = 9,
        Weight2 = 1
    },
    Cartoony = {
        Idle = 742637544,
        Idle2 = 742638445,
        Idle3 = 885477856,
        Walk = 742640026,
        Run = 742638842,
        Jump = 742637942,
        Climb = 742636889,
        Fall = 742637151,
        Swim = 742639220,
        SwimIdle = 742639812,
        Weight = 9,
        Weight2 = 1
    },
    Superhero = {
        Idle = 616111295,
        Idle2 = 616113536,
        Idle3 = 885535855,
        Walk = 616122287,
        Run = 616117076,
        Jump = 616115533,
        Climb = 616104706,
        Fall = 616108001,
        Swim = 616119360,
        SwimIdle = 616120861,
        Weight = 9,
        Weight2 = 1
    },
    Mage = {
        Idle = 707742142,
        Idle2 = 707855907,
        Idle3 = 885508740,
        Walk = 707897309,
        Run = 707861613,
        Jump = 707853694,
        Climb = 707826056,
        Fall = 707829716,
        Swim = 707876443,
        SwimIdle = 707894699,
        Weight = 9,
        Weight2 = 1
    },
    Levitation = {
        Idle = 616006778,
        Idle2 = 616008087,
        Idle3 = 886862142,
        Walk = 616013216,
        Run = 616010382,
        Jump = 616008936,
        Climb = 616003713,
        Fall = 616005863,
        Swim = 616011509,
        SwimIdle = 616012453,
        Weight = 9,
        Weight2 = 1
    },
    Vampire = {
        Idle = 1083445855,
        Idle2 = 1083450166,
        Idle3 = 1088037547,
        Walk = 1083473930,
        Run = 1083462077,
        Jump = 1083455352,
        Climb = 1083439238,
        Fall = 1083443587,
        Swim = 1083464683,
        SwimIdle = 1083467779,
        Weight = 9,
        Weight2 = 1
    },
    Elder = {
        Idle = 845397899,
        Idle2 = 845400520,
        Idle3 = 901160519,
        Walk = 845403856,
        Run = 845386501,
        Jump = 845398858,
        Climb = 845392038,
        Fall = 845396048,
        Swim = 845401742,
        SwimIdle = 845403127,
        Weight = 9,
        Weight2 = 1
    },
    Werewolf = {
        Idle = 1083195517,
        Idle2 = 1083214717,
        Idle3 = 1099492820,
        Walk = 1083178339,
        Run = 1083216690,
        Jump = 1083218792,
        Climb = 1083182000,
        Fall = 1083189019,
        Swim = 1083222527,
        SwimIdle = 1083225406,
        Weight = 9,
        Weight2 = 1
    },
    Knight = {
        Idle = 657595757,
        Idle2 = 657568135,
        Idle3 = 885499184,
        Walk = 657552124,
        Run = 657564596,
        Jump = 658409194,
        Climb = 658360781,
        Fall = 657600338,
        Swim = 657560551,
        SwimIdle = 657557095,
        Weight = 9,
        Weight2 = 1
    },
    Bold = {
        Idle = 16738333868,
        Idle2 = 16738334710,
        Idle3 = 16738335517,
        Walk = 16738340646,
        Run = 16738337225,
        Jump = 16738336650,
        Climb = 16738332169,
        Fall = 16738333171,
        Swim = 16738339158,
        SwimIdle = 16738339817,
        Weight = 9,
        Weight2 = 1
    },
    Astronaut = {
        Idle = 891621366,
        Idle2 = 891633237,
        Idle3 = 1047759695,
        Walk = 891667138,
        Run = 891636393,
        Jump = 891627522,
        Climb = 891609353,
        Fall = 891617961,
        Swim = 891639666,
        SwimIdle = 891663592,
        Weight = 9,
        Weight2 = 1
    },
    Bubbly = {
        Idle = 910004836,
        Idle2 = 910009958,
        Idle3 = 1018536639,
        Walk = 910034870,
        Run = 910025107,
        Jump = 910016857,
        Climb = 909997997,
        Fall = 910001910,
        Swim = 910028158,
        SwimIdle = 910030921,
        Weight = 9,
        Weight2 = 1
    },
    Pirate = {
        Idle = 750781874,
        Idle2 = 750782770,
        Idle3 = 885515365,
        Walk = 750785693,
        Run = 750783738,
        Jump = 750782230,
        Climb = 750779899,
        Fall = 750780242,
        Swim = 750784579,
        SwimIdle = 750785176,
        Weight = 9,
        Weight2 = 1
    },
    Rthro = {
        Idle = 2510196951,
        Idle2 = 2510197257,
        Idle3 = 3711062489,
        Walk = 2510202577,
        Run = 2510198475,
        Jump = 2510197830,
        Climb = 2510192778,
        Fall = 2510195892,
        Swim = 2510199791,
        SwimIdle = 2510201162,
        Weight = 9,
        Weight2 = 1
    },
    Ninja = {
        Idle = 656117400,
        Idle2 = 656118341,
        Idle3 = 886742569,
        Walk = 656121766,
        Run = 656118852,
        Jump = 656117878,
        Climb = 656114359,
        Fall = 656115606,
        Swim = 656119721,
        SwimIdle = 656121397,
        Weight = 9,
        Weight2 = 1
    },
    Oldschool = {
        Idle = 5319828216,
        Idle2 = 5319831086,
        Idle3 = 5392107832,
        Walk = 5319847204,
        Run = 5319844329,
        Jump = 5319841935,
        Climb = 5319816685,
        Fall = 5319839762,
        Swim = 5319850266,
        SwimIdle = 5319852613,
        Weight = 9,
        Weight2 = 1
    },
    ["No Boundaries"] = {
        Idle = 18747067405,
        Idle2 = 18747063918,
        Idle3 = 18747063918,
        Walk = 18747074203,
        Run = 18747070484,
        Jump = 18747069148,
        Climb = 18747060903,
        Fall = 18747062535,
        Swim = 18747073181,
        SwimIdle = 18747071682,
        Weight = 9,
        Weight2 = 1
    },
    ["Adidas Sports"] = {
        Idle = 18537376492,
        Idle2 = 18537371272,
        Idle3 = 18537374150,
        Walk = 18537392113,
        Run = 18537384940,
        Jump = 18537380791,
        Climb = 18537363391,
        Fall = 18537367238,
        Swim = 18537389531,
        SwimIdle = 18537387180,
        Weight = 9,
        Weight2 = 1
    },
    Princess = {
        Idle = 941003647,
        Idle2 = 941013098,
        Idle3 = 1159195712,
        Walk = 941028902,
        Run = 941015281,
        Jump = 0941008832,
        Climb = 940996062,
        Fall = 941000007,
        Swim = 941018893,
        SwimIdle = 941025398,
        Weight = 9,
        Weight2 = 1
    },
    Confident = {
        Idle = 1069977950,
        Idle2 = 1069987858,
        Idle3 = 1116160740,
        Walk = 1070017263,
        Run = 1070001516,
        Jump = 1069984524,
        Climb = 1069946257,
        Fall = 1069973677,
        Swim = 1070009914,
        SwimIdle = 1070012133,
        Weight = 9,
        Weight2 = 1
    },
    Popstar = {
        Idle = 1212900985,
        Idle2 = 1150842221,
        Idle3 = 1239733474,
        Walk = 1212980338,
        Run = 1212980348,
        Jump = 1212954642,
        Climb = 1213044953,
        Fall = 1212900995,
        Swim = 1212852603,
        SwimIdle = 1212998578,
        Weight = 9,
        Weight2 = 1
    },
    Patrol = {
        Idle = 1149612882,
        Idle2 = 1150842221,
        Idle3 = 1159573567,
        Walk = 1151231493,
        Run = 1150967949,
        Jump = 1150944216,
        Climb = 1148811837,
        Fall = 1148863382,
        Swim = 1151204998,
        SwimIdle = 1151221899,
        Weight = 9,
        Weight2 = 1
    },
    Sneaky = {
        Idle = 1132473842,
        Idle2 = 1132477671,
        Idle3 = "None",
        Walk = 1132510133,
        Run = 1132494274,
        Jump = 1132489853,
        Climb = 1132461372,
        Fall = 1132469004,
        Swim = 1132500520,
        SwimIdle = 1132506407,
        Weight = 9,
        Weight2 = 1
    },
    Cowboy = {
        Idle = 1014390418,
        Idle2 = 1014398616,
        Idle3 = 1159487651,
        Walk = 1014421541,
        Run = 1014401683,
        Jump = 1014394726,
        Climb = 1014380606,
        Fall = 1014384571,
        Swim = 1014406523,
        SwimIdle = 1014411816,
        Weight = 9,
        Weight2 = 1
    },
    Ghost = {
        Idle = 616006778,
        Idle2 = 616008087,
        Idle3 = 616008087,
        Walk = 616013216,
        Run = 616013216,
        Jump = 616008936,
        Climb = 0,
        Fall = 616005863,
        Swim = 616011509,
        SwimIdle = 616012453,
        Weight = 9,
        Weight2 = 1
    },
    ["Ghost 2"] = {
        Idle = 1151221899,
        Idle2 = 1151221899,
        Idle3 = "None",
        Walk = 1151221899,
        Run = 1151221899,
        Jump = 1151221899,
        Climb = 0,
        Fall = 1151221899,
        Swim = 16738339158,
        SwimIdle = 1151221899,
        Weight = 9,
        Weight2 = 1
    },
    ["Mr. Toilet"] = {
        Idle = 4417977954,
        Idle2 = 4417978624,
        Idle3 = 4441285342,
        Walk = 2510202577,
        Run = 4417979645,
        Jump = 2510197830,
        Climb = 2510192778,
        Fall = 2510195892,
        Swim = 2510199791,
        SwimIdle = 2510201162,
        Weight = 9,
        Weight2 = 1
    },
    Udzal = {
        Idle = 3303162274,
        Idle2 = 3303162549,
        Idle3 = 3710161342,
        Walk = 3303162967,
        Run = 3236836670,
        Jump = 2510197830,
        Climb = 2510192778,
        Fall = 2510195892,
        Swim = 2510199791,
        SwimIdle = 2510201162,
        Weight = 9,
        Weight2 = 1
    },
    ["Oinan Thickhoof"] = {
        Idle = 657595757,
        Idle2 = 657568135,
        Idle3 = 885499184,
        Walk = 2510202577,
        Run = 3236836670,
        Jump = 2510197830,
        Climb = 2510192778,
        Fall = 2510195892,
        Swim = 2510199791,
        SwimIdle = 2510201162,
        Weight = 9,
        Weight2 = 1
    },
    Borock = {
        Idle = 3293641938,
        Idle2 = 3293642554,
        Idle3 = 3710131919,
        Walk = 2510202577,
        Run = 3236836670,
        Jump = 2510197830,
        Climb = 2510192778,
        Fall = 2510195892,
        Swim = 2510199791,
        SwimIdle = 2510201162,
        Weight = 9,
        Weight2 = 1
    },
    ["Blocky Mech"] = {
        Idle = 4417977954,
        Idle2 = 4417978624,
        Idle3 = 4441285342,
        Walk = 2510202577,
        Run = 4417979645,
        Jump = 2510197830,
        Climb = 2510192778,
        Fall = 2510195892,
        Swim = 2510199791,
        SwimIdle = 2510201162,
        Weight = 9,
        Weight2 = 1
    },
    ["Stylized Female"] = {
        Idle = 4708191566,
        Idle2 = 4708192150,
        Idle3 = 121221,
        Walk = 4708193840,
        Run = 4708192705,
        Jump = 4708188025,
        Climb = 4708184253,
        Fall = 4708186162,
        Swim = 4708189360,
        SwimIdle = 4708190607,
        Weight = 9,
        Weight2 = 1
    },
    R15 = {
        Idle = 4211217646,
        Idle2 = 4211218409,
        Idle3 = "None",
        Walk = 4211223236,
        Run = 4211220381,
        Jump = 4211219390,
        Climb = 4211214992,
        Fall = 4211216152,
        Swim = 4211221314,
        SwimIdle = 4374694239,
        Weight = 9,
        Weight2 = 1
    },
    Mocap = {
        Idle = 913367814,
        Idle2 = 913373430,
        Idle3 = "None",
        Walk = 913402848,
        Run = 913376220,
        Jump = 913370268,
        Climb = 913362637,
        Fall = 913365531,
        Swim = 913384386,
        SwimIdle = 913389285,
        Weight = 9,
        Weight2 = 1
    }
}
local F = {"/e dance3", "/e dance2", "/e dance", "/e cheer", "/e wave", "/e laugh", "/e point"}
local function G(string)
    if table.find(F, string) then
        return true
    else
        return false
    end
end
local H = {
    ["Balloon Float"] = {Emote = 148840371, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Idle"] = {Emote = 180435571, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Arm Turbine"] = {Emote = 259438880, Speed = 1.5, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Floating Head"] = {Emote = 121572214, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Insane Rotation"] = {Emote = 121572214, Speed = 99, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Scream"] = {Emote = 180611870, Speed = 1.5, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Party Time"] = {Emote = 33796059, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Chop"] = {Emote = 33169596, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Weird Sway"] = {Emote = 248336677, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Goal!"] = {Emote = 28488254, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Rotation"] = {Emote = 136801964, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Spin"] = {Emote = 188632011, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Weird Float"] = {Emote = 248336459, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Pinch Nose"] = {Emote = 30235165, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Cry"] = {Emote = 180612465, Speed = 1.5, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Penguin Slide"] = {Emote = 282574440, Speed = 0, Time = 0, Weight = 1, Loop = true, R6 = true, Priority = 2},
    ["Zombie Arms"] = {Emote = 183294396, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Flying"] = {Emote = 46196309, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Stab"] = {Emote = 66703241, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Dance"] = {Emote = 35654637, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Random"] = {Emote = 48977286, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Hmmm"] = {Emote = 33855276, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Sword"] = {Emote = 35978879, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Arms Out"] = {Emote = 27432691, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Kick"] = {Emote = 45737360, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Insane Legs"] = {Emote = 87986341, Speed = 99, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Head Detach"] = {Emote = 35154961, Speed = 0, Time = 3, Weight = 1, Loop = true, Priority = 2},
    ["Moon Walk"] = {Emote = 30196114, Speed = 0, Time = 3, Weight = 1, Loop = true, Priority = 2},
    ["Crouch"] = {Emote = 287325678, Speed = 0, Time = 3, Weight = 1, Loop = true, Priority = 2},
    ["Beat Box"] = {Emote = 45504977, Speed = 0, Time = 3, Weight = 1, Loop = true, Priority = 2},
    ["Big Guns"] = {Emote = 161268368, Speed = 0, Time = 3, Weight = 1, Loop = true, Priority = 2},
    ["Bigger Guns"] = {Emote = 225975820, Speed = 0, Time = 3, Weight = 1, Loop = true, Priority = 2},
    ["Charleston"] = {Emote = 429703734, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Moon Dance"] = {Emote = 27789359, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Roar"] = {Emote = 163209885, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Weird Pose"] = {Emote = 248336163, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Spin Dance 2"] = {Emote = 186934910, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Bow Down"] = {Emote = 204292303, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Sword Slam"] = {Emote = 204295235, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Glitch Levitate"] = {Emote = 313762630, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Full Swing"] = {Emote = 218504594, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Full Punch"] = {Emote = 204062532, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Faint"] = {Emote = 181526230, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Floor Faint"] = {Emote = 181525546, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Crouch"] = {Emote = 182724289, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Jumping Jacks"] = {Emote = 429681631, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Spin Dance"] = {Emote = 429730430, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Arm Detach"] = {Emote = 33169583, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Mega Insane"] = {Emote = 184574340, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Dino Walk"] = {Emote = 204328711, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Tilt Head"] = {Emote = 283545583, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Dab"] = {Emote = 183412246, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Float Sit"] = {Emote = 179224234, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2},
    ["Clone Illusion"] = {Emote = 215384594, Speed = 1e7, Time = .5, Weight = 1, Loop = true, Priority = 2},
    ["Hero Jump"] = {Emote = 184574340, Speed = 1, Time = 0, Weight = 1, Loop = true, Priority = 2}
}
local I = {}
for q, r in pairs(H) do
    table.insert(I, q)
end
local J = {}
for q, r in pairs(E) do
    if q ~= "Weight" and q ~= "Weight2" and q ~= "Custom" and q ~= "Emotes" then
        table.insert(J, q)
        j = j + 1
    end
end
local K = {}
for q, r in pairs(D) do
    table.insert(K, q)
    i = i + 1
end
task.spawn(
    function()
        B("Eazvy | Emotes & Animations", "Loaded " .. j .. " Animations and " .. i .. " Emotes!", 9)
    end
)
table.sort(
    J,
    function(L, M)
        return L:lower() < M:lower()
    end
)
table.sort(
    K,
    function(L, M)
        return L:lower() < M:lower()
    end
)
table.sort(
    I,
    function(L, M)
        return L:lower() < M:lower()
    end
)
local function N()
    do
        if not getgenv().AlreadyLoaded then
            return
        end
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character and
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate") and
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
            game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Animator")
        local O =
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):FindFirstChildOfClass(
            "Animator"
        )
        for q, r in ipairs(O:GetPlayingAnimationTracks()) do
            r:Stop()
        end
    end
end
local function P()
    do
        if not getgenv().AlreadyLoaded then
            return
        end
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character and
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate") and
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
            game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild("Animator")
        local O = game:GetService("Players").LocalPlayer.Character:WaitForChild("Animate")
        O.Disabled = true
        for q, r in ipairs(
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks(

            )
        ) do
            r:AdjustSpeed(Settings.AnimationSpeed)
            r:Stop()
        end
        O.Disabled = false
    end
end
local function Q(R, S, T, U, V, W, X, Y, Z, _, a0, a1)
    do
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character and
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate")
        local b = game:GetService("Players").LocalPlayer.Character.Animate
        if b:FindFirstChild("idle") then
            b.idle.Animation1.AnimationId = c .. R
            b.idle.Animation1.Weight.Value = tostring(a0)
            b.idle.Animation2.Weight.Value = tostring(a1)
            b.idle.Animation2.AnimationId = c .. S
        end
        if T and b:FindFirstChild("pose") then
            b.pose:FindFirstChildOfClass("Animation").AnimationId = c .. T
        end
        b.walk:FindFirstChildOfClass("Animation").AnimationId = c .. U
        b.run:FindFirstChildOfClass("Animation").AnimationId = c .. V
        b.jump:FindFirstChildOfClass("Animation").AnimationId = c .. W
        b.climb:FindFirstChildOfClass("Animation").AnimationId = c .. X
        b.fall:FindFirstChildOfClass("Animation").AnimationId = c .. Y
        if b:FindFirstChild("swim") then
            b.swim:FindFirstChildOfClass("Animation").AnimationId = c .. Z
            b.swimidle:FindFirstChildOfClass("Animation").AnimationId = c .. _
        end
    end
end
local function a2(a3, a4)
    repeat
        wait()
    until game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate")
    local b = game:GetService("Players").LocalPlayer.Character.Animate
    if a3:match("idle") then
        if b:FindFirstChild("pose") then
            b.pose:FindFirstChildOfClass("Animation").AnimationId = c .. a4
        end
    end
    if a3 == "idle1" then
        b.idle.Animation1.AnimationId = c .. a4
    elseif a3 == "idle2" then
        b.idle.Animation2.AnimationId = c .. a4
    elseif a3:match("dance") then
        for v, r in pairs(b[a3]:GetChildren()) do
            if r:IsA("Animation") then
                r.AnimationId = c .. a4
            end
        end
    else
        local a5
        for v, r in pairs(b:GetChildren()) do
            if r.Name == a3 then
                a5 = r
                break
            end
        end
        if a5 then
            a5:FindFirstChildOfClass("Animation").AnimationId = c .. a4
        end
    end
    P()
end
local function a6(a4)
    local a7 = Instance.new("Animation")
    a7.AnimationId = "rbxassetid://" .. a4
    _G.LoadAnim = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(a7)
    _G.LoadAnim.Priority = Enum.AnimationPriority.Idle
    if not Settings.PlayAlways then
        _G.LoadAnim:Stop()
    end
    if Settings.Reversed then
        _G.LoadAnim:Play(0)
        _G.LoadAnim:AdjustSpeed(Settings.ReverseSpeed)
    else
        _G.LoadAnim:Play(0)
        _G.LoadAnim:AdjustSpeed(Settings.EmoteSpeed)
    end
    if Settings.Looped then
        _G.LoadAnim.Looped = Settings.Looped
    end
    if Settings.Time then
        _G.LoadAnim.TimePosition = _G.LoadAnim.TimePosition - Settings.TimePosition
    end
    if not game:GetService("Players").LocalPlayer.Character.Animate.Disabled then
        game:GetService("Players").LocalPlayer.Character.Animate.Disabled = true
    end
end
local function a8()
    local a9 =
        game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if a9 and a9.RigType == Enum.HumanoidRigType.R15 then
        return "R15"
    else
        return "R6"
    end
end
local function aa(ab)
    a6(D[ab])
end
local function ac(ad)
    for q, r in pairs(E) do
        lower_string = string.lower(q)
        lower_emote = string.lower(ad)
        if string.find(q, ad) or string.find(lower_string, lower_emote) then
            return q
        end
    end
end
local function ae(ad)
    local af = {}
    for q, r in pairs(D) do
        upper_string = string.upper(q)
        upper_emote = string.upper(ad)
        if upper_string == upper_emote then
            if not table.find(af, q) then
                table.insert(af, q)
            end
        end
    end
    for q, r in pairs(D) do
        lower_string = string.lower(q)
        lower_emote = string.lower(ad)
        if string.find(q, ad) or string.find(lower_string, lower_emote) then
            if not table.find(af, q) then
                table.insert(af, q)
            end
        end
    end
    return af
end
local function ag(ad)
    for q, r in pairs(D) do
        upper_string = string.upper(q)
        upper_emote = string.upper(ad)
        if upper_string == upper_emote then
            return q
        end
    end
    for q, r in pairs(D) do
        lower_string = string.lower(q)
        lower_emote = string.lower(ad)
        if string.find(q, ad) or string.find(lower_string, lower_emote) then
            return q
        end
    end
end
if Settings.SelectedAnimation and Settings.SelectedAnimation ~= "" then
    repeat
        wait()
    until game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate")
    if Settings.SelectedAnimation == "Custom" and a8() == "R15" then
        N()
        Q(
            Settings.Custom.Idle or f(1),
            Settings.Custom.Idle2 or f(2),
            Settings.Custom.Idle3 or f(3),
            Settings.Custom.Walk or f(4),
            Settings.Custom.Run or f(5),
            Settings.Custom.Jump or f(6),
            Settings.Custom.Climb or f(7),
            Settings.Custom.Fall or f(8),
            Settings.Custom.Swim or f(9),
            Settings.Custom.SwimIdle or f(10),
            Settings.Custom.Weight,
            Settings.Custom.Weight2
        )
        if Settings.Custom.Wave then
            a2("wave", Settings.Custom.Wave)
        end
        if Settings.Custom.Laugh then
            a2("laugh", Settings.Custom.Laugh)
        end
        if Settings.Custom.Cheer then
            a2("cheer", Settings.Custom.Cheer)
        end
        if Settings.Custom.Point then
            a2("point", Settings.Custom.Point)
        end
        if Settings.Custom.Sit then
            a2("sit", Settings.Custom.Sit)
        end
        if Settings.Custom.Dance then
            a2("dance", Settings.Custom.Dance)
        end
        if Settings.Custom.Dance2 then
            a2("dance2", Settings.Custom.Dance2)
        end
        if Settings.Custom.Dance3 then
            a2("dance3", Settings.Custom.Dance3)
        end
    elseif a8() == "R15" then
        N()
        Q(
            E[Settings.SelectedAnimation].Idle,
            E[Settings.SelectedAnimation].Idle2,
            E[Settings.SelectedAnimation].Idle3,
            E[Settings.SelectedAnimation].Walk,
            E[Settings.SelectedAnimation].Run,
            E[Settings.SelectedAnimation].Jump,
            E[Settings.SelectedAnimation].Climb,
            E[Settings.SelectedAnimation].Fall,
            E[Settings.SelectedAnimation].Swim,
            E[Settings.SelectedAnimation].SwimIdle,
            E[Settings.SelectedAnimation].Weight,
            E[Settings.SelectedAnimation].Weight2
        )
        if Settings.Custom.Wave then
            a2("wave", Settings.Custom.Wave)
        end
        if Settings.Custom.Laugh then
            a2("laugh", Settings.Custom.Laugh)
        end
        if Settings.Custom.Cheer then
            a2("cheer", Settings.Custom.Cheer)
        end
        if Settings.Custom.Point then
            a2("point", Settings.Custom.Point)
        end
        if Settings.Custom.Sit then
            a2("sit", Settings.Custom.Sit)
        end
        if Settings.Custom.Dance then
            a2("dance", Settings.Custom.Dance)
        end
        if Settings.Custom.Dance2 then
            a2("dance2", Settings.Custom.Dance2)
        end
        if Settings.Custom.Dance3 then
            a2("dance3", Settings.Custom.Dance3)
        end
        P()
        local a9 =
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
        local ah = a9:GetPlayingAnimationTracks()
        for v, r in pairs(ah) do
            r:AdjustSpeed(Settings.AnimationSpeed)
        end
    end
end
game.TextChatService.OnIncomingMessage = function(y)
    local ai = tostring(y.TextSource)
    local aj = tostring(y.Text)
    if
        ai == game.Players.LocalPlayer.Name and Settings.Chat and aj:match(Settings.EmotePrefix) or
            ai == game.Players.LocalPlayer.Name and Settings.Animate and aj:match(Settings.AnimationPrefix)
     then
        y.Status = Enum.TextChatMessageStatus.InvalidTextChannelPermissions
    end
end
local function ak()
    if _G.LoadAnim and _G.LoadAnim.TimePosition then
        return tostring(math.floor(_G.LoadAnim.TimePosition))
    end
    return "0"
end
local function al()
    if _G.LoadAnim and _G.LoadAnim.Looped then
        return tostring(_G.LoadAnim.Looped)
    end
    return "false"
end
if game.TextChatService:FindFirstChild("TextChannels") and not getgenv().AlreadyLoaded then
    game.TextChatService.TextChannels.RBXGeneral.MessageReceived:Connect(
        function(y)
            local ai = tostring(y.TextSource)
            local aj = tostring(y.Text)
            if Settings.Player and ai == Settings.Player.Name and Settings.CopyMovement then
                game.TextChatService.TextChannels.RBXGeneral:SendAsync(aj)
            end
        end
    )
end
if game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") and not getgenv().AlreadyLoaded then
    local am = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
    am.OnMessageDoneFiltering.OnClientEvent:Connect(
        function(an)
            local ai = an.FromSpeaker
            local aj = an.Message or ""
            if Settings.Player and ai == Settings.Player.Name and Settings.CopyMovement then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(aj, "All")
            end
        end
    )
end
local ao =
    w:MakeWindow(
    {
        Name = "Eazvy Hub | Animations & Emotes",
        HidePremium = true,
        SaveConfig = false,
        ConfigFolder = "EazvyHub",
        IntroEnabled = false,
        IntroText = "Eazvy Hub - Animations/Emotes",
        IntroIcon = "rbxassetid://10932910166",
        Icon = "rbxassetid://4914902889"
    }
)
game:GetService("Players").LocalPlayer.OnTeleport:Connect(
    function(ap)
        if ap == Enum.TeleportState.Started and queue_on_teleport then
            queue_on_teleport("repeat task.wait() until game:IsLoaded() getgenv().Teleported = true")
        end
    end
)
local aq = ao:MakeTab({Name = "Main", Icon = "rbxassetid://10507357657", PremiumOnly = false})
if
    game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso")
 then
    local ar = ao:MakeTab({Name = "Trolling", Icon = "rbxassetid://8855392706", PremiumOnly = false})
    if a8() == "R15" then
        local as = ar:AddSection({Name = " // Player Section"})
        ar:AddTextbox(
            {Name = "Enter Player (Name)", Default = "", TextDisappear = true, Callback = function(at)
                    Settings.Player = getPlayersByName(at)
                end}
        )
        ar:AddButton(
            {
                Name = "Goto",
                Callback = function()
                    if not Settings.Player then
                        return
                    end
                    w:MakeNotification(
                        {
                            Name = "Eazvy Hub - Success",
                            Content = "Teleported to " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
                            Image = "rbxassetid://4914902889",
                            Time = 3
                        }
                    )
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                        Settings.Player.Character.HumanoidRootPart.CFrame
                    return
                end
            }
        )
        ar:AddButton(
            {
                Name = "Inspect",
                Callback = function()
                    if not Settings.Player then
                        return
                    end
                    w:MakeNotification(
                        {
                            Name = "Eazvy Hub - Success",
                            Content = "Inspecting " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
                            Image = "rbxassetid://4914902889",
                            Time = 3
                        }
                    )
                    game:GetService("GuiService"):CloseInspectMenu()
                    game:GetService("GuiService"):InspectPlayerFromUserId(Settings.Player.UserId)
                    return
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Annoy",
                Default = false,
                Callback = function(au)
                    Settings.Annoy = au
                    if Settings.Annoy then
                        local L = Instance.new("Part", game:GetService("Lighting"))
                        L.Name = "niggaAnnoy"
                        Settings.PlayAlways = au
                        local av = ag("Clap")
                        P()
                        aa(av)
                        _G.LoadAnim:AdjustSpeed(100)
                    elseif game:GetService("Lighting"):FindFirstChild("niggaAnnoy") then
                        game:GetService("Lighting"):FindFirstChild("niggaAnnoy"):Destroy()
                        P()
                    end
                    while Settings.Annoy do
                        task.wait()
                        if
                            game:GetService("Players").LocalPlayer.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player and
                                Settings.Player.Character and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
                                Settings.Player.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Spy",
                Default = false,
                Callback = function(au)
                    Settings.Spy = au
                    if Settings.Spy then
                        w:MakeNotification(
                            {
                                Name = "Eazvy Hub - Success",
                                Content = "Spying on " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
                                Image = "rbxassetid://4914902889",
                                Time = 3
                            }
                        )
                        game:GetService("SoundService"):SetListener(
                            Enum.ListenerType.ObjectPosition,
                            Settings.Player.Character.HumanoidRootPart
                        )
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "nigga3"
                    elseif not Settings.Spy and game.Lighting:FindFirstChild("nigga3") then
                        game:GetService("SoundService"):SetListener(Enum.ListenerType.Camera)
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "View",
                Default = false,
                Callback = function(au)
                    if
                        not Settings.Player and au == true or
                            Settings.Player and not Settings.Player.Character and au == true
                     then
                        x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                    end
                    if au == true and Settings.Player then
                        if workspace:FindFirstChild("ViewNIG") then
                            workspace.ViewNIG:Destroy()
                        end
                        local L = Instance.new("Part", workspace)
                        L.Name = "ViewNIG"
                        game:GetService("Workspace").CurrentCamera.CameraSubject = Settings.Player.Character
                        w:MakeNotification(
                            {
                                Name = "Eazvy Hub - Success",
                                Content = "Viewing " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
                                Image = "rbxassetid://4914902889",
                                Time = 3
                            }
                        )
                        return
                    elseif workspace:FindFirstChild("ViewNIG") then
                        workspace.ViewNIG:Destroy()
                        game:GetService("Workspace").CurrentCamera.CameraSubject =
                            game:GetService("Players").LocalPlayer.Character
                        w:MakeNotification(
                            {
                                Name = "Eazvy Hub - Success",
                                Content = "Unviewed " .. Settings.Player.DisplayName .. " @" .. Settings.Player.Name,
                                Image = "rbxassetid://4914902889",
                                Time = 3
                            }
                        )
                        return
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Goto",
                Default = false,
                Callback = function(au)
                    LoopGoTo = au
                    while LoopGoTo == true do
                        task.wait()
                        if
                            Settings.Player and Settings.Player.Character and game.Players.LocalPlayer.Character and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart") and
                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                         then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                Settings.Player.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Rape",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Gem")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 8
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What"
                    elseif game.Lighting:FindFirstChild("What") then
                        game.Lighting:FindFirstChild("What"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Rape 2",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Boom Boom Clap")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 8
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What1"
                    elseif game.Lighting:FindFirstChild("What1") then
                        game.Lighting:FindFirstChild("What1")
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Rape 3",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Dolphin Dance")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 26 / 100 * _G.LoadAnim.Length
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What2"
                    elseif game.Lighting:FindFirstChild("What2") then
                        game.Lighting:FindFirstChild("What2"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, -1, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, -1, 2)
                            _G.LoadAnim.TimePosition = 26 / 100 * _G.LoadAnim.Length
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Rape 4",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("AOK - Tai Verdes")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 5 / 100 * _G.LoadAnim.Length
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What3"
                    elseif game.Lighting:FindFirstChild("What3") then
                        game.Lighting:FindFirstChild("What"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, 2)
                            _G.LoadAnim.TimePosition = 15 / 100 * _G.LoadAnim.Length
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        local av = ag("Sleep")
                        P()
                        aa(av)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What4"
                    elseif game.Lighting:FindFirstChild("What4") then
                        game.Lighting:FindFirstChild("What4"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 2",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Gem")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 8
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What5"
                    elseif game.Lighting:FindFirstChild("What5") then
                        game.Lighting:FindFirstChild("What5"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 3",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Scorpion")
                        P()
                        aa(av)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What6"
                    elseif game.Lighting:FindFirstChild("What6") then
                        game.Lighting:FindFirstChild("What6"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            _G.LoadAnim.TimePosition = 83
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -1)
                            task.wait(.15)
                            _G.LoadAnim.TimePosition = 84
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -2)
                            _G.LoadAnim.TimePosition = 83
                            task.wait(.15)
                            _G.LoadAnim.TimePosition = 84
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 4",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("BURBERRY LOLA  ATTITUDE - GEM")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 60
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What7"
                    elseif game.Lighting:FindFirstChild("What7") then
                        game.Lighting:FindFirstChild("What7"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 5",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("BURBERRY LOLA  ATTITUDE - GEM")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 38
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What8"
                    elseif game.Lighting:FindFirstChild("What8") then
                        game.Lighting:FindFirstChild("What8"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 6",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Alo Yoga Pose - Warrior II")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 10 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What9"
                    elseif game.Lighting:FindFirstChild("What9") then
                        game.Lighting:FindFirstChild("What9"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 7",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Break Dance")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 53 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What10"
                    elseif game.Lighting:FindFirstChild("What10") then
                        game.Lighting:FindFirstChild("What10"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 0)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 2)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 8",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Team USA Breaking Emote")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 15 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "WhatNigga"
                    elseif game.Lighting:FindFirstChild("WhatNigga") then
                        game.Lighting:FindFirstChild("WhatNigga"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, -math.pi / 2, 0) * CFrame.new(-2, 0, 0)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, -math.pi / 2, 0) * CFrame.new(-3, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, -math.pi / 2, 0) * CFrame.new(-4, 0, 2)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 9",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Olympic Dismount")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 15 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "WhatNigga4"
                    elseif game.Lighting:FindFirstChild("WhatNigga4") then
                        game.Lighting:FindFirstChild("WhatNigga4"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 0)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 2)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 10",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Olympic Dismount")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 28 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "WhatNigga5"
                    elseif game.Lighting:FindFirstChild("WhatNigga5") then
                        game.Lighting:FindFirstChild("WhatNigga5"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 11",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Olympic Dismount")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 27 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "WhatNigga6"
                    elseif game.Lighting:FindFirstChild("WhatNigga6") then
                        game.Lighting:FindFirstChild("WhatNigga6"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, -1, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, -1, 2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, -1, 3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 12",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("TMNT Dance")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 70 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "WhatNigga7"
                    elseif game.Lighting:FindFirstChild("WhatNigga7") then
                        game.Lighting:FindFirstChild("WhatNigga7"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(0, 0, -3)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Get Raped 13",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Team USA Breaking Emote")
                        P()
                        aa(av)
                        task.wait(.15)
                        _G.LoadAnim.TimePosition = 45 / 100 * _G.LoadAnim.Length
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "WhatNigga3"
                    elseif game.Lighting:FindFirstChild("WhatNigga3") then
                        game.Lighting:FindFirstChild("WhatNigga3"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(1, 0, 1)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(1, 0, 2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(1, 0, 3)
                        end
                    end
                end
            }
        )
        local as = ar:AddSection({Name = " // Other Animations"})
        ar:AddToggle(
            {
                Name = "Slap Ass",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Beauty Touchdown")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = -1
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What11"
                    elseif game.Lighting:FindFirstChild("What11") then
                        game.Lighting:FindFirstChild("What11"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.new(-2, 0, 2)
                            task.wait(.15)
                            _G.LoadAnim.TimePosition = -1
                            aw.CFrame = ax.CFrame * CFrame.new(-2, 0, 3)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.new(-2, 0, 4)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Blowjob",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Gem")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 8
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What12"
                    elseif game.Lighting:FindFirstChild("What12") then
                        game.Lighting:FindFirstChild("What12"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 2)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 3)
                            task.wait(.15)
                            aw.CFrame = ax.CFrame * CFrame.Angles(0, math.pi, 0) * CFrame.new(0, 0, 4)
                        end
                    end
                end
            }
        )
        ar:AddToggle(
            {
                Name = "Stalk",
                Default = false,
                Callback = function(au)
                    Settings.RapePlayer = au
                    if Settings.RapePlayer then
                        if not Settings.Player or Settings.Player and not Settings.Player.Character then
                            x("Failed!", "Player was not found! Please enter player-name in textbox above.")
                        end
                        Settings.PlayAlways = true
                        Settings.Time = true
                        local av = ag("Gem")
                        P()
                        aa(av)
                        _G.LoadAnim.TimePosition = 8
                        _G.LoadAnim:AdjustSpeed(0)
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "What45"
                    elseif game.Lighting:FindFirstChild("What45") then
                        game.Lighting:FindFirstChild("What45"):Destroy()
                        P()
                        Settings.PlayAlways = false
                    end
                    while Settings.RapePlayer do
                        task.wait()
                        pcall(
                            function()
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit
                                 then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                        false
                                end
                            end
                        )
                        if
                            game:GetService("Players").LocalPlayer.Character and Settings.Player.Character and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                         then
                            local aw =
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            local ax = Settings.Player.Character:FindFirstChild("HumanoidRootPart")
                            if aw.Position.Y < ax.Position.Y then
                                if not platform then
                                    platform = Instance.new("Part")
                                    platform.Size = Vector3.new(5, 0.1, 5)
                                    platform.Transparency = 1
                                    platform.Anchored = true
                                    platform.Position = ax.Position + Vector3.new(0, 2, 0)
                                    platform.Parent = game.Workspace
                                end
                            else
                                if platform then
                                    platform:Destroy()
                                    platform = nil
                                end
                            end
                            local ay = (aw.Position - ax.Position).unit
                            local az = ay * 3
                            aw.CFrame = CFrame.new(ax.Position + az, ax.Position)
                        end
                    end
                end
            }
        )
        local as = ar:AddSection({Name = " // Character Animation Toggles"})
        ar:AddTextbox(
            {
                Name = "Custom Emote (ID)",
                Default = "",
                TextDisappear = true,
                Callback = function(at)
                    UpdateFile()
                    a6(at)
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                end
            }
        )
    end
end
local a = ao:MakeTab({Name = "LocalPlayer", Icon = "rbxassetid://3609827161", PremiumOnly = false})
local aA
local aB
if
    game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso")
 then
    aA = ao:MakeTab({Name = "Animations", Icon = "rbxassetid://9405928221", PremiumOnly = false})
    aB =
        aA:AddParagraph(
        "Animation Information",
        "Selected Animation: " .. Settings.SelectedAnimation or
            "" .. " // Speed: " .. tostring(Settings.AnimationSpeed or "") .. " // Frozen: " .. Settings.FreezeAnimation
    )
end
a:AddSlider(
    {
        Name = "Walkspeed",
        Min = 16,
        Max = 250,
        Default = 16,
        Color = Color3.fromRGB(0, 128, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = at
        end
    }
)
a:AddSlider(
    {
        Name = "Jumppower",
        Min = 50,
        Max = 550,
        Default = 50,
        Color = Color3.fromRGB(0, 191, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = at
        end
    }
)
a:AddSlider(
    {
        Name = "Gravity",
        Min = 196,
        Max = 250,
        Default = 196,
        Color = Color3.fromRGB(0, 128, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            if at > 196 then
                game:GetService("Workspace").Gravity = -at
            else
                game:GetService("Workspace").Gravity = at
            end
        end
    }
)
a:AddSlider(
    {
        Name = "Hipheight",
        Min = game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight,
        Max = 300,
        Default = game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight,
        Color = Color3.fromRGB(0, 191, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = at
        end
    }
)
a:AddSlider(
    {
        Name = "Fly Speed",
        Min = 1,
        Max = 500,
        Default = 50,
        Color = Color3.fromRGB(0, 128, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            Settings.FlySpeed = at
        end
    }
)
a:AddSlider(
    {
        Name = "Fov",
        Min = 70,
        Max = 120,
        Default = game:GetService("Workspace").CurrentCamera.FieldOfView,
        Color = Color3.fromRGB(0, 128, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            game:GetService("Workspace").CurrentCamera.FieldOfView = at
        end
    }
)
if game.Players.LocalPlayer then
    a:AddSlider(
        {
            Name = "Zoom",
            Min = game.Players.LocalPlayer.CameraMaxZoomDistance,
            Max = 1000,
            Default = game.Players.LocalPlayer.CameraMaxZoomDistance,
            Color = Color3.fromRGB(0, 128, 255),
            Increment = 1,
            ValueName = "",
            Callback = function(at)
                game.Players.LocalPlayer.CameraMaxZoomDistance = at
            end
        }
    )
end
if setfpscap then
    a:AddSlider(
        {
            Name = "FPS",
            Min = 1,
            Max = 240,
            Default = 60,
            Color = Color3.fromRGB(0, 128, 255),
            Increment = 1,
            ValueName = "",
            Callback = function(at)
                setfpscap(at)
            end
        }
    )
end
local aC
local aD
local aE
local aF
local aG
local aH
local aI = Client
local aJ = {W = false, S = false, A = false, D = false, Moving = false}
local aK = function()
    if
        not game:GetService("Players").LocalPlayer.Character or
            not game:GetService("Players").LocalPlayer.Character.Head or
            aH
     then
        return
    end
    aC = game:GetService("Players").LocalPlayer.Character
    aD = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    aD.PlatformStand = true
    aG = workspace:WaitForChild("Camera")
    aE = Instance.new("BodyVelocity")
    aF = Instance.new("BodyAngularVelocity")
    aE.Velocity, aE.MaxForce, aE.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    aF.AngularVelocity, aF.MaxTorque, aF.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    aE.Parent = aC.Head
    aF.Parent = aC.Head
    aH = true
    aD.Died:connect(
        function()
            aH = false
        end
    )
end
local aL = function()
    if not game:GetService("Players").LocalPlayer.Character or not aH then
        return
    end
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
    aE:Destroy()
    aF:Destroy()
    aH = false
end
game:GetService("UserInputService").InputBegan:connect(
    function(aM, aN)
        if
            aM.UserInputType == Enum.UserInputType.MouseButton1 and
                game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) and
                Settings.ClickTeleport
         then
            game:GetService("Players").LocalPlayer.Character:MoveTo(game.Players.LocalPlayer:GetMouse().Hit.p)
        end
        if aN then
            return
        end
        for q, aO in pairs(aJ) do
            if q ~= "Moving" and aM.KeyCode == Enum.KeyCode[q] then
                aJ[q] = true
                aJ.Moving = true
            end
        end
    end
)
game:GetService("UserInputService").InputEnded:connect(
    function(aM, aN)
        if aN then
            return
        end
        local L = false
        for q, aO in pairs(aJ) do
            if q ~= "Moving" then
                if aM.KeyCode == Enum.KeyCode[q] then
                    aJ[q] = false
                end
                if aJ[q] then
                    L = true
                end
            end
        end
        aJ.Moving = L
    end
)
local aP = function(aQ)
    return aQ * (Settings.FlySpeed or 50) / aQ.Magnitude
end
game:GetService("RunService").Heartbeat:connect(
    function(aR)
        if aH and aC and aC.PrimaryPart then
            local aI = aC.PrimaryPart.Position
            local aS = aG.CFrame
            local aT, aU, aV = aS:toEulerAnglesXYZ()
            aC:SetPrimaryPartCFrame(CFrame.new(aI.x, aI.y, aI.z) * CFrame.Angles(aT, aU, aV))
            if aJ.Moving then
                local au = Vector3.new()
                if aJ.W then
                    au = au + aP(aS.lookVector)
                end
                if aJ.S then
                    au = au - aP(aS.lookVector)
                end
                if aJ.A then
                    au = au - aP(aS.rightVector)
                end
                if aJ.D then
                    au = au + aP(aS.rightVector)
                end
                aC:TranslateBy(au * aR)
            end
        end
    end
)
a:AddToggle(
    {Name = "Fly", Default = false, Callback = function(au)
            Fly = au
            if Fly == true then
                local L = Instance.new("Part", game:GetService("Lighting"))
                L.Name = "NiggaFly"
                for aW, aX in next, getconnections(game.Players.LocalPlayer.Character.Head.ChildAdded) do
                    aX:Disable()
                end
                aK()
            elseif game:GetService("Lighting"):FindFirstChild("NiggaFly") then
                game:GetService("Lighting"):FindFirstChild("NiggaFly"):Destroy()
                aL()
            end
        end}
)
local aY = nil
a:AddToggle(
    {Name = "Noclip", Default = false, Callback = function(au)
            Settings.Noclip = au
            if Settings.Noclip then
                local L = Instance.new("Part", game:GetService("Lighting"))
                L.Name = "niggANOclip"
                local function aZ()
                    if game:GetService("Players").LocalPlayer.Character and Settings.Noclip then
                        for v, a_ in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                            if a_:IsA("BasePart") and a_.CanCollide and Settings.Noclip then
                                a_.CanCollide = false
                            end
                        end
                    end
                end
                if aY then
                    aY:Disconnect()
                end
                aY = game:GetService("RunService").RenderStepped:Connect(aZ)
            elseif game:GetService("Lighting"):FindFirstChild("niggANOclip") then
                game:GetService("Lighting"):FindFirstChild("niggANOclip"):Destroy()
                if aY then
                    aY:Disconnect()
                    aY = nil
                end
                if game:GetService("Players").LocalPlayer.Character then
                    for v, a_ in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        if a_:IsA("BasePart") then
                            a_.CanCollide = true
                        end
                    end
                end
            end
        end}
)
a:AddToggle(
    {
        Name = "Platform",
        Default = false,
        Callback = function(au)
            Settings.Platform = au
            if Settings.Platform then
                local b0 = game.Players.LocalPlayer
                local b1 = b0.Character or b0.CharacterAdded:Wait()
                local platform = Instance.new("Part", workspace)
                platform.Transparency = 1
                platform.Name = tostring(math.random(1, 1115))
                platform.Material = "Plastic"
                platform.Size = Vector3.new(300, 1, 300)
                platform.Anchored = true
                platform.CanCollide = true
                spawn(
                    function()
                        if b1 and b1:FindFirstChild("HumanoidRootPart") then
                            local b2 = b1.HumanoidRootPart
                            platform.Position =
                                Vector3.new(
                                b2.Position.X,
                                b2.Position.Y - b2.Size.Y / 2 - platform.Size.Y / 2,
                                b2.Position.Z
                            )
                        end
                        while Settings.Platform do
                            task.wait()
                        end
                        platform:Destroy()
                    end
                )
            end
        end
    }
)
a:AddToggle(
    {Name = "Sit", Default = false, Callback = function(au)
            if
                game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
             then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit = au
            end
        end}
)
a:AddToggle(
    {
        Name = "Refresh",
        Default = false,
        Callback = function(au)
            Settings.Refresh = au
            if Settings.Refresh then
                A("When you reset your character, you'll respawn in the same position you", "died in.")
            end
            if
                Settings.Refresh and game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Head") and
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
             then
                game.Players.LocalPlayer.Character.Humanoid.Died:Connect(
                    function()
                        Settings.DeathPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                )
                local b3 =
                    game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid", true)
                local b4 = b3 and b3.RootPart and b3.RootPart.CFrame
                local b5 = workspace.CurrentCamera.CFrame
                local b6 = game.Players.LocalPlayer.Character
                task.spawn(
                    function()
                        local b7 = game.Players.LocalPlayer.CharacterAdded:Wait()
                        if Settings.Refresh then
                            b7:WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame =
                                b4,
                                wait() and b5
                        end
                    end
                )
            end
        end
    }
)
local b8 = workspace.Gravity
local b9
local ba
a:AddToggle(
    {
        Name = "Swim",
        Default = false,
        Callback = function(au)
            if au == true then
                local L = Instance.new("Part", workspace)
                L.Name = "Swimaaaaa"
                workspace.Gravity = 0
                local bb = function()
                    workspace.Gravity = b8
                end
                local bc = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
                ba = bc.Died:Connect(bb)
                local bd = Enum.HumanoidStateType:GetEnumItems()
                table.remove(bd, table.find(bd, Enum.HumanoidStateType.None))
                for q, r in pairs(bd) do
                    bc:SetStateEnabled(r, false)
                end
                bc:ChangeState(Enum.HumanoidStateType.Swimming)
                b9 =
                    game:GetService("RunService").Heartbeat:Connect(
                    function()
                        pcall(
                            function()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity =
                                    (bc.MoveDirection ~= Vector3.new() or
                                    game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space)) and
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity or
                                    Vector3.new()
                            end
                        )
                    end
                )
            elseif workspace:FindFirstChild("Swimaaaaa") then
                workspace.Swimaaaaa:Destroy()
                workspace.Gravity = b8
                if ba then
                    ba:Disconnect()
                end
                if b9 ~= nil then
                    b9:Disconnect()
                    b9 = nil
                end
                local a9 = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
                local bd = Enum.HumanoidStateType:GetEnumItems()
                table.remove(bd, table.find(bd, Enum.HumanoidStateType.None))
                for q, r in pairs(bd) do
                    a9:SetStateEnabled(r, true)
                end
            end
        end
    }
)
a:AddToggle(
    {
        Name = "Click Teleport",
        Default = false,
        Callback = function(au)
            Settings.ClickTeleport = au
            if Settings.ClickTeleport then
                w:MakeNotification(
                    {
                        Name = "Eazvy Hub - Success",
                        Content = "Click-Teleport has been enabled; Keybind: CTRL + Click",
                        Image = "rbxassetid://4914902889",
                        Time = 10
                    }
                )
            end
        end
    }
)
a:AddToggle(
    {Name = "Infinite Jump", Default = false, Callback = function(au)
            Settings.InfJump = au
        end}
)
local as = a:AddSection({Name = " // LP Buttons"})
a:AddButton(
    {Name = "Jump", Default = false, Callback = function()
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end}
)
a:AddButton(
    {
        Name = "Sit",
        Default = false,
        Callback = function()
            pcall(
                function()
                    if not game.Players.LocalPlayer.Character.Humanoid.Sit then
                        game.Players.LocalPlayer.Character.Humanoid.Sit = true
                    else
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    end
                end
            )
        end
    }
)
a:AddButton(
    {
        Name = "Skydive",
        Default = false,
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 500, 0)
        end
    }
)
a:AddButton(
    {Name = "Reset", Default = false, Callback = function()
            game.Players.LocalPlayer.Character.Head.Parent = nil
        end}
)
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(
    function(be)
        if Settings.InfJump and be == " " then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(3)
        end
    end
)
game:GetService("UserInputService").InputBegan:connect(
    function(aM, aN)
        if
            aM.UserInputType == Enum.UserInputType.MouseButton1 and
                game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) and
                Settings.ClickToSelect
         then
            local bf = game.Players.LocalPlayer:GetMouse().Target
            if bf and bf.Parent then
                local bg = game.Players:GetPlayerFromCharacter(bf.Parent)
                if bg and bg ~= game.Players.LocalPlayer and Settings.ClickToSelect then
                    if Settings.Player ~= bg then
                        A("Selected:", bg.Name)
                    else
                        x(bg.Name, "has already been selected!")
                    end
                    Settings.Player = bg
                    d = bg
                end
            end
        end
        if
            aM.UserInputType == Enum.UserInputType.MouseButton1 and
                game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) and
                Settings.ClickTeleport
         then
            game:GetService("Players").LocalPlayer.Character:MoveTo(game.Players.LocalPlayer:GetMouse().Hit.p)
        end
        if aN then
            return
        end
        for q, aO in pairs(aJ) do
            if q ~= "Moving" and aM.KeyCode == Enum.KeyCode[q] then
                aJ[q] = true
                aJ.Moving = true
            end
        end
    end
)
local Status =
    aq:AddParagraph(
    "Emote Information",
    "Previous Emote: " ..
        Settings.LastEmote ..
            " // Speed: " .. tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
)
if
    game:GetService("Players").LocalPlayer.Character and
        not game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso")
 then
    aq:AddDropdown(
        {
            Name = "Emotes (R6)",
            Default = "",
            Options = I,
            Callback = function(bh)
                if a8() ~= "R15" then
                    N()
                    a6(H[bh].Emote, H[bh].Speed, H[bh].Time, H[bh].Weight, H[bh].Loop)
                    Settings.LastEmote = bh
                    UpdateFile()
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                end
            end
        }
    )
end
local bi
if
    game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso")
 then
    aq:AddTextbox(
        {
            Name = "Play Emote / Search (Name)",
            Default = "",
            TextDisappear = true,
            Callback = function(at)
                if Settings.EmoteChat then
                    local bj = ae(at)
                    if #bj >= 1 then
                        A("Found " .. #bj .. " Emotes!", 'with search-term "' .. at .. '"' .. ".")
                    end
                    bi:Refresh(bj, true)
                end
                if Settings.EmoteChat then
                    return
                end
                local av = ag(at)
                if av and string.len(at) > 2 then
                    N()
                    aa(av)
                    Settings.LastEmote = av
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                    UpdateFile()
                end
            end
        }
    )
    aq:AddTextbox(
        {
            Name = "Sync Emote (Player)",
            Default = "",
            TextDisappear = true,
            Callback = function(at)
                Settings.PlayerSync = getPlayersByName(at)
                if
                    Settings.PlayerSync and Settings.PlayerSync.Character and
                        Settings.PlayerSync.Character:FindFirstChildOfClass("Humanoid") and
                        game:GetService("Players").LocalPlayer.Character and
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                 then
                    local O =
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Animator
                    local bk =
                        Settings.PlayerSync.Character:FindFirstChildOfClass("Humanoid").Animator:GetPlayingAnimationTracks(

                    )
                    for v, r in pairs(bk) do
                        _G.LoadAnim = O:LoadAnimation(r.Animation)
                        _G.LoadAnim.TimePosition = r.TimePosition
                        _G.LoadAnim:Play(0.100000001, r.WeightCurrent, r.Speed)
                        _G.LoadAnim.Priority = Enum.AnimationPriority.Action
                    end
                    A(
                        "Syncing Emotes with ",
                        Settings.PlayerSync.Name ..
                            " @" ..
                                Settings.PlayerSync.DisplayName ..
                                    " it may not be synced, on your client but it is on the network."
                    )
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                    UpdateFile()
                    task.spawn(
                        function()
                            _G.LoadAnim.Stopped:Wait()
                            if not Settings.PlayAlways then
                                _G.LoadAnim:Stop()
                            end
                        end
                    )
                    Settings.PlayerSync.Character.Humanoid.Running:Wait()
                    if not Settings.PlayAlways then
                        _G.LoadAnim:Stop()
                    end
                end
            end
        }
    )
    local as = aq:AddSection({Name = " // Emote Dropdowns"})
    aq:AddDropdown(
        {
            Name = "Emotes (R15)",
            Default = "",
            Options = K,
            Callback = function(at)
                if a8() ~= "R6" then
                    N()
                    Settings.LastEmote = at
                    aa(at)
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                    UpdateFile()
                end
            end
        }
    )
    bi =
        aq:AddDropdown(
        {
            Name = "Emotes (Search)",
            Default = "",
            Options = {},
            Callback = function(at)
                if a8() ~= "R6" then
                    N()
                    Settings.LastEmote = at
                    aa(at)
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                    UpdateFile()
                end
            end
        }
    )
end
local bl
if a8() == "R15" then
    bl =
        aq:AddDropdown(
        {
            Name = "Emotes (Favorite)",
            Default = "",
            Options = {},
            Callback = function(at)
                if a8() ~= "R6" then
                    N()
                    Settings.LastEmote = at
                    aa(at)
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                    UpdateFile()
                end
            end
        }
    )
end
if Settings.Favorite and #Settings.Favorite >= 1 and a8() == "R15" then
    bl:Refresh(Settings.Favorite, true)
end
aq:AddButton(
    {
        Name = "Play Last Emote",
        Callback = function()
            if Settings.LastEmote and a8() == "R15" then
                a6(D[Settings.LastEmote])
                Status:Set(
                    "Current Emote: " ..
                        Settings.LastEmote ..
                            " // Speed: " ..
                                tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
                )
                UpdateFile()
            end
            if a8() == "R6" then
                N()
                a6(
                    H[Settings.LastEmote].Emote,
                    H[Settings.LastEmote].Speed,
                    H[Settings.LastEmote].Time,
                    H[Settings.LastEmote].Weight,
                    H[Settings.LastEmote].Loop
                )
            end
        end
    }
)
function RefreshDropdown()
    local bm = {}
    for v, ad in ipairs(Settings.Favorite) do
        if not table.find(bm, ad) then
            table.insert(bm, ad)
        end
    end
    bl:Refresh(bm, true)
end
if a8() == "R15" then
    aq:AddButton(
        {Name = "Favorite/Unfavorite Emote", Callback = function()
                local bn = table.find(Settings.Favorite, Settings.LastEmote)
                if not bn then
                    table.insert(Settings.Favorite, Settings.LastEmote)
                    RefreshDropdown()
                    UpdateFile()
                    A("Successfully Favorited", Settings.LastEmote)
                else
                    table.remove(Settings.Favorite, bn)
                    UpdateFile()
                    RefreshDropdown()
                end
            end}
    )
end
aq:AddButton(
    {
        Name = "Stop Emote",
        Callback = function()
            if _G.LoadAnim then
                _G.LoadAnim:Stop()
                P()
                Status:Set(
                    "Current Emote: " ..
                        Settings.LastEmote ..
                            " // Speed: " ..
                                tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
                )
                UpdateFile()
            end
        end
    }
)
local as = aq:AddSection({Name = " // Emote Settings"})
if a8() == "R15" then
    aq:AddToggle(
        {Name = "Emote Chat", Default = false, Callback = function(au)
                Settings.Chat = au
                if Settings.Chat then
                    A("Enabled Emote-Chat", "Prefix is: " .. Settings.EmotePrefix)
                    UpdateFile()
                end
            end}
    )
end
if a8() == "R15" then
    aq:AddToggle(
        {Name = "Emote Search", Default = false, Callback = function(au)
                Settings.EmoteChat = au
                UpdateFile()
            end}
    )
end
local function bo()
    local bp
    local bq = 0
    for v in pairs(D) do
        bq = bq + 1
    end
    local br = math.random(1, bq)
    bq = 0
    for bs, v in pairs(D) do
        bq = bq + 1
        if bq == br then
            bp = bs
            break
        end
    end
    return bp, D[bp]
end
if a8() == "R15" then
    aq:AddToggle(
        {
            Name = "Random Emote",
            Default = false,
            Callback = function(au)
                Settings.RandomEmote = au
                if Settings.RandomEmote then
                    local L = Instance.new("Part", game:GetService("Lighting"))
                    L.Name = "niggaLighting"
                end
                if not Settings.RandomEmote and game:GetService("Lighting"):FindFirstChild("niggaLighting") then
                    game:GetService("Lighting").niggaLighting:Destroy()
                    P()
                end
                while Settings.RandomEmote do
                    P()
                    local bt, bu = bo()
                    Settings.LastEmote = bt
                    a6(bu)
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                    repeat
                        task.wait()
                    until _G.LoadAnim.Length ~= 0 or not Settings.RandomEmote or
                        not game:GetService("Players").LocalPlayer.Character or
                        game:GetService("Players").LocalPlayer.Character and
                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or
                        game:GetService("Players").LocalPlayer.Character and
                            not game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    task.wait(_G.LoadAnim.Length + .5 or 5.6)
                end
            end
        }
    )
end
aq:AddToggle(
    {
        Name = "Time-Position",
        Default = false,
        Callback = function(au)
            Settings.Time = au
            Status:Set(
                "Current Emote: " ..
                    Settings.LastEmote ..
                        " // Speed: " ..
                            tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
            )
            UpdateFile()
        end
    }
)
aq:AddToggle(
    {Name = "Always Play", Default = false, Callback = function(au)
            Settings.PlayAlways = au
            UpdateFile()
        end}
)
if a8() == "R15" then
    aq:AddToggle(
        {
            Name = "Always Sync-Emotes",
            Default = false,
            Callback = function(au)
                Settings.SyncEmote = au
                while Settings.SyncEmote do
                    task.wait()
                    if
                        Settings.SyncEmote and Settings.PlayerSync and Settings.PlayerSync.Character and
                            Settings.PlayerSync.Character:FindFirstChildOfClass("Humanoid") and
                            game:GetService("Players").LocalPlayer.Character and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                     then
                        local O =
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Animator
                        local bk =
                            Settings.PlayerSync.Character:FindFirstChildOfClass("Humanoid").Animator:GetPlayingAnimationTracks(

                        )
                        for v, r in pairs(bk) do
                            _G.LoadAnim = O:LoadAnimation(r.Animation)
                            _G.LoadAnim.Priority = Enum.AnimationPriority.Action
                            _G.LoadAnim:Play(0.100000001, r.WeightCurrent, r.Speed)
                            _G.LoadAnim.TimePosition = r.TimePosition
                            _G.LoadAnim:AdjustSpeed(r.Speed)
                        end
                        task.spawn(
                            function()
                                _G.LoadAnim.Stopped:Wait()
                                if not Settings.PlayAlways then
                                    _G.LoadAnim:Stop()
                                end
                            end
                        )
                        Status:Set(
                            "Current Emote: " ..
                                Settings.LastEmote ..
                                    " // Speed: " ..
                                        tostring(Settings.EmoteSpeed) ..
                                            " // Time Position: " .. ak() .. " // Looped: " .. al()
                        )
                    end
                end
            end
        }
    )
end
aq:AddToggle(
    {
        Name = "Loop Emote",
        Default = false,
        Callback = function(au)
            Settings.Looped = au
            Status:Set(
                "Current Emote: " ..
                    Settings.LastEmote ..
                        " // Speed: " ..
                            tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
            )
            UpdateFile()
        end
    }
)
aq:AddToggle(
    {
        Name = "Reverse Emote",
        Default = false,
        Callback = function(au)
            Settings.Reversed = au
            UpdateFile()
            if
                Settings.Reversed and game:GetService("Players").LocalPlayer.Character and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
             then
                _G.LoadAnim:AdjustSpeed(Settings.ReverseSpeed)
                Status:Set(
                    "Current Emote: " ..
                        Settings.LastEmote ..
                            " // Speed: " ..
                                tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
                )
            end
        end
    }
)
aq:AddToggle(
    {
        Name = "Freeze Emote",
        Default = false,
        Callback = function(au)
            Settings.FreezeEmote = au
            if
                au == true and game:GetService("Players").LocalPlayer.Character and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                    _G.LoadAnim
             then
                _G.LoadAnim:AdjustSpeed(0)
                Status:Set(
                    "Current Emote: " ..
                        Settings.LastEmote ..
                            " // Speed: " ..
                                tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
                )
            elseif
                au == false and game:GetService("Players").LocalPlayer.Character and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                    _G.LoadAnim
             then
                _G.LoadAnim:AdjustSpeed(1)
                Status:Set(
                    "Current Emote: " ..
                        Settings.LastEmote ..
                            " // Speed: " ..
                                tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
                )
            end
        end
    }
)
if a8() == "R15" then
    aq:AddToggle(
        {
            Name = "Sync Emote",
            Default = false,
            Callback = function(au)
                if Settings.Player and Settings.Player.Character then
                    Settings.PlayerSync = Settings.Player
                elseif not Settings.PlayerSync then
                    return
                end
                if au == true then
                    local L = Instance.new("Part", game:GetService("Lighting"))
                    L.Name = "niggasync"
                end
                if
                    Settings.PlayerSync and Settings.PlayerSync.Character and
                        Settings.PlayerSync.Character:FindFirstChildOfClass("Humanoid") and
                        game:GetService("Players").LocalPlayer.Character and
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                        au == true
                 then
                    local O =
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Animator
                    local bk =
                        Settings.PlayerSync.Character:FindFirstChildOfClass("Humanoid").Animator:GetPlayingAnimationTracks(

                    )
                    for v, r in pairs(bk) do
                        _G.LoadAnim = O:LoadAnimation(r.Animation)
                        _G.LoadAnim.TimePosition = r.TimePosition
                        _G.LoadAnim:Play(0.100000001, r.WeightCurrent, r.Speed)
                        _G.LoadAnim.Priority = Enum.AnimationPriority.Action
                    end
                    A(
                        "Syncing Emotes with ",
                        Settings.PlayerSync.Name ..
                            " @" ..
                                Settings.PlayerSync.DisplayName ..
                                    " it may not be synced, on your client but it is on the network."
                    )
                    Status:Set(
                        "Current Emote: " ..
                            Settings.LastEmote ..
                                " // Speed: " ..
                                    tostring(Settings.EmoteSpeed) ..
                                        " // Time Position: " .. ak() .. " // Looped: " .. al()
                    )
                    UpdateFile()
                    task.spawn(
                        function()
                            _G.LoadAnim.Stopped:Wait()
                            if not Settings.PlayAlways then
                                _G.LoadAnim:Stop()
                            end
                        end
                    )
                    Settings.PlayerSync.Character.Humanoid.Running:Wait()
                    if not Settings.PlayAlways then
                        _G.LoadAnim:Stop()
                    end
                elseif game:GetService("Lighting"):FindFirstChild("niggasync") then
                    N()
                    P()
                end
            end
        }
    )
end
aq:AddSlider(
    {
        Name = "Emote Speed",
        Min = 0,
        Max = 100,
        Default = 1,
        Color = Color3.fromRGB(0, 128, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            Settings.EmoteSpeed = at
            if
                _G.LoadAnim and game:GetService("Players").LocalPlayer.Character and
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
             then
                _G.LoadAnim:AdjustSpeed(at)
                Status:Set(
                    "Current Emote: " ..
                        Settings.LastEmote ..
                            " // Speed: " ..
                                tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
                )
            end
        end
    }
)
aq:AddSlider(
    {
        Name = "Time Position",
        Min = 0,
        Max = 100,
        Default = 0,
        Color = Color3.fromRGB(0, 128, 255),
        Increment = 1,
        ValueName = "",
        Callback = function(at)
            UpdateFile()
            if Settings.Time then
                Settings.TimePosition = at
                _G.LoadAnim.TimePosition = at / 100 * _G.LoadAnim.Length
                Status:Set(
                    "Current Emote: " ..
                        Settings.LastEmote ..
                            " // Speed: " ..
                                tostring(Settings.EmoteSpeed) .. " // Time Position: " .. ak() .. " // Looped: " .. al()
                )
            end
        end
    }
)
function GetRandomAnimation(bv)
    local bw = {}
    for bs, v in pairs(bv) do
        table.insert(bw, bs)
    end
    local bp = bw[math.random(1, #bw)]
    return bv[bp]
end
if
    game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso")
 then
    aA:AddDropdown(
        {
            Name = "Select Animation",
            Default = "",
            Options = J,
            Callback = function(bh)
                Settings.SelectedAnimation = bh
                UpdateFile()
                N()
                Q(
                    E[bh].Idle,
                    E[bh].Idle2,
                    E[bh].Idle3,
                    E[bh].Walk,
                    E[bh].Run,
                    E[bh].Jump,
                    E[bh].Climb,
                    E[bh].Fall,
                    E[bh].Swim,
                    E[bh].SwimIdle,
                    E[bh].Weight,
                    E[bh].Weight2
                )
                P()
                local a9 =
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
                local ah = a9:GetPlayingAnimationTracks()
                for v, r in pairs(ah) do
                    r:AdjustSpeed(Settings.AnimationSpeed)
                end
                aB:Set(
                    "Current Animation: " ..
                        Settings.SelectedAnimation .. " // Speed: " .. tostring(Settings.AnimationSpeed)
                )
            end
        }
    )
    aA:AddTextbox(
        {
            Name = "Play Animation (Name)",
            Default = "",
            TextDisappear = true,
            Callback = function(at)
                local bx = ac(at)
                if bx and string.len(at) > 2 then
                    N()
                    Settings.SelectedAnimation = bx
                    Settings.LastEmote = "Play"
                    Q(
                        E[bx].Idle,
                        E[bx].Idle2,
                        E[bx].Idle3,
                        E[bx].Walk,
                        E[bx].Run,
                        E[bx].Jump,
                        E[bx].Climb,
                        E[bx].Fall,
                        E[bx].Swim,
                        E[bx].SwimIdle,
                        E[bx].Weight,
                        E[bx].Weight2
                    )
                    UpdateFile()
                    aB:Set(
                        "Current Animation: " ..
                            Settings.SelectedAnimation .. " // Speed: " .. tostring(Settings.AnimationSpeed)
                    )
                    P()
                end
            end
        }
    )
    local by
    aA:AddToggle(
        {Name = "Animation Chat", Default = false, Callback = function(au)
                Settings.Animate = au
                UpdateFile()
                if Settings.Animate then
                    A("Enabled Animation-Chat", "Prefix is: " .. Settings.AnimationPrefix)
                end
            end}
    )
    aA:AddToggle(
        {
            Name = "Random Animation",
            Default = false,
            Callback = function(au)
                Settings.RandomAnim = au
                UpdateFile()
                while Settings.RandomAnim do
                    task.wait()
                    if
                        game:GetService("Players").LocalPlayer.Character and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                            Settings.RandomAnim
                     then
                        Settings.Custom = GetRandomAnimation(E)
                        N()
                        Q(
                            Settings.Custom.Idle,
                            Settings.Custom.Idle2,
                            Settings.Custom.Idle3,
                            Settings.Custom.Walk,
                            Settings.Custom.Run,
                            Settings.Custom.Jump,
                            Settings.Custom.Climb,
                            Settings.Custom.Fall,
                            Settings.Custom.Swim,
                            Settings.Custom.SwimIdle,
                            Settings.Custom.Weight,
                            Settings.Custom.Weight2
                        )
                        Settings.SelectedAnimation = "Custom"
                        local a9 =
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass(
                                "AnimationController"
                            )
                        local ah = a9:GetPlayingAnimationTracks()
                        for v, r in pairs(ah) do
                            r:AdjustSpeed(Settings.AnimationSpeed)
                        end
                        aB:Set(
                            "Current Animation: " ..
                                Settings.SelectedAnimation .. " // Speed: " .. tostring(Settings.AnimationSpeed)
                        )
                        P()
                        task.wait(6.35)
                    end
                end
            end
        }
    )
    aA:AddButton(
        {Name = "Reset Animations", Callback = function()
                N()
                local b = game:GetService("Players").LocalPlayer.Character.Animate
                b.idle.Animation1.AnimationId = OriginalAnimations[1] or ""
                b.idle.Animation2.AnimationId = OriginalAnimations[2] or ""
                if b:FindFirstChild("pose") then
                    local e =
                        game:GetService("Players").LocalPlayer.Character.Animate.pose:FindFirstChildOfClass("Animation")
                    if e then
                        e.AnimationId = OriginalAnimations[3] or ""
                    end
                end
                b.walk:FindFirstChildOfClass("Animation").AnimationId = OriginalAnimations[4] or ""
                b.run:FindFirstChildOfClass("Animation").AnimationId = OriginalAnimations[5] or ""
                b.jump:FindFirstChildOfClass("Animation").AnimationId = OriginalAnimations[6] or ""
                b.climb:FindFirstChildOfClass("Animation").AnimationId = OriginalAnimations[7] or ""
                b.fall:FindFirstChildOfClass("Animation").AnimationId = OriginalAnimations[8] or ""
                b.swim:FindFirstChildOfClass("Animation").AnimationId = OriginalAnimations[9] or ""
                b.swimidle:FindFirstChildOfClass("Animation").AnimationId = OriginalAnimations[10] or ""
                P()
            end}
    )
    local as = aA:AddSection({Name = " // Animation Settings"})
    aA:AddSlider(
        {
            Name = "Animation Speed",
            Min = 0,
            Max = 100,
            Default = 1,
            Color = Color3.fromRGB(0, 128, 255),
            Increment = 1,
            ValueName = "",
            Callback = function(at)
                Settings.AnimationSpeed = at
                aB:Set(
                    "Current Animation: " ..
                        Settings.SelectedAnimation .. " // Speed: " .. tostring(Settings.AnimationSpeed)
                )
            end
        }
    )
    aA:AddToggle(
        {Name = "Animation Speed", Default = false, Callback = function(au)
                Settings.AnimationSpeedToggle = au
                UpdateFile()
            end}
    )
    local by
    local bz
    local function bA(b0)
        if by then
            by:Disconnect()
            by = nil
        end
        if
            b0 and b0.Character and b0.Character:FindFirstChildOfClass("Humanoid") and
                b0.Character:FindFirstChild("Animate")
         then
            by =
                b0.Character.Humanoid.AnimationPlayed:Connect(
                function(bB)
                    if
                        Settings.SyncAnimations and game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Animate")
                     then
                        local bC = bB.Animation.AnimationId
                        for v, bD in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                            bD:Stop()
                        end
                        P()
                        local bE = Instance.new("Animation")
                        bE.AnimationId = bC
                        local bF = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(bE)
                        bF:Play()
                        bF:AdjustWeight(10)
                        bF.Stopped:Connect(
                            function()
                                game.Players.LocalPlayer.Character.Animate.Disabled = false
                            end
                        )
                        aB:Set(
                            "Current Animation: " ..
                                Settings.SelectedAnimation .. " // Speed: " .. tostring(Settings.AnimationSpeed)
                        )
                        UpdateFile()
                    end
                end
            )
        end
    end
    local function bG(b0)
        if bz then
            bz:Disconnect()
            bz = nil
        end
        bz =
            b0.CharacterAdded:Connect(
            function(b1)
                repeat
                    task.wait()
                until b1:FindFirstChildOfClass("Humanoid") and b1:FindFirstChild("Animate") and Settings.SyncAnimations
                bA(b0)
            end
        )
    end
    aA:AddToggle(
        {
            Name = "Sync Animations",
            Default = false,
            Callback = function(au)
                Settings.SyncAnimations = au
                UpdateFile()
                if Settings.SyncAnimations then
                    P()
                    N()
                    task.spawn(
                        function()
                            repeat
                                task.wait()
                            until not Settings.Player or not Settings.SyncAnimations
                            P()
                        end
                    )
                    if not game.Lighting:FindFirstChild("SyncNigga") then
                        local L = Instance.new("Part", game.Lighting)
                        L.Name = "SyncNigga"
                    end
                    local b = game.Players.LocalPlayer.Character:FindFirstChild("Animate")
                    local bH = Settings.Player.Character:FindFirstChild("Animate")
                    if b and bH then
                        N()
                        local bI = {
                            b.idle.Animation1.AnimationId,
                            b.idle.Animation2.AnimationId,
                            b.walk:FindFirstChildOfClass("Animation").AnimationId,
                            b.run:FindFirstChildOfClass("Animation").AnimationId,
                            b.jump:FindFirstChildOfClass("Animation").AnimationId,
                            b.climb:FindFirstChildOfClass("Animation").AnimationId,
                            b.fall:FindFirstChildOfClass("Animation").AnimationId,
                            b.swim:FindFirstChildOfClass("Animation").AnimationId,
                            b.swimidle:FindFirstChildOfClass("Animation").AnimationId
                        }
                        b.idle.Animation1.AnimationId = bH.idle.Animation1.AnimationId or bI[1]
                        b.idle.Animation2.AnimationId = bH.idle.Animation2.AnimationId or bI[2]
                        b.walk:FindFirstChildOfClass("Animation").AnimationId =
                            bH.walk:FindFirstChildOfClass("Animation").AnimationId or bI[3]
                        b.run:FindFirstChildOfClass("Animation").AnimationId =
                            bH.run:FindFirstChildOfClass("Animation").AnimationId or bI[4]
                        b.jump:FindFirstChildOfClass("Animation").AnimationId =
                            bH.jump:FindFirstChildOfClass("Animation").AnimationId or bI[5]
                        b.climb:FindFirstChildOfClass("Animation").AnimationId =
                            bH.climb:FindFirstChildOfClass("Animation").AnimationId or bI[6]
                        b.fall:FindFirstChildOfClass("Animation").AnimationId =
                            bH.fall:FindFirstChildOfClass("Animation").AnimationId or bI[7]
                        b.swim:FindFirstChildOfClass("Animation").AnimationId =
                            bH.swim:FindFirstChildOfClass("Animation").AnimationId or bI[8]
                        b.swimidle:FindFirstChildOfClass("Animation").AnimationId =
                            bH.swimidle:FindFirstChildOfClass("Animation").AnimationId or bI[9]
                        if b:FindFirstChild("pose") and bH:FindFirstChild("pose") then
                            local e = b.pose:FindFirstChildOfClass("Animation")
                            local bJ = bH.pose:FindFirstChildOfClass("Animation")
                            if e and bJ then
                                e.AnimationId = bJ.AnimationId or bI[10]
                            end
                        end
                        P()
                    end
                elseif not Settings.SyncAnimations and game.Lighting:FindFirstChild("SyncNigga") then
                    game.Lighting.SyncNigga:Destroy()
                    if by then
                        by:Disconnect()
                        by = nil
                    end
                    if bz then
                        bz:Disconnect()
                        bz = nil
                    end
                end
                if
                    Settings.Player and Settings.Player.Character and
                        Settings.Player.Character:FindFirstChildOfClass("Humanoid")
                 then
                    bG(Settings.Player)
                    bA(Settings.Player)
                end
            end
        }
    )
    local bK
    local bL
    local function bM(b0)
        if bK then
            bK:Disconnect()
        end
        if bL then
            bL:Disconnect()
        end
        if b0 and b0.Character and b0.Character:FindFirstChildOfClass("Humanoid") then
            bL =
                b0.Character.Humanoid:GetPropertyChangedSignal("Jump"):Connect(
                function()
                    if Settings.CopyMovement then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Jump = true
                    end
                end
            )
            bK =
                game:GetService("RunService").Stepped:Connect(
                function()
                    if
                        Settings.CopyMovement and b0 and b0.Character and b0.Character:FindFirstChildOfClass("Humanoid") and
                            b0.Character.Humanoid.Health >= 1 and
                            b0.Character:FindFirstChild("Head") and
                            b0.Character:FindFirstChild("HumanoidRootPart") and
                            game:GetService("Players").LocalPlayer.Character and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head")
                     then
                        local bN = game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position
                        local bO = b0.Character:FindFirstChild("Head").Position
                        local bP = Vector3.new(bO.X, bN.Y, bO.Z)
                        local bQ = CFrame.new(bN, bP)
                        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(bQ)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                            b0.Character.HumanoidRootPart.CFrame
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                false
                        end
                        if not b0.Character:FindFirstChildOfClass("Tool") then
                            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                        end
                        if b0.Character:FindFirstChildOfClass("Tool") then
                            local bR = b0.Character:FindFirstChildOfClass("Tool").Name
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(bR) then
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(
                                    game.Players.LocalPlayer.Backpack:FindFirstChild(bR)
                                )
                            end
                        end
                    end
                end
            )
        end
    end
    aA:AddToggle(
        {Name = "Copy Movement", Default = false, Callback = function(au)
                Settings.CopyMovement = au
                UpdateFile()
                if Settings.CopyMovement and d and d.Character and d.Character:FindFirstChildOfClass("Humanoid") then
                    bM(d)
                    local L = Instance.new("Part", game:GetService("Lighting"))
                    L.Name = "CopyMovementNigga"
                elseif game:GetService("Lighting"):FindFirstChild("CopyMovementNigga") then
                    game:GetService("Lighting"):FindFirstChild("CopyMovementNigga"):Destroy()
                    if bK then
                        bK:Disconnect()
                    end
                    if bL then
                        bL:Disconnect()
                    end
                end
                if d and Settings.CopyMovement then
                    Settings.Player = d
                end
            end}
    )
    aA:AddToggle(
        {
            Name = "Freeze Animation",
            Default = false,
            Callback = function(au)
                Settings.FreezeAnimation = au
                UpdateFile()
                if Settings.FreezeAnimation then
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "freezenigga"
                end
                if
                    not Settings.FreezeAnimation and
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                        game:GetService("Lighting"):FindFirstChild("freezenigga") or
                        not Settings.FreezeAnimation and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass(
                                "AnimationController"
                            ) and
                            game:GetService("Lighting"):FindFirstChild("freezenigga")
                 then
                    game.Lighting.freezenigga:Destroy()
                    local a9 =
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
                    local ah = a9:GetPlayingAnimationTracks()
                    for v, r in pairs(ah) do
                        r:AdjustSpeed(1)
                    end
                    P()
                end
                while Settings.FreezeAnimation do
                    task.wait()
                    if
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass(
                                "AnimationController"
                            )
                     then
                        local a9 =
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass(
                                "AnimationController"
                            )
                        local ah = a9:GetPlayingAnimationTracks()
                        for v, r in pairs(ah) do
                            r:AdjustSpeed(0)
                        end
                    end
                end
            end
        }
    )
    local as = aA:AddSection({Name = " // Emote Toggles"})
    aA:AddToggle(
        {
            Name = "Sit",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Lotus")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 45 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What13"
                elseif game.Lighting:FindFirstChild("What13") then
                    game.Lighting:FindFirstChild("What13"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    local bS = 2.1
    if
        game:GetService("Players").LocalPlayer.Character and
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
     then
        bS = game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight
    end
    aA:AddToggle(
        {
            Name = "Sit 2",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Bicycle")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 72 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What14"
                elseif game.Lighting:FindFirstChild("What14") then
                    game.Lighting:FindFirstChild("What14"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Sit 3",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Quiet Waves")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 12 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What16"
                elseif game.Lighting:FindFirstChild("What16") then
                    game.Lighting:FindFirstChild("What16"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Sit 4",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Skadoosh")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 77 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What17"
                elseif game.Lighting:FindFirstChild("What17") then
                    game.Lighting:FindFirstChild("What17"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Float",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Fall Back to Float")
                    aa(av)
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 4
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 72 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What18"
                elseif game.Lighting:FindFirstChild("What18") then
                    game.Lighting:FindFirstChild("What18"):Destroy()
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = bS
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Float 2",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Skadoosh")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 43 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What19"
                elseif game.Lighting:FindFirstChild("What19") then
                    game.Lighting:FindFirstChild("What19"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Float 3",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Cuco - Levitate")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 7 / 100 * _G.LoadAnim.Length
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What20"
                elseif game.Lighting:FindFirstChild("What20") then
                    game.Lighting:FindFirstChild("What20"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                task.spawn(
                    function()
                        while Settings.RapePlayer do
                            _G.LoadAnim.TimePosition = 7 / 100 * _G.LoadAnim.Length
                            task.wait(6)
                        end
                    end
                )
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Upside Down",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Hero Landing")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 24.15 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What21"
                elseif game.Lighting:FindFirstChild("What21") then
                    game.Lighting:FindFirstChild("What21"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Upside Down 2",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Skadoosh")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 44 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What22"
                elseif game.Lighting:FindFirstChild("What22") then
                    game.Lighting:FindFirstChild("What22"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Lay Down",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Bicycle")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 57 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What23"
                elseif game.Lighting:FindFirstChild("What23") then
                    game.Lighting:FindFirstChild("What23"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Twerk Ass",
            Default = false,
            Callback = function(au)
                Settings.TwerkAss = au
                if Settings.TwerkAss then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Scorpion")
                    aa(av)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What24"
                elseif game.Lighting:FindFirstChild("What24") then
                    game.Lighting:FindFirstChild("What24"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.TwerkAss do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                    _G.LoadAnim.TimePosition = 83
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 83
                    _G.LoadAnim.TimePosition = 83
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 83
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Twerk Ass 2",
            Default = false,
            Callback = function(au)
                Settings.TwerkAss2 = au
                if Settings.TwerkAss2 then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Scorpion")
                    aa(av)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What25"
                elseif game.Lighting:FindFirstChild("What25") then
                    game.Lighting:FindFirstChild("What25"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.TwerkAss2 do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                    _G.LoadAnim.TimePosition = 82
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 83
                    _G.LoadAnim.TimePosition = 82
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 83
                end
            end
        }
    )
    aA:AddToggle(
        {
            Name = "Strech",
            Default = false,
            Callback = function(au)
                Settings.RapePlayer = au
                if Settings.RapePlayer then
                    Settings.PlayAlways = true
                    Settings.Time = true
                    P()
                    local av = ag("Quiet Waves")
                    aa(av)
                    task.wait(.15)
                    _G.LoadAnim.TimePosition = 52 / 100 * _G.LoadAnim.Length
                    _G.LoadAnim:AdjustSpeed(0)
                    local L = Instance.new("Part", game.Lighting)
                    L.Name = "What26"
                elseif game.Lighting:FindFirstChild("What26") then
                    game.Lighting:FindFirstChild("What26"):Destroy()
                    P()
                    Settings.PlayAlways = false
                end
                while Settings.RapePlayer do
                    task.wait()
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit then
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit =
                                    false
                            end
                        end
                    )
                end
            end
        }
    )
end
if
    game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso")
 then
    local bT = ao:MakeTab({Name = "Custom Anims", Icon = "rbxassetid://12403104094", PremiumOnly = false})
    local as = bT:AddSection({Name = " // Custom Emotes"})
    bT:AddDropdown(
        {
            Name = "Emotes (Animation)",
            Default = "",
            Options = {
                "Idle",
                "Idle 2",
                "Walk",
                "Run",
                "Jump",
                "Climb",
                "Fall",
                "Swim Idle",
                "Swim",
                "Wave",
                "Laugh",
                "Cheer",
                "Point",
                "Sit",
                "Dance",
                "Dance 2",
                "Dance 3"
            },
            Callback = function(at)
                if Settings.LastEmote == "" then
                    x("Failed!", "Selected an Emote First from the (Main) Tab!")
                    return
                end
                if at == "Idle" then
                    a2("idle1", D[Settings.LastEmote])
                    Settings.Custom.Idle = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Idle 2" then
                    a2("idle2", D[Settings.LastEmote])
                    Settings.Custom.Idle2 = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Walk" then
                    a2("walk", D[Settings.LastEmote])
                    Settings.Custom.Walk = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Run" then
                    a2("run", D[Settings.LastEmote])
                    Settings.Custom.Run = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Jump" then
                    a2("jump", D[Settings.LastEmote])
                    Settings.Custom.Jump = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Climb" then
                    a2("climb", D[Settings.LastEmote])
                    Settings.Custom.Climb = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Fall" then
                    a2("fall", D[Settings.LastEmote])
                    Settings.Custom.Fall = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Swim Idle" then
                    a2("swimidle", D[Settings.LastEmote])
                    Settings.Custom.SwimIdle = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Swim" then
                    a2("swim", D[Settings.LastEmote])
                    Settings.Custom.Swim = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Wave" then
                    a2("wave", D[Settings.LastEmote])
                    Settings.Custom.Wave = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Laugh" then
                    a2("laugh", D[Settings.LastEmote])
                    Settings.Custom.Laugh = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Cheer" then
                    a2("cheer", D[Settings.LastEmote])
                    Settings.Custom.Cheer = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Point" then
                    a2("point", D[Settings.LastEmote])
                    Settings.Custom.Point = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Sit" then
                    a2("sit", D[Settings.LastEmote])
                    Settings.Custom.Sit = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Dance" then
                    a2("dance", D[Settings.LastEmote])
                    Settings.Custom.Dance = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Dance 2" then
                    a2("dance2", D[Settings.LastEmote])
                    Settings.Custom.Dance2 = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                elseif at == "Dance 3" then
                    a2("dance3", D[Settings.LastEmote])
                    Settings.Custom.Dance3 = D[Settings.LastEmote]
                    Settings.SelectedAnimation = "Custom"
                    UpdateFile()
                end
            end
        }
    )
    bT:AddButton(
        {
            Name = "Select Random Animations",
            Callback = function()
                Settings.Custom.Custom = {}
                P()
                for q = 1, 10 do
                    task.wait()
                    Settings.Custom.Idle = GetRandomAnimation(E).Idle
                    Settings.Custom.Idle2 = GetRandomAnimation(E).Idle2
                    Settings.Custom.Idle3 = GetRandomAnimation(E).Idle3
                    Settings.Custom.Walk = GetRandomAnimation(E).Walk
                    Settings.Custom.Run = GetRandomAnimation(E).Run
                    Settings.Custom.Jump = GetRandomAnimation(E).Jump
                    Settings.Custom.Climb = GetRandomAnimation(E).Climb
                    Settings.Custom.Fall = GetRandomAnimation(E).Fall
                    Settings.Custom.Swim = GetRandomAnimation(E).Swim
                    Settings.Custom.SwimIdle = GetRandomAnimation(E).SwimIdle
                    Settings.Custom.Weight = GetRandomAnimation(E).Weight
                    Settings.Custom.Weight2 = GetRandomAnimation(E).Weight2
                end
                Q(
                    Settings.Custom.Idle,
                    Settings.Custom.Idle2,
                    Settings.Custom.Idle3,
                    Settings.Custom.Walk,
                    Settings.Custom.Run,
                    Settings.Custom.Jump,
                    Settings.Custom.Climb,
                    Settings.Custom.Fall,
                    Settings.Custom.Swim,
                    Settings.Custom.SwimIdle,
                    Settings.Custom.Weight,
                    Settings.Custom.Weight2
                )
                UpdateFile()
                P()
                Settings.SelectedAnimation = "Custom"
            end
        }
    )
    bT:AddButton(
        {
            Name = "Select Random Emote Animations",
            Callback = function()
                Settings.Custom.Custom = {}
                P()
                for q = 1, 10 do
                    task.wait()
                    local bt, bu = bo()
                    if q == 1 then
                        Settings.Custom.Idle = bu
                    elseif q == 2 then
                        Settings.Custom.Idle2 = bu
                    elseif q == 3 then
                        Settings.Custom.Idle3 = bu
                    elseif q == 4 then
                        Settings.Custom.Walk = bu
                    elseif q == 5 then
                        Settings.Custom.Run = bu
                    elseif q == 6 then
                        Settings.Custom.Jump = bu
                    elseif q == 7 then
                        Settings.Custom.Climb = bu
                    elseif q == 8 then
                        Settings.Custom.Fall = bu
                    elseif q == 9 then
                        Settings.Custom.Swim = bu
                    elseif q == 10 then
                        Settings.Custom.SwimIdle = bu
                    end
                end
                Q(
                    Settings.Custom.Idle,
                    Settings.Custom.Idle2,
                    Settings.Custom.Idle3,
                    Settings.Custom.Walk,
                    Settings.Custom.Run,
                    Settings.Custom.Jump,
                    Settings.Custom.Climb,
                    Settings.Custom.Fall,
                    Settings.Custom.Swim,
                    Settings.Custom.SwimIdle,
                    Settings.Custom.Weight,
                    Settings.Custom.Weight2
                )
                UpdateFile()
                P()
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = "Emotes"
            end
        }
    )
    local as = bT:AddSection({Name = " // Custom-Selection Dropdowns"})
    bT:AddDropdown(
        {Name = "Set Idle1 Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("idle1", E[bh].Idle)
                Settings.Custom.Idle = E[bh].Idle
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Idle2 Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("idle2", E[bh].Idle2)
                Settings.Custom.Idle2 = E[bh].Idle2
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Walk Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("walk", E[bh].Walk)
                Settings.Custom.Walk = E[bh].Walk
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Run Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("run", E[bh].Run)
                Settings.Custom.Run = E[bh].Run
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Jump Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("jump", E[bh].Jump)
                Settings.Custom.Jump = E[bh].Jump
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Climb Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("climb", E[bh].Climb)
                Settings.Custom.Climb = E[bh].Climb
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Fall Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("fall", E[bh].Fall)
                Settings.Custom.Fall = E[bh].Fall
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Swim-Idle Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("swimidle", E[bh].SwimIdle)
                Settings.Custom.SwimIdle = E[bh].SwimIdle
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
    bT:AddDropdown(
        {Name = "Set Swim Animation", Default = "", Options = J, Callback = function(bh)
                Settings.SelectedAnimation = ""
                a2("swim", E[bh].Swim)
                Settings.Custom.Swim = E[bh].Swim
                Settings.SelectedAnimation = "Custom"
                Settings.Custom.Name = bh
                UpdateFile()
            end}
    )
end
local bU = ao:MakeTab({Name = "Settings", Icon = "rbxassetid://8382597378", PremiumOnly = false})
bU:AddButton(
    {Name = "Rejoin", Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end}
)
bU:AddButton(
    {Name = "Serverhop", Callback = function()
            game:GetService("TeleportService"):TeleportCancel()
            game:GetService("Players").LocalPlayer:Kick("Serverhopping please wait... | This is to avoid bans in-game.")
            task.wait(.15)
            m()
        end}
)
bU:AddButton(
    {
        Name = "Save Current Animations (File)",
        Callback = function()
            if
                game:GetService("Players").LocalPlayer.Character ~= nil and
                    game:GetService("Players").LocalPlayer.Character.Animate ~= nil
             then
                local b = game:GetService("Players").LocalPlayer.Character.Animate
                local bV = math.random(9e9, 8e8)
                if writefile then
                    writefile(
                        game:GetService("Players").LocalPlayer.Name .. "_Animations_" .. bV .. ".lua",
                        "local Animate = game:GetService('Players').LocalPlayer.Character.Animate" ..
                            "\n" ..
                                "Animate.idle.Animation1.AnimationId = " ..
                                    "'" ..
                                        b.idle.Animation1.AnimationId ..
                                            "'" ..
                                                "\n" ..
                                                    "Animate.idle.Animation2.AnimationId = " ..
                                                        "'" ..
                                                            b.idle.Animation2.AnimationId ..
                                                                "'" ..
                                                                    "\n" ..
                                                                        "Animate.run:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                            "'" ..
                                                                                b.run:FindFirstChildOfClass("Animation").AnimationId ..
                                                                                    "'" ..
                                                                                        "\n" ..
                                                                                            "Animate.walk:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                "'" ..
                                                                                                    b.walk:FindFirstChildOfClass(
                                                                                                        "Animation"
                                                                                                    ).AnimationId ..
                                                                                                        "'" ..
                                                                                                            "\n" ..
                                                                                                                "Animate.jump:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                    "'" ..
                                                                                                                        b.jump:FindFirstChildOfClass(
                                                                                                                            "Animation"
                                                                                                                        ).AnimationId ..
                                                                                                                            "'" ..
                                                                                                                                "\n" ..
                                                                                                                                    "Animate.climb:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                        "'" ..
                                                                                                                                            b.climb:FindFirstChildOfClass(
                                                                                                                                                "Animation"
                                                                                                                                            ).AnimationId ..
                                                                                                                                                "'" ..
                                                                                                                                                    "\n" ..
                                                                                                                                                        "Animate.fall:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                            "'" ..
                                                                                                                                                                b.fall:FindFirstChildOfClass(
                                                                                                                                                                    "Animation"
                                                                                                                                                                ).AnimationId ..
                                                                                                                                                                    "'" ..
                                                                                                                                                                        "\n" ..
                                                                                                                                                                            "Animate.swim:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                                                "'" ..
                                                                                                                                                                                    b.swim:FindFirstChildOfClass(
                                                                                                                                                                                        "Animation"
                                                                                                                                                                                    ).AnimationId ..
                                                                                                                                                                                        "'" ..
                                                                                                                                                                                            "\n" ..
                                                                                                                                                                                                "Animate.swimidle:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                                                                    "'" ..
                                                                                                                                                                                                        b.swimidle:FindFirstChildOfClass(
                                                                                                                                                                                                            "Animation"
                                                                                                                                                                                                        ).AnimationId ..
                                                                                                                                                                                                            "'"
                    )
                    A(
                        game:GetService("Players").LocalPlayer.Name ..
                            " @" .. game:GetService("Players").LocalPlayer.DisplayName .. " Animations",
                        "saved to workspace folder!"
                    )
                else
                    A(
                        game:GetService("Players").LocalPlayer.Name ..
                            " @" .. game:GetService("Players").LocalPlayer.DisplayName .. " Animations",
                        "set to clipboard"
                    )
                    setclipboard(
                        "local Animate = game:GetService('Players').LocalPlayer.Character.Animate" ..
                            "\n" ..
                                "Animate.idle.Animation1.AnimationId = " ..
                                    "'" ..
                                        b.idle.Animation1.AnimationId ..
                                            "'" ..
                                                "\n" ..
                                                    "Animate.idle.Animation2.AnimationId = " ..
                                                        "'" ..
                                                            b.idle.Animation2.AnimationId ..
                                                                "'" ..
                                                                    "\n" ..
                                                                        "Animate.run:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                            "'" ..
                                                                                b.run:FindFirstChildOfClass("Animation").AnimationId ..
                                                                                    "'" ..
                                                                                        "\n" ..
                                                                                            "Animate.walk:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                "'" ..
                                                                                                    b.walk:FindFirstChildOfClass(
                                                                                                        "Animation"
                                                                                                    ).AnimationId ..
                                                                                                        "'" ..
                                                                                                            "\n" ..
                                                                                                                "Animate.jump:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                    "'" ..
                                                                                                                        b.jump:FindFirstChildOfClass(
                                                                                                                            "Animation"
                                                                                                                        ).AnimationId ..
                                                                                                                            "'" ..
                                                                                                                                "\n" ..
                                                                                                                                    "Animate.climb:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                        "'" ..
                                                                                                                                            b.climb:FindFirstChildOfClass(
                                                                                                                                                "Animation"
                                                                                                                                            ).AnimationId ..
                                                                                                                                                "'" ..
                                                                                                                                                    "\n" ..
                                                                                                                                                        "Animate.fall:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                            "'" ..
                                                                                                                                                                b.fall:FindFirstChildOfClass(
                                                                                                                                                                    "Animation"
                                                                                                                                                                ).AnimationId ..
                                                                                                                                                                    "'" ..
                                                                                                                                                                        "\n" ..
                                                                                                                                                                            "Animate.swim:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                                                "'" ..
                                                                                                                                                                                    b.swim:FindFirstChildOfClass(
                                                                                                                                                                                        "Animation"
                                                                                                                                                                                    ).AnimationId ..
                                                                                                                                                                                        "'" ..
                                                                                                                                                                                            "\n" ..
                                                                                                                                                                                                "Animate.swimidle:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                                                                    "'" ..
                                                                                                                                                                                                        b.swimidle:FindFirstChildOfClass(
                                                                                                                                                                                                            "Animation"
                                                                                                                                                                                                        ).AnimationId ..
                                                                                                                                                                                                            "'"
                    )
                end
            end
        end
    }
)
bU:AddTextbox(
    {
        Name = "Save Animations File (Player)",
        Default = "",
        TextDisappear = true,
        Callback = function(at)
            d = getPlayersByName(at)
            local b = game:GetService("Players")[d].Character.Animate
            local bV = math.random(9e9, 8e8)
            writefile(
                game:GetService("Players")[d].Name .. "_Animations_" .. bV .. ".lua",
                "local Players = game:GetService('Players')" ..
                    "\n" ..
                        "local Animate = Players[" ..
                            d ..
                                "].Character.Animate" ..
                                    "\n" ..
                                        "Animate.idle.Animation1.AnimationId = " ..
                                            "'" ..
                                                b.idle.Animation1.AnimationId ..
                                                    "'" ..
                                                        "\n" ..
                                                            "Animate.idle.Animation2.AnimationId = " ..
                                                                "'" ..
                                                                    b.idle.Animation2.AnimationId ..
                                                                        "'" ..
                                                                            "\n" ..
                                                                                "Animate.run:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                    "'" ..
                                                                                        b.run:FindFirstChildOfClass(
                                                                                            "Animation"
                                                                                        ).AnimationId ..
                                                                                            "'" ..
                                                                                                "\n" ..
                                                                                                    "Animate.walk:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                        "'" ..
                                                                                                            b.walk:FindFirstChildOfClass(
                                                                                                                "Animation"
                                                                                                            ).AnimationId ..
                                                                                                                "'" ..
                                                                                                                    "\n" ..
                                                                                                                        "Animate.jump:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                            "'" ..
                                                                                                                                b.jump:FindFirstChildOfClass(
                                                                                                                                    "Animation"
                                                                                                                                ).AnimationId ..
                                                                                                                                    "'" ..
                                                                                                                                        "\n" ..
                                                                                                                                            "Animate.climb:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                "'" ..
                                                                                                                                                    b.climb:FindFirstChildOfClass(
                                                                                                                                                        "Animation"
                                                                                                                                                    ).AnimationId ..
                                                                                                                                                        "'" ..
                                                                                                                                                            "\n" ..
                                                                                                                                                                "Animate.fall:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                                    "'" ..
                                                                                                                                                                        b.fall:FindFirstChildOfClass(
                                                                                                                                                                            "Animation"
                                                                                                                                                                        ).AnimationId ..
                                                                                                                                                                            "'" ..
                                                                                                                                                                                "\n" ..
                                                                                                                                                                                    "Animate.swim:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                                                        "'" ..
                                                                                                                                                                                            b.swim:FindFirstChildOfClass(
                                                                                                                                                                                                "Animation"
                                                                                                                                                                                            ).AnimationId ..
                                                                                                                                                                                                "'" ..
                                                                                                                                                                                                    "\n" ..
                                                                                                                                                                                                        "Animate.swimidle:FindFirstChildOfClass('Animation').AnimationId = " ..
                                                                                                                                                                                                            "'" ..
                                                                                                                                                                                                                b.swimidle:FindFirstChildOfClass(
                                                                                                                                                                                                                    "Animation"
                                                                                                                                                                                                                ).AnimationId ..
                                                                                                                                                                                                                    "'"
            )
            A(
                game:GetService("Players")[d].Name .. " @" .. game:GetService("Players")[d].DisplayName .. " Animations",
                "saved to workspace folder!"
            )
        end
    }
)
if a8() == "R15" then
    bU:AddTextbox(
        {Name = "Emote Prefix", Default = "", TextDisappear = true, Callback = function(at)
                Settings.EmotePrefix = "/" .. at
                A("Changed", "Emote Prefix: " .. Settings.EmotePrefix)
            end}
    )
    bU:AddTextbox(
        {Name = "Animation Prefix", Default = "", TextDisappear = true, Callback = function(at)
                Settings.AnimationPrefix = "/" .. at
                A("Changed", "Animation Prefix: " .. Settings.AnimationPrefix)
            end}
    )
end
bU:AddToggle(
    {
        Name = "Click to Select",
        Default = false,
        Callback = function(au)
            Settings.ClickToSelect = au
            if Settings.ClickToSelect then
                w:MakeNotification(
                    {
                        Name = "Eazvy Hub - Success",
                        Content = "Click-to Select has been enabled; Keybind: CTRL + Click",
                        Image = "rbxassetid://4914902889",
                        Time = 10
                    }
                )
            end
        end
    }
)
bU:AddToggle(
    {Name = "Day/Night", Default = false, Callback = function(au)
            Settings.Day = au
            if Settings.Day then
                local L = Instance.new("Part", game.Lighting)
                L.Name = "nigga"
                game.Lighting.ClockTime = 0
            elseif game.Lighting:FindFirstChild("nigga") and not Settings.Day then
                game.Lighting.nigga:Destroy()
                game.Lighting.ClockTime = 14
            elseif game.Lighting.ClockTime == 0 and Settings.Day then
                game.Lighting.ClockTime = 14
            end
        end}
)
bU:AddToggle(
    {
        Name = "Hear Anywhere",
        Default = false,
        Callback = function(au)
            if au == true then
                local L = Instance.new("Part", game:GetService("Lighting"))
                L.Name = "hearNigga"
                local bW, b0 = game:GetService("SoundService"), game.Players.LocalPlayer
                local b6 = b0.Character or b0.CharacterAdded:Wait()
                local b2 = b6:WaitForChild("HumanoidRootPart")
                local bX = Instance.new("Part", workspace)
                bX.Name, bX.Size, bX.Anchored, bX.CanCollide, bX.Transparency, bX.CFrame =
                    "SoundInf",
                    Vector3.new(10e10, 10e10, 10e10),
                    true,
                    false,
                    1,
                    b2.CFrame
                bW:SetListener(Enum.ListenerType.ObjectPosition, bX)
            elseif game:GetService("Lighting"):FindFirstChild("hearNigga") then
                game:GetService("Lighting"):FindFirstChild("hearNigga"):Destroy()
                game:GetService("SoundService"):SetListener(Enum.ListenerType.Camera)
            end
        end
    }
)
bU:AddBind(
    {Name = "Toggle UI", Default = Enum.KeyCode.Q, Hold = false, Callback = function()
            if game:GetService("CoreGui").Orion.Enabled then
                game:GetService("CoreGui").Orion.Enabled = false
            else
                game:GetService("CoreGui").Orion.Enabled = true
            end
        end}
)
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal(
    "MoveDirection"
):Connect(
    function()
        if
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude >
                0
         then
            if a8() == "R15" then
                if _G.LoadAnim and not Settings.PlayAlways then
                    game:GetService("Players").LocalPlayer.Character.Animate.Disabled = false
                    _G.LoadAnim:Stop()
                end
            else
                if _G.LoadAnim and not Settings.PlayAlways then
                    _G.LoadAnim:Stop()
                    P()
                end
            end
        end
    end
)
game.Players.LocalPlayer.CharacterAdded:Connect(
    function(bY)
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character and
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Animate")
        bY.Humanoid.Died:Connect(
            function()
                Settings.DeathPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        )
        if
            Settings.Refresh and game.Players.LocalPlayer.Character and
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                Settings.DeathPosition
         then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Settings.DeathPosition
        end
        wait(.15)
        N()
        if
            Settings.SelectedAnimation ~= "" and a8() == "R15" and Settings.SelectedAnimation ~= "Custom" or
                Settings.LastEmote == "Play" and a8() == "R15" and Settings.SelectedAnimation ~= "Custom"
         then
            Q(
                E[Settings.SelectedAnimation].Idle or f(1),
                E[Settings.SelectedAnimation].Idle2 or f(2),
                E[Settings.SelectedAnimation].Idle3 or f(3),
                E[Settings.SelectedAnimation].Walk or f(4),
                E[Settings.SelectedAnimation].Run or f(5),
                E[Settings.SelectedAnimation].Jump or f(6),
                E[Settings.SelectedAnimation].Climb or f(7),
                E[Settings.SelectedAnimation].Fall or f(8),
                E[Settings.SelectedAnimation].Swim or f(9),
                E[Settings.SelectedAnimation].SwimIdle or f(10),
                E[Settings.SelectedAnimation].Weight,
                E[Settings.SelectedAnimation].Weight2
            )
            if Settings.Custom.Wave then
                a2("wave", Settings.Custom.Wave)
            end
            if Settings.Custom.Laugh then
                a2("laugh", Settings.Custom.Laugh)
            end
            if Settings.Custom.Cheer then
                a2("cheer", Settings.Custom.Cheer)
            end
            if Settings.Custom.Point then
                a2("point", Settings.Custom.Point)
            end
            if Settings.Custom.Sit then
                a2("sit", Settings.Custom.Sit)
            end
            if Settings.Custom.Dance then
                a2("dance", Settings.Custom.Dance)
            end
            if Settings.Custom.Dance2 then
                a2("dance2", Settings.Custom.Dance2)
            end
            if Settings.Custom.Dance3 then
                a2("dance3", Settings.Custom.Dance3)
            end
            P()
            local a9 =
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
            local ah = a9:GetPlayingAnimationTracks()
            for v, r in pairs(ah) do
                r:AdjustSpeed(Settings.AnimationSpeed)
            end
        elseif
            E[Settings.Custom.Name] and
                (Settings.Custom.Idle or Settings.Custom.Idle2 or Settings.Custom.Idle3 or Settings.Custom.Walk or
                    Settings.Custom.Run or
                    Settings.Custom.Jump or
                    Settings.Custom.Climb or
                    Settings.Custom.Fall or
                    Settings.Custom.Swim or
                    Settings.Custom.SwimIdle) and
                E[Settings.Custom.Name].Weight and
                E[Settings.Custom.Name].Weight2 and
                a8() == "R15"
         then
            Q(
                Settings.Custom.Idle or OriginalAnimations[1],
                Settings.Custom.Idle2 or OriginalAnimations[2],
                Settings.Custom.Idle3 or OriginalAnimations[3] or nil,
                Settings.Custom.Walk or OriginalAnimations[4],
                Settings.Custom.Run or OriginalAnimations[5],
                Settings.Custom.Jump or OriginalAnimations[6],
                Settings.Custom.Climb or OriginalAnimations[7],
                Settings.Custom.Fall or OriginalAnimations[8],
                Settings.Custom.Swim or OriginalAnimations[9],
                Settings.Custom.SwimIdle or OriginalAnimations[10],
                E[Settings.Custom.Name].Weight,
                E[Settings.Custom.Name].Weight2
            )
            if Settings.Custom.Wave then
                a2("wave", Settings.Custom.Wave)
            end
            if Settings.Custom.Laugh then
                a2("laugh", Settings.Custom.Laugh)
            end
            if Settings.Custom.Cheer then
                a2("cheer", Settings.Custom.Cheer)
            end
            if Settings.Custom.Point then
                a2("point", Settings.Custom.Point)
            end
            if Settings.Custom.Sit then
                a2("sit", Settings.Custom.Sit)
            end
            if Settings.Custom.Dance then
                a2("dance", Settings.Custom.Dance)
            end
            if Settings.Custom.Dance2 then
                a2("dance2", Settings.Custom.Dance2)
            end
            if Settings.Custom.Dance3 then
                a2("dance3", Settings.Custom.Dance3)
            end
            P()
            local a9 =
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
            local ah = a9:GetPlayingAnimationTracks()
            for v, r in pairs(ah) do
                r:AdjustSpeed(Settings.AnimationSpeed)
            end
        end
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal(
            "MoveDirection"
        ):Connect(
            function()
                if
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude >
                        0
                 then
                    if a8() == "R15" then
                        if _G.LoadAnim and not Settings.PlayAlways then
                            game:GetService("Players").LocalPlayer.Character.Animate.Disabled = false
                            _G.LoadAnim:Stop()
                        end
                    else
                        if _G.LoadAnim and not Settings.PlayAlways then
                            _G.LoadAnim:Stop()
                            P()
                        end
                    end
                end
            end
        )
    end
)
if not getgenv().AlreadyLoaded then
    task.spawn(
        function()
            while task.wait() do
                if
                    Settings.AnimationSpeedToggle and game:GetService("Players").LocalPlayer.Character and
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                        Settings.AnimationSpeedToggle and
                            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass(
                                "AnimationController"
                            )
                 then
                    local a9 =
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
                    local ah = a9:GetPlayingAnimationTracks()
                    for v, r in pairs(ah) do
                        r:AdjustSpeed(Settings.AnimationSpeed)
                    end
                end
            end
        end
    )
end
if not getgenv().AlreadyLoaded then
    getgenv().AlreadyLoaded = true
end

end)




local Games = Window:NewTab("Rare/FE❤️🍔")
local GamesSection = Games:NewSection("have fun bro")
GamesSection:NewButton("FE black hole", "works in many games", function()loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-black-hole-18879"))()
    print("Clicked")
end)
GamesSection:NewButton("FE Hats", "FE hat you need 9 hats", function()local plr = game.Players.LocalPlayer;
local chr = plr.Character;
local hum = chr.Humanoid;
local mov = {};
local mov2 = {};

--[[Network]]
coroutine.resume(coroutine.create(function()
	settings().Physics.AllowSleep = false;
	game.RunService.RenderStepped:Connect(function()
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				v.MaximumSimulationRadius = 0.1;
				v.SimulationRadius = 0;
			else
				v.MaximumSimulationRadius = math.pow(math.huge, math.huge);
				v.SimulationRadius = math.pow(math.huge, 2);
			end
		end
	end)
end))

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

for _, v in pairs(hum:GetAccessories()) do
	local b = v.Handle;
	b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);
	b.CanCollide = false;
	b:BreakJoints();
	for _, k in pairs(v:GetChildren()) do
		if not k:IsA'SpecialMesh' and not k:IsA'Part' then
			k:Destroy();
		end
	end
	local still = Instance.new('BodyAngularVelocity', b);
	still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
	still.AngularVelocity = Vector3.new(0, 0, 0);
	local align = Instance.new('AlignPosition', b);
	align.MaxForce = 1000000;
	align.MaxVelocity = math.huge;
	align.RigidityEnabled = false;
	align.ApplyAtCenterOfMass = true;
	align.Responsiveness = 200;
	local a0 = Instance.new('Attachment', b);
	local a1 = Instance.new('Attachment', chr.Head);
	align.Attachment0 = a0;
	align.Attachment1 = a1;
	table.insert(mov, a1);
	table.insert(mov2, still);
end

local par = {};
for _, v in pairs(mov) do
	local parr = Instance.new('Part', workspace);
	parr.Anchored = true;
	parr.Size = Vector3.new(1, 1, 1);
	parr.Transparency = 1;
	parr.CanCollide = false;
	table.insert(par, parr);
end

local rotx = 0;
local rotz = math.pi / 2;
local height = 0;
local heighti = 1;
local offset = 10;
local speed = 0.5;
local mode = 4;
local angular = Vector3.new(0, 0, 0);
local l = 1;
game['Run Service'].RenderStepped:Connect(function()
	rotx = rotx + speed / 100;
	rotz = rotz + speed / 100;
	l = (l >= 360 and 1 or l + speed);
	
	for i, v in pairs(par) do
		v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);
	end
	
	if heighti == 1 then
		height = height + speed / 100;
	elseif heighti == 2 then
		height = height - speed / 100;
	end
	if height > 2 then
		heighti = 2;
	end
	if height < -1 then
		heighti = 1;
	end
	
	if mode == 1 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);
		end
	elseif mode == 2 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(offset, height, offset);
		end
	elseif mode == 3 then
		for _, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * offset, height, math.sin(rotz) * offset);
		end
	elseif mode == 4 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 5 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.cos(rotz) - i) * offset);
		end
	elseif mode == 6 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new((math.sin(rotx)) * offset, height, (math.tan(rotz) - i) * offset);
		end
	elseif mode == 7 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(math.cos(rotx * i) * offset, 0, math.cos(rotz * i) * offset);
		end
	elseif mode == 8 then
	    for i, v in pairs(mov) do
			v.Position = Vector3.new(math.sin(rotx) * i * offset, 0, math.sin(rotz) * i * offset);
		end
	elseif mode == 9 then
		pcall(function()
			local so = nil;
			for k, b in pairs(chr:GetChildren()) do
				if b:IsA'Tool' then
					for h, j in pairs(b:GetDescendants()) do
						if j:IsA'Sound' then
							so = j;
						end
					end
				end
			end
			if so ~= nil then
				offset = so.PlaybackLoudness / 35;
				speed = so.PlaybackLoudness / 500;
				angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);
			end
		end)
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 10 then
		offset = height * 15;
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	elseif mode == 11 then
		for i, v in pairs(mov) do
			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(plr:GetMouse().Hit.p)).Z) + Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
		end
	end
	for _, v in pairs(mov2) do
		v.AngularVelocity = angular;
	end
end)
game.Players.LocalPlayer.Chatted:Connect(function(c)
	if c:split(' ')[1] == '.orbit' then
		for _, v in pairs(mov) do
			chr = ftp(c:split(' ')[2])[1].Character;
			v.Parent = ftp(c:split(' ')[2])[1].Character.HumanoidRootPart;
		end
	end
	if c:split(' ')[1] == '.speed' then
		speed = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.mode' then
		mode = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.offset' then
		offset = tonumber(c:split(' ')[2]);
	end
	if c:split(' ')[1] == '.angular' then
		angular = Vector3.new(tonumber(c:split(' ')[2]), tonumber(c:split(' ')[3]), tonumber(c:split(' ')[4]));
	end
end)
    print("Clicked")
end)
GamesSection:NewButton("FE Kiss/Hug R6", "sexy script :3", function()loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Hug-Gui-R6-17818"))()
    print("Clicked")
end)
GamesSection:NewButton("FE trolling Gui", "troll hub!", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
    print("Clicked")
end)
GamesSection:NewButton("FE Dick *click Q to start*", "susy script nah ah", function()--[[
WARNING: R6 ONLY
Minimum of 4 Hats.
 
Any hats work, but I recommend hats that are sized 1,1,1 for a better experience. 
It does not offset based on hat size rather a 1 stud offset per hat.
Have Fun!
 
Comment if you have questions, need help, or got problems.
]]--
 
local function align(i,v)
    local att0 = Instance.new("Attachment", i)
    att0.Position = Vector3.new(0,0,0)
    local att1 = Instance.new("Attachment", v)
    att1.Position = Vector3.new(0,5,0)
    att1.Rotation = Vector3.new(0,0,0)
    local AP = Instance.new("AlignPosition", i)
    AP.Attachment0 = att0
    AP.Attachment1 = att1
    AP.RigidityEnabled = false
    AP.ReactionForceEnabled = false
    AP.ApplyAtCenterOfMass = true
    AP.MaxForce = 9999999
    AP.MaxVelocity = math.huge
    AP.Responsiveness = 100000
    local AO = Instance.new("AlignOrientation", i)
    AO.Attachment0 = att0
    AO.Attachment1 = att1
    AO.ReactionTorqueEnabled = true
    AO.PrimaryAxisOnly = false
    AO.MaxTorque = 9999999
    AO.MaxAngularVelocity = math.huge
    AO.Responsiveness = 100000
   return att1 
end
 
local Hats = {}
local HatsPosition = {}
 
function FindPlayer(Name)
    for _,player in pairs(game:GetService("Players"):GetPlayers()) do
        local PlayerName = string.lower(player.Name)
        Name = string.lower(Name)
        if string.find(PlayerName, Name) then
            return player
        end
    end
end
 
local Dick = false;
 
local Connections = {}
 
local Character = game.Players.LocalPlayer.Character
 
 
for index,value in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if value:IsA("Accessory") then
        value.Handle.Massless = true
        value.Handle.AccessoryWeld:Destroy()
        pcall(function()
            value.Handle.SpecialMesh:Destroy()
        end)
        pcall(function()
            value.Handle.Mesh:Destroy()
        end)
        table.insert(Hats, value.Handle)
        local HatAtt = align(value.Handle, Character["Torso"])
        table.insert(HatsPosition, HatAtt)
    end
end
 
 
for i,hat in pairs(Hats) do
    if Dick then
        if i == 1 then
            HatsPosition[i].Position = (CFrame.new(-0.55,-1.35,-1)).Position
        else
            if i == 2 then
                HatsPosition[i].Position = (CFrame.new(0.55,-1.35,-1)).Position
            else
                HatsPosition[i].Position = (CFrame.new(0,-1,(i - 2) * -1)).Position
            end
        end 
    else
        HatsPosition[i].Position = Vector3.new(0,0,0)
    end
end
 
 
local Key = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.Q then -- Key bind to retract and pull out
            Dick = not Dick
            if not Dick then
                for i,hat in pairs(Hats) do
                    HatsPosition[i].Position = Vector3.new(0,0,0)
                end
            else
                if Dick then
                    for i,hat in pairs(Hats) do
                        if Dick then
                            if i == 1 then
                                HatsPosition[i].Position = (CFrame.new(-0.55,-1.35,-1)).Position
                            else
                                if i == 2 then
                                    HatsPosition[i].Position = (CFrame.new(0.55,-1.35,-1)).Position
                                else
                                    HatsPosition[i].Position = (CFrame.new(0,-1,(i - 2) * -1)).Position
                                end
                            end
                        end 
                    end
                end
            end
        end
    end
end)
table.insert(Connections, Key)
 
local ActivateNetless = true
 
 
--[[Netless]]--
settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
settings().Physics.AllowSleep = false
game.Players.LocalPlayer.ReplicationFocus = workspace
 
for _,part in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if part:IsA("BasePart") and part.Name ~="HumanoidRootPart" then 
        Netless = game:GetService("RunService").Heartbeat:Connect(function()
            if ActivateNetless then
                part.Velocity = Vector3.new(-29.999,0,0)
                part.RotVelocity = Vector3.new(0,0,0)
            end
        end)
        table.insert(Connections, Netless)
    end
end
 
 
Character.Humanoid.Died:Connect(function()
    for index,connect in pairs(Connections) do
        connect:Disconnect()
    end
end)
 
 
game:GetService("StarterGui"):SetCore("SendNotification", { 
 
	Title = "Notification";
 
	Text = "Script by Atomic Scripter";
 
	Icon = "rbxthumb://type=Asset&id=7317248129&w=150&h=150"})
 
Duration = 5;
    print("Clicked")
end)
