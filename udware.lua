function menu()
A = "☔"
c = gg.multiChoice({
A.."Skinchanger",
A.."Anti Smoke",
A.."Anti Flash",
A.."Anti HE",
A.."Anti Bomb",
A.."Radar Hack",
A.."Money Hack",
A.."Infinity Ammo",
A.."Bhop",
A.."Aim",
A.."NoClip",
A.."Bypass all functions",
}, nil, "Free script by udware\nsub: t.me/udware")
if c == nil then menuend = true else
if c[1] == true then skin() end
if c[2] == true then smoke() end
if c[3] == true then flash() end
if c[4] == true then he() end
if c[5] == true then bomb() end
if c[6] == true then radar() end
if c[7] == true then money() end
if c[8] == true then inf() end
if c[9] == true then bhop() end
if c[10] == true then aim() end
if c[11] == true then noclip() end
if c[12] == true then bp() end
end
end

function skin()
local dec do
local data = ([[

local function dec(data)
local b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    data = string.gsub(data, '[^' .. b .. '=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end

return dec
]])

local file = gg.EXT_FILES_DIR .. "/.q"
io.output(file):write(data)
dec = loadfile(file)()
os.remove(file)
end

if not CFG_BUILDER then
    CFG_BUILDER = gg.makeRequest("https://pastebin.com/raw/J7xKjM4J").content
    if CFG_BUILDER then CFG_BUILDER = load(dec(CFG_BUILDER)) end
end

if CFG_BUILDER then CFG_BUILDER() end
end

function smoke()
gg.setVisible(false)
gg.searchNumber("1101057229", gg.TYPE_QWORD)
gg.getResults(1000.0)
gg.getResultCount()
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("On")
end

function flash()
gg.setVisible(false)
gg.searchNumber("22584229888", gg.TYPE_QWORD)
gg.getResults(1000.0)
gg.getResultCount()
gg.editAll("21474836480", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("On")
end

function he()
gg.setVisible(false)
gg.searchNumber("426287038464", gg.TYPE_QWORD)
gg.getResults(1000.0)
gg.getResultCount()
gg.editAll("0", gg.TYPE_QWORD)
gg.toast("On")
gg.clearResults()
gg.setVisible(false)
end

function bomb()
gg.setVisible(false)
gg.searchNumber("4959729828236361728", gg.TYPE_QWORD)
gg.getResults(1000.0)
gg.getResultCount()
gg.editAll("4959729827130114048", gg.TYPE_QWORD)
gg.toast("on")
gg.clearResults()
gg.setVisible(false)
end

function radar()
gg.setRanges(gg.REGION_CODE_APP)     
gg.searchNumber("3963173310677582080", gg.TYPE_QWORD)
gg.getResults(3.0)
gg.getResultCount()
gg.editAll("3963173310614732872", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("on")
end

function money()
checkRes = {}
gg.setVisible(false)
gg.searchNumber("1288490191700", gg.TYPE_QWORD)
res = gg.getResults(20000)
gg.clearResults()
igay = 0
for i, v in ipairs(res) do
igay = igay + 1
checkRes[igay] = {
address = res[i].address,
flags = gg.TYPE_DWORD,
value = "10000"
}
igay = igay + 1
checkRes[igay] = {
address = res[i].address - "4",
flags = gg.TYPE_DWORD,
value = "10000"
}
igay = igay + 1
checkRes[igay] = {
address = res[i].address - "8",
flags = gg.TYPE_DWORD,
value = "10000"
}
igay = igay + 1
checkRes[igay] = {
address = res[i].address - "12",
flags = gg.TYPE_DWORD,
value = "10000"
}
igay = igay + 1
checkRes[igay] = {
address = res[i].address - "16",
flags = gg.TYPE_DWORD,
value = "10000"
}
end

if #checkRes ~= 0 then gg.setValues(checkRes) end
end

function noclip()
gg.alert("Можете попасть под карту на новых картах и на карте Sakura") --[[ 1 ]]
gg.setVisible(true)
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("0.01;1~8;1.000001~9.5::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.000001~4.9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("0.01", gg.TYPE_FLOAT)
gg.processResume()
gg.clearResults()
gg.searchNumber("0.01;1~8;5.00001~9.5::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5.00001~9.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("0.01", gg.TYPE_FLOAT)
gg.clearResults()
gg.setVisible(false)
end

function bhop()
gg.setRanges(gg.REGION_ANONYMOUS)     
gg.searchNumber("0.40000000596", gg.TYPE_FLOAT)
gg.getResults(1100)
gg.getResultCount()
gg.editAll("3", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("on")
gg.processResume()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.40000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("15.2367", gg.TYPE_FLOAT)
gg.clearResults()
gg.loadList("/storage/emulated/0/Android/data/com.ghoultap/cache/sexy.cfg", gg.LOAD_VALUES)
gg.clearList()
gg.setVisible(false)
end

function aim()
a = gg.multiChoice({
"Super Legit",
"Legit",
"Medium",
"Hard",
"Ultra Hard",
}, nil, "Choose your aim")
if a == nil then menuend = true else
if a[1] == true then slegit() end
if a[2] == true then legit() end
if a[3] == true then medium() end
if a[4] == true then hard() end
if a[5] == true then uhard() end
end
end

function slegit()
  gg.setRanges(gg.REGION_CODE_SYS | gg.REGION_CODE_APP)
  gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0.10367", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.toast("on")
end

function uhard()
  gg.setRanges(gg.REGION_CODE_SYS | gg.REGION_CODE_APP)
    gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0.45367", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.toast("on")
end


function legit()
    Butlegit = Offlegit
    gg.setVisible(false)
    gg.searchNumber("4094254846708272857", gg.TYPE_QWORD)
    gg.getResults(1)
    gg.getResultCount()
    gg.editAll("4094254846593975724", gg.TYPE_QWORD)
    gg.clearResults()
    return
  end 
  
  function hard()
    Buthard = Offhard
    gg.setVisible(false)
    gg.searchNumber("4094254846725603721", gg.TYPE_QWORD)
    gg.getResults(1)
    gg.getResultCount()
    gg.editAll("4094254846593975724", gg.TYPE_QWORD)
    gg.clearResults()
    return
  end 
  
  function medium()
    Butmedium = Offmedium
    gg.setVisible(false)
    gg.searchNumber("4094254846725586944", gg.TYPE_QWORD)
    gg.getResults(1)
    gg.getResultCount()
    gg.editAll("4094254846593975724", gg.TYPE_QWORD)
    gg.clearResults()
    return
  end 

function inf()
gg.setVisible(false)
    gg.searchNumber("5944858299580047648", gg.TYPE_QWORD)
    gg.getResults(1)
    gg.getResultCount()
    gg.editAll("5406572590301062152", gg.TYPE_QWORD)
    gg.clearResults()
    return
  end 

function bp()
gg.searchNumber(":il2cpp")

gg.getResults(999999)

gg.editAll("0",1)

gg.clearResults()

gg.searchNumber(":libshared")

gg.getResults(999999)

gg.editAll("0",1)

gg.clearResults()

gg.searchNumber(";il2cpp")

gg.getResults(999999)

gg.editAll("0",2)

gg.clearResults()

gg.searchNumber(":hash")

gg.getResults(999999)

gg.editAll("0",1)

gg.clearResults()

gg.searchNumber(";hash")

gg.getResults(999999)

gg.editAll("0",2)

gg.clearResults()

gg.setRanges(32 | 4)

gg.searchNumber(":com.adjust")

gg.getResults(gg.getResultsCount())

gg.editAll("0",1)

gg.clearResults()

gg.searchNumber(";com.adjust")

gg.getResults(gg.getResultsCount())

gg.editAll("0",2)

gg.clearResults()
gg.searchNumber(":AntiCheat")

gg.getResults(999999)

gg.editAll("2",1)

gg.clearResults()

gg.searchNumber(";AntiCheat")

gg.getResults(999999)

gg.editAll("2",2)

gg.clearResults()

gg.searchNumber(":IyDvZdJDODTlFHMMoCjA")

gg.getResults(999999)

gg.editAll("3",1)

gg.clearResults()

gg.searchNumber(";IyDvZdJDODTlFHMMoCjA")

gg.getResults(999999)

gg.editAll("3",2)

gg.clearResults()

gg.searchNumber(":AntiCheatManager")

gg.getResults(999999)

gg.editAll("4",1)

gg.clearResults()

gg.searchNumber(";AntiCheatManager")

gg.getResults(999999)

gg.editAll("4",2)

gg.clearResults()

gg.clearResults()

gg.searchNumber(":ScriptTerms.ArmsRace")

gg.getResults(999999)

gg.editAll("14",1)

gg.clearResults()

gg.searchNumber(";ScriptTerms.ArmsRace")

gg.getResults(999999)

gg.editAll("14",2)

gg.clearResults()
gg.toast("𝐆𝐚𝐦𝐞 𝐢𝐬 𝐛𝐲𝐩𝐚𝐬𝐬")
gg.searchNumber(":libshared")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(";libshared")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":libil2cpp")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(";libil2cpp")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":libunity")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(";libunity")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":libcrashlytics")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(";libcrashlytics")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":libmain")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(";libmain")
gg.getResults(999999)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(";VirtualSpace")
gg.getResults(9999)
gg.editAll("0",2)
gg.clearResults()
gg.searchNumber(":Cheat")
gg.getResults(9999)
gg.editAll("0",1)
gg.clearResults()
gg.searchNumber(":Detect")
gg.getResults(9999)
gg.editAll("0",1)
gg.clearResults()
gg.searchNumber(":BoltManager")
gg.getResults(9999)
gg.editAll("0",1)
gg.clearResults()
gg.searchNumber(":IyDvZdJDODTlFHMMoCjA")
local t = gg.getResults(999999)
gg.editAll("3",1)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";IyDvZdJDODTlFHMMoCjA")
local t = gg.getResults(999999)
gg.editAll("3",2)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";ECEAAFBBBAEADAF")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";FHCCGFFFGAECGGA")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";BHAGCDEAGABFEDA")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";FFEDAGADFGBEAFE")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";CDCHEGFGGHHFCDB")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";BCHEFECCBDGDADH")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";HHCEHCDGEFEGDFE")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";AntiCheatManager")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";EAFBGGHAFEDABBG")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";HDHHCFHEGBCFEEC")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";gameguardian")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";detect")
local t = gg.getResults(999999)
gg.editAll("3",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(":AUTO_REPORT")
local t = gg.getResults(999999)
gg.editAll("0",1)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(":REPORT")
local t = gg.getResults(999999)
gg.editAll("0",1)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(":auto_report")
local t = gg.getResults(999999)
gg.editAll("0",1)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(":report")
local t = gg.getResults(999999)
gg.editAll("0",1)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";AUTO_REPORT")
local t = gg.getResults(999999)
gg.editAll("0",2)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";REPORT")
local t = gg.getResults(999999)
gg.editAll("0",2)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";auto_report")
local t = gg.getResults(999999)
gg.editAll("0",2)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";report")
local t = gg.getResults(999999)
gg.editAll("0",2)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";AUTO_REPORT")
local t = gg.getResults(999999)
gg.editAll("0",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";REPORT")
local t = gg.getResults(999999)
gg.editAll("0",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";auto_report")
local t = gg.getResults(999999)
gg.editAll("0",3)
gg.addListItems(t)
gg.clearResults()
gg.searchNumber(";report")
local t = gg.getResults(999999)
gg.editAll("0",3)
gg.addListItems(t)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP)
gg.searchNumber(";auto_report;il2cpp;report;cheat;AUTO_REPORT;AntiCheat;hex;hash;libunity;global-metadata.dat;metadata;YOUR ACCOUNT IS BANNED",gg.TYPE_WORD)
local t = gg.getResults(999999)
gg.editAll("0",gg.TYPE_WORD)
gg.addListItems(t)
gg.clearResults()
gg.toast("Расширенная защита активирована")
end
  
while(true) do
gameend=0
if gg.isVisible(true) then 
gg.setVisible(false)
gameend=1
end
if gameend==1 then menu()
end
end