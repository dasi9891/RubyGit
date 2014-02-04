class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end
	

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategy unless game[0][1].downcase.scan(/[rps]/) && game[1][1].downcase.scan(/[rps]/)
    #unless : if this isn't the case, then don't do it
	
	my_Hash = {"rs"=>game[0], "sp" => game[0], "pr"=>game[0], "rr"=>game[0], "ss"=>game[0], "pp"=>game[0],
	"sr"=>game[1], "ps"=>game[1], "rp"=>game[1]}
	
	my_game = game[0][1].downcase + game[1][1].downcase #name of the winner
	
	return my_Hash[my_game] #returns the game and the play 
end

game1 = [ ["Armando", "s"], ["Dave", "r"]]

p rps_game_winner(game1)
#0 means first player won, 1 means second player won
