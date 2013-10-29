# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bibliography/version'

Gem::Specification.new do |spec|
  spec.name          = "bibliography"
  spec.version       = Bibliography::VERSION
  spec.authors       = ["Mike Robinson"]
  spec.email         = ["mike@studiolift.com"]
  spec.description   = %q{A library of useful tools for books and related standards}
  spec.summary       = %q{Currently only offers an interface to BIC subjects}
  spec.homepage      = "http://github.com/studiolift/bibliography"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
