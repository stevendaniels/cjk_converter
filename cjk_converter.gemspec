# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cjk_converter/version"

Gem::Specification.new do |s|
  s.name        = "cjk_converter"
  s.version     = CjkConverter::VERSION
  s.authors     = ["Steven Daniels"]
  s.email       = ["stevendaniels88@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A CJK romanization converter for CJK languages.}
  s.description = %q{A CJK (Chinese, Japanese, and Korean) romanization converter for CJK languages.}

  s.rubyforge_project = "cjk_converter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
