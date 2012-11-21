# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "Tictactoe-alu4116/version"

Gem::Specification.new do |s|
  s.name        = "Tictactoe-alu4116"
  s.version     = Tictactoe::Alu4116::VERSION
  s.authors     = ["Ayo91"]
  s.email       = ["ayoze.peraza@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{"-----"}
  s.description = %q{"Juego del tres en raya"}

  s.rubyforge_project = "Tictactoe-alu4116"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
