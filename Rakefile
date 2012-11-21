require "bundler/gem_tasks"
require 'rspec/core/rake_task'

require "bundler/gem_tasks" #tarea de construccion 
require "rake/clean"        #tarea de borrado
CLOBBER.include('pkg/*.gem' )


#para no tener que poner -Ilib
$:.unshift File.dirname(__FILE__) + 'lib'

#------------------------------------------------------------------------------- 
task :default => :spec

#------------------------------------------------------------------------------- 
desc "Ejecutar tests"
task :spec do
	sh "rspec spec/tictactoe_spec.rb --format documentation"
end

#------------------------------------------------------------------------------- 
desc "Ejecutar una partida del juego contra adversario inteligente"
task :bin1 do
	sh "ruby -Ilib bin/game.rb"
end

#------------------------------------------------------------------------------- 
desc "Ejecutar una partida del juego contra adversario idiota"
task :bin2 do
	sh "ruby -Ilib bin/game.rb -d"
end

#------------------------------------------------------------------------------- 
desc "Ejecutar una partida del juego contra adversario esquinas: Siempre prefiere colocar ficha en las esquinas"
task :bin3 do
	sh "ruby -Ilib bin/game.rb -m"
end

#------------------------------------------------------------------------------- 
desc "Competicion arbitraria entre dos jugadores: Tres tipos de jugadores: EsquinasPlayer, SmartPlayer y DumbPlayer"
task :comp do
	sh "ruby -Ilib bin/game_competicion.rb"
end

#------------------------------------------------------------------------------- 
desc "Ejecutar test con formato html"
task :thtml do
	sh "rspec spec/tictactoe_spec.rb --format html > resultados.html"
end

#------------------------------------------------------------------------------- 
task :test do 
  sh "ruby -w -Ilib test/tc_tictactoe.rb"	
end
