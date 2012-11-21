require 'Tictactoe-alu4116'

  if ARGV.size > 0 and ARGV[0] == "-d"
    game = Tictactoe::Game.new Tictactoe::HumanPlayer,
                   Tictactoe::DumbPlayer
  elsif ARGV.size > 0 and ARGV[0] == "-m"
    game = Tictactoe::Game.new Tictactoe::HumanPlayer,
                   Tictactoe::EsquinasPlayer
  else
    game = Tictactoe::Game.new Tictactoe::HumanPlayer,
                   Tictactoe::SmartPlayer
  end
  game.play
