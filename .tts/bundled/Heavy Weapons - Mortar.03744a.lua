-- Bundled by luabundle {"version":"1.7.0"}
local __bundle_require, __bundle_loaded, __bundle_register, __bundle_modules = (function(superRequire)
	local loadingPlaceholder = {[{}] = true}

	local register
	local modules = {}

	local require
	local loaded = {}

	register = function(name, body)
		if not modules[name] then
			modules[name] = body
		end
	end

	require = function(name)
		local loadedModule = loaded[name]

		if loadedModule then
			if loadedModule == loadingPlaceholder then
				return nil
			end
		else
			if not modules[name] then
				if not superRequire then
					local identifier = type(name) == 'string' and '\"' .. name .. '\"' or tostring(name)
					error('Tried to require ' .. identifier .. ', but no such module has been registered')
				else
					return superRequire(name)
				end
			end

			loaded[name] = loadingPlaceholder
			loadedModule = modules[name](require, loaded, register, modules)
			loaded[name] = loadedModule
		end

		return loadedModule
	end

	return require, loaded, register, modules
end)(nil)
__bundle_register("__root", function(require, _LOADED, __bundle_register, __bundle_modules)
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
end)
__bundle_register("lib.MiniatureUtil", function(require, _LOADED, __bundle_register, __bundle_modules)
local MiniatureUtil = {}

function MiniatureUtil.printTest()
    print("MiniatureUtil library loaded!")
end

function MiniatureUtil.getManagerSingleton()
    getObjectFromGUID("93d8fc")
    return MiniatureUtil
end
end)
return __bundle_require("__root")