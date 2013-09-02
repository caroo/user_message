# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "user_message/version"

Gem::Specification.new do |s|
  s.name        = "user_message"
  s.version     = UserMessage::VERSION
  s.authors     = ["pkw.de development team"]
  s.email       = ["dev@pkw.de"]
  s.homepage    = ""
  s.summary     = %q{User message representation}
  s.description = %q{Renders user messages nicely}
  s.add_dependency "activemodel", "~> 3.0", ">= 3.0.9"
  s.add_dependency "actionpack", "~> 3.0", ">= 3.0.9"
  s.add_dependency "railties", "~> 3.0", ">= 3.0.9"
  s.add_dependency "degu"
  s.add_dependency "i18n", "~> 0.6.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "test-unit"
  s.add_development_dependency "mocha"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end