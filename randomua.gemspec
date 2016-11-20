# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'randomua'

Gem::Specification.new do |spec|
  spec.name          = "randomua"
  spec.version       = Randomua::VERSION
  spec.authors       = ["Kent Gruber"]
  spec.email         = ["kgruber1@emich.edu"]

  spec.summary       = %q{A command-line application to generate random user agent strings.}
  spec.description   = %q{A command-line application to generate random user agent strings. Acting as a command-line interface to the user-agent-randomizer gem without the need to do any ruby programming.}
  spec.homepage      = "https://github.com/picatz/randomua"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executable    = "randomua"
  spec.require_paths = ["lib"]

  spec.add_dependency "trollop"
  spec.add_dependency "colorize"
  spec.add_dependency "user-agent-randomizer"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
