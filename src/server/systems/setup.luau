local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Jecs = require(ReplicatedStorage.Packages.Jecs)
local Planck = require(ReplicatedStorage.Packages.Planck)
local MatterHooks = require(ReplicatedStorage.Packages.MatterHooks)

local Components = require(ReplicatedStorage.Shared.Components)

local useDeltaTime = MatterHooks.useDeltaTime
local useEvent = MatterHooks.useEvent
local useThrottle = MatterHooks.useThrottle

local function setup(world: Jecs.World)
	world:set(Components.Name, Components.Name, "Name")
end

return {
	system = setup,
	phase = Planck.Phase.Startup,
}
