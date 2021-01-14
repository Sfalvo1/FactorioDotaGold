--"commands" access the LuaCommandProcessor
--"add_command" takes in three params (name -> string, help -> string, function)

function foo(tableIn) -- Event pass a table into the function
	--game.get_player() returns a LuaPlayer object
	local player = game.get_player(tableIn.player_index)
	
	
	local color = {r=1, g=0, b=0, a=1}
	
	-- print a message to just the player who sent it
	player.print("Hello there! This is a private message to: " ..player.name, color)
	
	--game.print() would print a message to all players -> LuaGameScript
	game.print("This is a global messsage to all players")

end

commands.add_command("say_hello", "this is a help message", foo)

function goldsound(tableIn)

	local player = game.get_player(tableIn.player_index)
	-- goldsound = "__youtube__/coins.ogg"
	player.play_sound{path="gold-sound"}
	
end

commands.add_command("dota_gold", "For Kirk", goldsound)
	