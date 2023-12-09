local appdata = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
package.path = appdata .. "\\scripts\\?.lua;" .. package.path  
local uFunctions = require("ApexLib.uFunctions")

-- Welcome
local menuName = "Apex"
menu.create_thread(function()
    menu.notify("Hello", menuName, 6, 0x00ff00)
end)



-- Checks
if not menu.is_trusted_mode_enabled(1 << 1) then 
    menu.notify("Allow access to globals!")
    menu.exit()
end
if not menu.is_trusted_mode_enabled(1 << 0) then 
    menu.notify("Allow access to Statistics!")
    menu.exit()
end


-- submenu's
local root = menu.add_feature("Apex", "parent", 0) 

local unlocksSub = menu.add_feature("Unlocks", "parent", root.id)
local usefulSub = menu.add_feature("Useful Features", "parent", root.id)
local collectSub = menu.add_feature("Collectables", "parent", root.id) 
local teleportSub = menu.add_feature("Teleportation", "parent", root.id)
local miscSub = menu.add_feature("Miscellaneous", "parent", root.id)

-- Sub in Sub
local uWeaponsSub = menu.add_feature("Weapons", "parent", unlocksSub.id)
local uVehiclesSub = menu.add_feature("Vehicles", "parent", unlocksSub.id)
local uClothingSub = menu.add_feature("Clothing", "parent", unlocksSub.id)
local uDLCSub = menu.add_feature("DLC Content", "parent", unlocksSub.id)



-- DLC Clothing Unlock
menu.add_feature("Unlock Cunning Stunts Figures", "action", uDLCSub.id, function()
    uFunctions.cunningStuntsFigures()
end)

menu.add_feature("Unlock Doomsday Heist Bodysuits", "action", uDLCSub.id, function()
    uFunctions.doomsdayHeistBodysuits()
end)

menu.add_feature("Unlock Diamond Casino Heist Bodysuits", "action", uDLCSub.id, function()
    uFunctions.diamondCasinoHeistBodysuits()
end)

menu.add_feature("Unlock Los Santos Tuners Clothing", "action", uDLCSub.id, function()
    uFunctions.losSantosTunersClothing()
end)

menu.add_feature("Unlock Criminal Enterprises Clothing", "action", uDLCSub.id, function()
    uFunctions.criminalEnterprisesClothing()
end)

menu.add_feature("Unlock Festive Surprise 2014 Clothing", "action", uDLCSub.id, function()
    uFunctions.festiveSurprise2014Clothing()
end)

menu.add_feature("Unlock Independence Day Special Clothing", "action", uDLCSub.id, function()
    uFunctions.independenceDaySpecialClothing()
end)

menu.add_feature("Unlock Lowriders Clothing", "action", uDLCSub.id, function()
    uFunctions.lowridersClothing()
end)

menu.add_feature("Unlock Criminal Enterprises Additional Clothing", "action", uDLCSub.id, function()
    uFunctions.criminalEnterprisesAdditionalClothing()
end)

menu.add_feature("Unlock Independence Day Special Additional Clothing", "action", uDLCSub.id, function()
    uFunctions.independenceDaySpecialAdditionalClothing()
end)

menu.add_feature("Unlock Cayo Perico Heist Clothing", "action", uDLCSub.id, function()
    uFunctions.cayoPericoHeistClothing()
end)

menu.add_feature("Unlock Independence Day Special Additional Clothing 2", "action", uDLCSub.id, function()
    uFunctions.independenceDaySpecialAdditionalClothing2()
end)

menu.add_feature("Unlock EVERY Packed Stat", "action", uDLCSub.id, function()
    uFunctions.unlockEveryPackedStat()
end)
