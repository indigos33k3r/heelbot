# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heel/version'

Gem::Specification.new do |spec|
  spec.name          = "heelbot"
  spec.version       = Heel::VERSION
  spec.authors       = ["David Zhang"]
  spec.email         = ["crispgm@gmail.com"]
  spec.summary       = "A library to build an awesome bot"
  spec.homepage      = "https://github.com/crispgm/heelbot"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "sinatra"
  spec.add_dependency "liquid"
  spec.add_dependency "mail"
  spec.add_dependency "os"
end
