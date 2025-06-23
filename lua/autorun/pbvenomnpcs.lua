local Category = "Marvel Pinball Venom Npcs"

local NPC = { 	Name = "Venom Bad", 
				Class = "npc_combine_s",
				Model = "models/npcs/pizzaroll/pbvenombad.mdl",
				Weapons = { "weapon_ar2" },
				Category = Category	}

list.Set( "NPC", "pbvenombad", NPC )


local NPC =
{
	Name = "Venom Good",
	Class = "npc_citizen",
	KeyValues =
	{
		citizentype = 4
	},
	Model = "models/npcs/pizzaroll/pbvenomgood.mdl",
	Health = "100",
	Weapons = { "weapon_ar2" },
	Category = Category
}

list.Set( "NPC", "pbvenomgood", NPC )


