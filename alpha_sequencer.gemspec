# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alpha_sequencer/version'

Gem::Specification.new do |spec|
  spec.name          = "alpha_sequencer"
  spec.version       = AlphaSequencer::VERSION
  spec.authors       = ["Ryan Montgomery"]
  spec.email         = ["ryan@usertesting.com"]
  spec.description   = %q{Sequential strings of the Alphabet}
  spec.summary       = %q{This will give you strings like z for 26, aa for 27, ... aaaa for 18279 sequentially.}
  spec.homepage      = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
