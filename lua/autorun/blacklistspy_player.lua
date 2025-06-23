--[[

	Blacklist Spy Playermodel
 
	Model/Hack:	Srgt. Shotup
	Material:	Srgt. Shotup
	Hex/Player: 	Srgt. Shotup
	
	Update:		22 March 2014

]]

local function AddPlayerModel( name, model )

    list.Set( "PlayerOptionsModel", name, model )
    player_manager.AddValidModel( name, model )
    
end

AddPlayerModel( "spy1", "models/blacklist/spy1.mdl" )


player_manager.AddValidHands( "spy1", "models/weapons/c_spyarms.mdl", 0, "00000000" )