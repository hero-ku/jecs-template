local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Jecs = require(ReplicatedStorage.Packages.Jecs)
local world = require(ReplicatedStorage.Shared.world)

return {
	Name = world:component() :: Jecs.Entity<string>,
}
