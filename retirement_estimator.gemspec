# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'retirement_estimator/version'

Gem::Specification.new do |spec|
  spec.name          = "retirement_estimator"
  spec.version       = RetirementEstimator::VERSION
  spec.authors       = ["Anthony Laibe"]
  spec.email         = ["anthony@laibe.cc"]

  spec.summary       = %q{Retirement date estimator}
  spec.description   = %q{Retirement date estimator based on date of birth}
  spec.homepage      = "https://github.com/smartpension/retirement_estimator"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "> 4.2"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec"
end
