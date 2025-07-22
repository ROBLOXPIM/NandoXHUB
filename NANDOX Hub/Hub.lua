-- NandoX HUB - Universal Script Loader
local games = {
    ["Prison Life"] = {
        {"Keyboard Mobile", "https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"},
        {"Prizz admin", "https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua"},
        {"Tbao Hub", "https://raw.githubusercontent.com/tbao143/thaibao/main/TbaohubPrisonLife"},
        {"Infinite Stamina", "https://raw.githubusercontent.com/ImMejor35/Prison-Life/main/Infinite%20Stamina.lua"},
        {"Nexus Exploit", "https://raw.githubusercontent.com/GwnStefano/NexusHub/main/Main"},
    },
    ["Natural Disaster Survival"] = {
        {"Jerk Off", "https://pastefy.app/wa3v2Vgm/raw"},
        {"Gravity", "https://pastebin.com/raw/96XzjEiK"},
        {"NDS Gui", "https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main"},
        {"Tall FE", "https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main"},
    },
    ["Brookhaven"] = {
        {"Ice hub 🧊", "https://raw.githubusercontent.com/IceMae17/NewIceHub/main/Brookhaven"},
        {"Antares Hub 🏠", "https://raw.githubusercontent.com/BorisLua/AntaresHubSuaMaeNaMinhaCama/refs/heads/main/AntaresHubWorking.lua"},
        {"Sander XY 💠", "https://raw.githubusercontent.com/kigredns/testUIDK/refs/heads/main/panel.lua"},
        {"Sander XY 2 💠", "https://rawscripts.net/raw/Brookhaven-RP-Sander-XY-35845"},
        {"SP Hub 🎈", "https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Brookhaven"},
    },
    ["Blox Fruits 🍈"] = {
        {"KobenFF", "https://raw.githubusercontent.com/KOBENFF/sdfd/refs/heads/main/Koatta.txt"},
        {"RaitoHub", "https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"},
        {"Redz Hub", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"},
        {"Actual RedZ", "https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"},
        {"Ronix Hub", "https://api.luarmor.net/files/v3/loaders/7d8a2a1a9a562a403b52532e58a14065.lua"},
    },
    ["99 Nights In the Forest"] = {
        {"NeoX", "https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/99NIFT"},
        {"Zenith Hub", "https://api.luarmor.net/files/v4/loaders/d7be76c234d46ce6770101fded39760c.lua"},
        {"eF hub", "https://api.exploitingis.fun/loader"},
        {"moon hub", "https://raw.githubusercontent.com/m00ndiety/99-nights-in-the-forest/refs/heads/main/Main"},
    },
    ["Murder Mystery 2"] = {
        {"Starry", "https://www.cloudbin.org/love"},
        {"Solix hub", "https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"},
        {"Ather Hub", "https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"},
        {"YARHM Hub", "https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/source/yarhm/1.19/yarhm.lua"},
    },
    ["Just a Baseplate"] = {
        {"FE R6 Anim", "https://raw.githubusercontent.com/coolsk8rboy/The-John-Cena-Factory/main/JohnCenasMain.lua"},
        {"Hat Hub", "https://raw.githubusercontent.com/inkdupe/hat-scripts/refs/heads/main/updatedhathub.lua"},
        {"FE Hammer", "https://pastebin.com/raw/KXqZysxg"},
        {"FE Epik Dance", "https://raw.githubusercontent.com/Something478/EpikR6DancezzReworked/refs/heads/main/EpikCode.txt"},
    },
    ["Universal"] = {
        {"Fly GUI V1", "https://gist.githubusercontent.com/meozoneYT/bf837dff9f0a70017304ddd67fdcd370/raw/e14e74f425b060df523343cf30b787074eb3c5d2/arceus%2520x%2520fly%2520obflucator"},
    },
}

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua"))()
local win = lib:CreateWindow({Title = "🎮 NandoX HUB Universal", Center = true, AutoShow = true})
local tabs = {}

for gameName, scripts in pairs(games) do
    local tab = win:AddTab(gameName)
    tabs[gameName] = tab
    for _, data in ipairs(scripts) do
        local name, url = unpack(data)
        tab:AddButton({text = name, callback = function() loadstring(game:HttpGet(url))() end})
    end
end

lib:Notify("NandoX HUB carregado com sucesso!", 5)
