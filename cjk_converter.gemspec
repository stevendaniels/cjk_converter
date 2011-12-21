# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cjk_converter/version"

Gem::Specification.new do |s|
  s.name        = "cjk_converter"
  s.version     = CjkConverter::VERSION
  s.authors     = ["Steven Daniels"]
  s.email       = ["stevendaniels88@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "cjk_converter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
