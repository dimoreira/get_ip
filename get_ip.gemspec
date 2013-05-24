# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'get_ip/version'

Gem::Specification.new do |spec|
  spec.name          = "get_ip"
  spec.version       = GetIp::VERSION
  spec.authors       = ["Diego Moreira"]
  spec.email         = ["diegoalvesmoreira@gmail.com"]
  spec.description   = %q{A ruby gem to provide you a easey way to return your local and remote ip addresses}
  spec.summary       = %q{A solution that returns the local and remote ip addresses}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
