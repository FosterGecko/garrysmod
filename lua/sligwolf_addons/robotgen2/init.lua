AddCSLuaFile()
local SligWolf_Addons = SligWolf_Addons

local SLIGWOLF_BASECHECK = include("sligwolf_addons/basecheck.lua")

if not SLIGWOLF_BASECHECK then
	return
end

SLIGWOLF_BASECHECK.Addonname = "Robot GEN2 PM"
SLIGWOLF_BASECHECK.RequiredBaseApiVersion = "1.0.0"

if not SLIGWOLF_BASECHECK.CheckBaseAddonExist() then
	return
end

if not SLIGWOLF_ADDON then
	if not SligWolf_Addons.AutoLoadAddon then
		SLIGWOLF_BASECHECK.CheckBaseAddonVersion()
		return SligWolf_Addons.ERROR_BAD_VERSION
	end

	SligWolf_Addons.AutoLoadAddon(function() end)
	return
end

local SLIGWOLF_ERROR = SLIGWOLF_BASECHECK.DoRuntimeChecks()
if SLIGWOLF_ERROR then
	return SLIGWOLF_ERROR
end

local CONSTANTS = SligWolf_Addons.Constants

SLIGWOLF_ADDON.Author = "SligWolf"
SLIGWOLF_ADDON.NiceName = "Robot GEN2 PM"
SLIGWOLF_ADDON.Version = "1.0.0"

SLIGWOLF_ADDON:AddPlayerModel("SW Robot GEN2 Normal", "models/sligwolf/robotgen2/player/robotgen2.mdl", "models/sligwolf/robotgen2/player/c_arms_robotgen2.mdl")

SLIGWOLF_ADDON:AddProp("models/sligwolf/robotgen2/player/robotgen2.mdl", {
	header = "Player Colorable",
	skin = 1,
})
SLIGWOLF_ADDON:AddProp("models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl", {
	header = "NPC Colorable",
})
SLIGWOLF_ADDON:AddProp("models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl", {
	header = "NPC Colorable",
})

local MarineBlue = Color(13, 57, 88, 255)
local Winered = Color(127, 0, 0, 255)
local Green = Color(13, 77, 27, 255)
local Yellow = Color(255, 190, 0, 255)
local Black = Color(30, 30, 30, 255)
local White = CONSTANTS.colorDefault

local Colors = {
	[1] = MarineBlue,
	[2] = Winered,
	[3] = Green,
	[4] = Yellow,
	[5] = Black,
	[6] = White,
}

local npc = {
	header = "Good Guys",
	title = "Robot - Blue",
	class = "npc_citizen",
	model = "models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "resistance",
		citizentype = CT_UNIQUE,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[1],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_rebel_blue", npc)

local npc = {
	header = "Good Guys",
	title = "Robot - Red",
	class = "npc_citizen",
	model = "models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "resistance",
		citizentype = CT_UNIQUE,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[2],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_rebel_red", npc)

local npc = {
	header = "Good Guys",
	title = "Robot - Green",
	class = "npc_citizen",
	model = "models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "resistance",
		citizentype = CT_UNIQUE,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[3],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_rebel_green", npc)

local npc = {
	header = "Good Guys",
	title = "Robot - Yellow",
	class = "npc_citizen",
	model = "models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "resistance",
		citizentype = CT_UNIQUE,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[4],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_rebel_yellow", npc)

local npc = {
	header = "Good Guys",
	title = "Robot - Black",
	class = "npc_citizen",
	model = "models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "resistance",
		citizentype = CT_UNIQUE,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[5],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_rebel_black", npc)

local npc = {
	header = "Good Guys",
	title = "Robot - White",
	class = "npc_citizen",
	model = "models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "resistance",
		citizentype = CT_UNIQUE,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[6],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_rebel_white", npc)

local npc = {
	header = "Good Guys",
	title = "Robot - Random",
	class = "npc_citizen",
	model = "models/sligwolf/robotgen2/rebel/robotgen2_rebel_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "resistance",
		citizentype = CT_UNIQUE,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		OnSpawn = function(npc, data)
			npc:SetColor(Colors[math.random(1, 6)])
		end,
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_rebel_random", npc)

local npc = {
	header = "Bad Guys",
	title = "Robot - Soldier - Blue",
	class = "npc_combine_s",
	model = "models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "overwatch",
		Numgrenades = 1,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[1],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_combine_blue", npc)

local npc = {
	header = "Bad Guys",
	title = "Robot - Soldier - Red",
	class = "npc_combine_s",
	model = "models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "overwatch",
		Numgrenades = 1,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[2],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_combine_red", npc)

local npc = {
	header = "Bad Guys",
	title = "Robot - Soldier - Green",
	class = "npc_combine_s",
	model = "models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "overwatch",
		Numgrenades = 1,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[3],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_combine_green", npc)

local npc = {
	header = "Bad Guys",
	title = "Robot - Soldier - Yellow",
	class = "npc_combine_s",
	model = "models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "overwatch",
		Numgrenades = 1,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[4],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_combine_yellow", npc)

local npc = {
	header = "Bad Guys",
	title = "Robot - Soldier - Black",
	class = "npc_combine_s",
	model = "models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "overwatch",
		Numgrenades = 1,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[5],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_combine_black", npc)

local npc = {
	header = "Bad Guys",
	title = "Robot - Soldier - White",
	class = "npc_combine_s",
	model = "models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "overwatch",
		Numgrenades = 1,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		Color = Colors[6],
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_combine_white", npc)

local npc = {
	header = "Bad Guys",
	title = "Robot - Soldier - Random",
	class = "npc_combine_s",
	model = "models/sligwolf/robotgen2/combine/robotgen2_combine_npc.mdl",
	weapons = {"weapon_shotgun", "weapon_smg1", "weapon_ar2"},
	health = 100,
	keyValues = {
		SquadName = "overwatch",
		Numgrenades = 1,
	},
	customProperties = {
		Accuracy = WEAPON_PROFICIENCY_PERFECT,
		Blood = BLOOD_COLOR_MECH,
		OnSpawn = function(npc, data)
			npc:SetColor(Colors[math.random(1, 6)])
		end,
	},
}
SLIGWOLF_ADDON:AddNPC("sligwolf_thirdteen_combine_random", npc)

return true

