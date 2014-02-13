# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tableau_trusted_auth/version'

Gem::Specification.new do |spec|
  spec.name          = "tableau_trusted_auth"
  spec.version       = TableauTrustedAuth::VERSION
  spec.authors       = ["Caige Nichols"]
  spec.email         = ["caigesn@gmail.com"]
  spec.summary       = %q{Trusted Authentication client for Tableau in Ruby.}
  spec.description   = %q{This library provides a simple wrapper around the HTTP calls required for using Tableau's truated authentication mechanism.}
  spec.homepage      = ""
  spec.license       = "Apache2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
