local AncestorUI = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/KhayneGleave/Ancestor/main/UI'))():Initiate()
local CrackedTab = AncestorUI:CreateTab(5181994100, 'Cracked Scripts')
local CrackedSectionTab = CrackedTab:CreateSection()
local CrackedSection = CrackedSectionTab:CreateSubSection('HydroSploit Key Generator')

getgenv().Ancestor = {

    ['HydroKey']  = 'Cracked_By_Ancestor',
    ['DazedXKey'] = 'Cracked_By_Ancestor'

}

local DazedXCrack = [[

local Ban = game.ReplicatedStorage.Interaction.Ban
Ban.Name = game:GetService('HttpService'):GenerateGUID()

local FakeBan = Instance.new('RemoteEvent', game.ReplicatedStorage.Interaction)
FakeBan.Name = 'Ban'

loadstring(game:HttpGet('https://raw.githubusercontent.com/666TranZit666/rewrite/main/Dazed%20X'))()

local s = getgc(true) 

for i = 1, #s do

    local k = s[i]

    if typeof(k) == 'table' then

        for o, p in next, k do

            if typeof(k[0]) == 'string' and not k[0]:lower():match('day') then
                
                rawset(k, 0, Ancestor.DazedXKey)

            end

        end

    end

end

]]

local HydroCrack = [[

loadstring(game:HttpGet('https://raw.githubusercontent.com/JAMIEORBIT/Hydro/main/V2-BETA-KEY-Luraph.lua'))("")

local s = getgc(true) 

for i = 1, #s do

    local k = s[i]

    if typeof(k) == 'table' then 

        for o, p in next, k do

            if typeof(o) == 'string' and o == 'key' then
                
                rawset(k, o, Ancestor.HydroKey)

            end

        end
        
    end

end

]]

function Ancestor:ExecuteHydro()

    loadstring(HydroCrack)()

end

function Ancestor:ExecuteDazedX()

    loadstring(DazedXCrack)()

end

function Ancestor:GenerateToFile(GUI)

    if not isfolder('Ancestor_Cracked_Keys') then

        makefolder('Ancestor_Cracked_Keys')

    end

    local Crack = [[local Key = ']]..tostring((GUI == 'Dazed' and Ancestor.DazedXKey) or Ancestor.HydroKey).."'"..(GUI == 'Dazed' and DazedXCrack or GUI == 'Hydro' and HydroCrack)

    Crack = Crack:gsub((GUI == 'Dazed' and 'Ancestor.DazedXKey' or GUI == 'Hydro' and 'Ancestor.HydroKey'), 'Key')
    
    writefile(string.format('Ancestor_Cracked_Keys/%s_Custom_Key.txt', tostring(GUI)), Crack)

end

CrackedSection:CreateTextbox('Custom HydroSploit Key', function(Name)

    Ancestor.HydroKey = Name
    
end, 'Cracked_By_Ancestor', false, true, string.format('Allows you to create a custom key for HydroSploit.', tostring(i)), true)

CrackedSection:CreateButton('Execute HydroSploit With Key Crack', function()
        
    Ancestor:ExecuteHydro()

end, true, true, 'Executes cracked HydroSploit with custom key.')

CrackedSection:CreateButton('Generate To File', function()
        
    Ancestor:GenerateToFile('Hydro')

end, true, true, 'Executes cracked Dazed X with custom key.')

local CrackedSection = CrackedSectionTab:CreateSubSection('Dazed X Key Generator')

CrackedSection:CreateTextbox('Custom Dazed X Key', function(Name)

    Ancestor.DazedXKey = Name
    
end, 'Cracked_By_Ancestor', false, true, string.format('Allows you to create a custom key for Dazed X.', tostring(i)), true)

CrackedSection:CreateButton('Execute Dazed X With Key Crack', function()
        
    Ancestor:ExecuteDazedX()

end, true, true, 'Executes cracked Dazed X with custom key.')

CrackedSection:CreateButton('Generate To File', function()
        
    Ancestor:GenerateToFile('Dazed')

end, true, true, 'Executes cracked Dazed X with custom key.')
