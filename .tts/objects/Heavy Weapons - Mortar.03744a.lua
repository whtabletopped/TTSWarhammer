local MiniatureUtil = require("lib.MiniatureUtil")
local manager = getObjectFromGUID("93d8fc")

if manager == nil then
    print("Error: Manager object not found. Ensure the GUID is correct.")
    return
end

function onObjectHover(player_color, object)
    if object ~= self then return end -- Ensure the hover is on this object
    local target = object and object.guid or "Nothing"
    print(player_color .. " hovered over " .. target)
end

function onLoad()
   self.addContextMenuItem("Attack", onAttack, false)
end

function onAttack()
    print("onAttack called")
    Global.call("showGlobalUI", {player_color = "Red"})

    end