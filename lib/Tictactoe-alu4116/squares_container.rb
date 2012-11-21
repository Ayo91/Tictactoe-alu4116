module Tictactoe
  module SquaresContainer
    def []( index ) @squares[index] end

    def blanks()  @squares.find_all { |s| s == " " }.size end
    def os()      @squares.find_all { |s| s == "O" }.size end
    def xs()      @squares.find_all { |s| s == "X" }.size end
  end
end
