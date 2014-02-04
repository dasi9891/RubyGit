#b
def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategy unless game[0][1].downcase.scan(/[rps]/) && game[1][1].downcase.scan(/[rps]/)
    #unless : if this isn't the case, then don't do it
	
	my_Hash = {"rs"=>game[0], "sp" => game[0], "pr"=>game[0], "rr"=>game[0], "ss"=>game[0], "pp"=>game[0],
	"sr"=>game[1], "ps"=>game[1], "rp"=>game[1]}
	
	my_game = game[0][1].downcase + game[1][1].downcase #name of the winner
	
	return my_Hash[my_game] #returns the game and the play 
end


def contains_game(game) #starts the tournament
	return game[0][0].is_a?(String) #return the start of the game
end


def rps_tounament_winner(tournament)
	if contains_game(tournament)
		return rps_game_winner(tournament) 
	end 
	rps_game_winner [rps_tounament_winner(tournament[0]), rps_tounament_winner(tournament[1])] #determines who won 
	end
	
game_list =  [ ["Armando", "P"], ["Dave", "S"] ]
puts game_list.to_s + '=>' +rps_game_winner(game_list).to_s #lists who won the game

p tournament_list = #makes sure that there are only two players at a time
[
  [ ["Armando", "P"], ["Dave", "S"] ],
  [ ["Richard", "R"],  ["Michael", "S"] ],
],
[  
  [ ["Allen", "S"], ["Omer", "P"] ],
	[ ["David E.", "R"], ["Richard X.", "P"] ]
]
	
puts tournament_list.to_s + '=>' + rps_tounament_winner(tournament_list).to_s #lists who has won the tournament 

gets #getting the winner

