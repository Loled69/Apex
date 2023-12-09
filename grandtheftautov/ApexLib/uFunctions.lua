local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  
local uTable = require("ApexLib.uTable")

local uFunctions = {}

menu.create_thread(function()
menu.notify("Loaded uFunctions")
 end)

local mpx

local leplayer = stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 1)
if leplayer == 0 then
    mpx = "0"
else
    mpx = "1"
end

function unlockPackedStat(index, mpxValue)
    native.call(0xDB8A58AEAA67CD07, index, true, mpxValue)
end

function uFunctions.unlockEveryPackedStat()
       for _, index in ipairs(uTable.clothingIDs) do
    unlockPackedStat(index, mpxValue)
        system.wait(2)
    end
end

function uFunctions.cunningStuntsFigures()
    for index = 16964, 16970 do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.doomsdayHeistBodysuits()
    for index = 23588, 23592 do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.diamondCasinoHeistBodysuits()
    for index = 28897, 28900 do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.losSantosTunersClothing()
    local indices = {31415, 31398, 31405, 31406}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.criminalEnterprisesClothing()
    local indices = {33157, 34297, 34298, 34299, 34048}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.festiveSurprise2014Clothing()
    local indices = {12992}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.independenceDaySpecialClothing()
    local indices = {8473, 8472, 8471, 8470, 8469, 8468, 8430}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.lowridersClothing()
    local indices = {12773, 12772, 12771, 12770, 12769, 12768, 12767, 12766, 12765, 12764}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.criminalEnterprisesAdditionalClothing()
    local indices = {33221, 33220, 33219, 33218, 33217, 33216, 33215, 33214, 33213, 33212, 33211, 33210, 33209, 33208, 33207}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.independenceDaySpecialAdditionalClothing()
    local indices = {8430}
    for _, index in ipairs(indices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.cayoPericoHeistClothing()
    local shadesIndices = {
        31107, 31106, 31105, 31104, 31103, 31102, 31101, 31100, 31099, 31098,
        31097, 31096, 31095, 31094, 31093, 31092, 31091, 31090, 31089, 31088,
        31087, 31086, 31085, 31084, 31083, 31082, 31081, 31080, 31079, 31078,
        31077, 31076, 31075, 31074, 31073
    }
    for _, index in ipairs(shadesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local earphonesIndices = {33232, 33231, 33230, 33229, 33228, 33227, 33226, 33225, 33224, 33223, 33222, 33221}
    for _, index in ipairs(earphonesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local glowShadesIndices = {
        30468, 30467, 30466, 30465, 30464, 30463, 30462, 30461, 30460, 30459,
        30458, 30457
    }
    for _, index in ipairs(glowShadesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local glowNecklaceIndices = {
        30484, 30483, 30482, 30481, 30480, 30479, 30478, 30477, 30476, 30475,
        30474, 30473, 30472, 30471, 30470, 30469
    }
    for _, index in ipairs(glowNecklaceIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end

    local banglesIndices = {
        30663, 30662, 30661, 30660, 30659, 30658, 30657, 30656, 30655, 30654,
        30653, 30652
    }
    for _, index in ipairs(banglesIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

function uFunctions.independenceDaySpecialAdditionalClothing2()
    local animalHatIndices = {12230}
    for _, index in ipairs(animalHatIndices) do
        script.set_global_i(262145 + index, 1)
        system.wait(2)
    end
end

return uFunctions
