local ContextActionService = game:GetService("ContextActionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local Jabby = require(ReplicatedStorage.Packages.Jabby)

local world = require(ReplicatedStorage.Shared.world)
local scheduler = require(ReplicatedStorage.Shared.scheduler)

return function(systems)
	if #systems ~= 0 then
		scheduler:addSystems(systems) -- Assuming you're using SystemTables!
	end

	if RunService:IsClient() then
		local client = Jabby.obtain_client()

		local function createWidget(_, state: Enum.UserInputState)
			if state ~= Enum.UserInputState.Begin then
				return
			end

			client.spawn_app(client.apps.home, nil)
		end

		ContextActionService:BindAction("Open Jabby", createWidget, false, Enum.KeyCode.F4)
	end

	Jabby.register({
		applet = Jabby.applets.world,
		name = "Jecs World",
		configuration = {
			world = world,
		},
	})
end
