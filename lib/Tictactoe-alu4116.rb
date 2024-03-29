require "Tictactoe-alu4116/version"
require "Tictactoe-alu4116/squares_container"
require "Tictactoe-alu4116/board"
require "Tictactoe-alu4116/player"
require "Tictactoe-alu4116/human_player"
require "Tictactoe-alu4116/dumb_player"
require "Tictactoe-alu4116/esquinas_player"
require "Tictactoe-alu4116/smart_player"


module Tictactoe
  class Game
    def initialize( player1, player2, random = true )
      if random and rand(2) == 1
        @x_player = player2.new("X")
        @o_player = player1.new("O")
      else
        @x_player = player1.new("X")
        @o_player = player2.new("O")
      end
      
      @board = Board.new([" "] * 9)
    end
    
    attr_reader :x_player, :o_player
    
    def play
      until @board.won?
        @board[@x_player.move(@board)] = @x_player.mark
        break if @board.won?
        
        @board[@o_player.move(@board)] = @o_player.mark
      end
      
      @o_player.finish @board
      @x_player.finish @board
    end


    def competicion
		puts " "
		puts "COMPETICION"
      puts "#{@o_player.start} \n#{@x_player.start}"
		puts " "

      until @board.won?
        print @board    
        @board[@x_player.move(@board)] = @x_player.mark
        break if @board.won?
        
        @board[@o_player.move(@board)] = @o_player.mark
      end
      
      print @board    
    end
  end
end
