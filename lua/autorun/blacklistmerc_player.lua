--[[

	Blacklist Merc Playermodel
 
	Model/Hack:	Srgt. Shotup
	Material:	Srgt. Shotup
	Hex/Player: 	Srgt. Shotup
	
	Update:		21 October 2014

]]

local function AddPlayerModel( name, model )

    list.Set( "PlayerOptionsModel", name, model )
    player_manager.AddValidModel( name, model )
    
end

AddPlayerModel( "merc1", "models/blacklist/merc1.mdl" )


player_manager.AddValidHands( "merc1", "models/weapons/c_mercarms.mdl", 0, "00000000" )