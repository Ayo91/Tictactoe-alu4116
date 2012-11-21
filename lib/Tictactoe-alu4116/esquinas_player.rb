require "Tictactoe-alu4116/player"
require "Tictactoe-alu4116/squares_container"
require "Tictactoe-alu4116/board"

module Tictactoe
  class EsquinasPlayer < Player
    def move( board )
      moves = board.moves
      
      # Si puede ganar gana directamente
      board.each_row do |row|
        if row.blanks == 1 and (row.xs == 2 or row.os == 2)
          (0..2).each do |e|
            return row.to_board_name(e) if row[e] == " "
          end
        end
      end

      # Colocamos piezas en las esquinas
      if board[0] == " " 
        return "a1"
      elsif board[2] == " "
        return "a3"
      elsif board[6] == " "
        return "c1"
      elsif board[8] == " "
        return "c3"
      end
      
      # si no hay esquinas generamos aleatoriamente.
      moves[rand(moves.size)]
    end

	 def start()
	    "EsquinasPlayer = #{@mark}"
	 end

  end
end

