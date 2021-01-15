--"commands" access the LuaCommandProcessor
--"add_command" takes in three params (name -> string, help -> string, function)

commands.add_command("say_hello", "this is a help message", foo)

function goldsound(tableIn)

	local player = game.get_player(tableIn.player_index)
	-- goldsound = "__youtube__/coins.ogg"
	player.play_sound{path="gold-sound"}
	
end

commands.add_command("dota_gold", "For Kirk", goldsound)
	