require "Tictactoe-alu4116/player"
require "Tictactoe-alu4116/squares_container"

module Tictactoe
  class DumbPlayer < Player
    def move( board )
      moves = board.moves
      moves[rand(moves.size)]
    end

	 def start()
	    "DumbPlayer = #{@mark}"
	 end
  end
end
