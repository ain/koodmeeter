# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "koodmeeter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "koodmeeter"
  s.version     = Koodmeeter::VERSION
  s.authors     = ["Ain Tohvri"]
  s.email       = ["ain@flashbit.net"]
  s.summary     = %q{koodmeeter (codemeter) is a password strength score tool.}
  s.description = %q{koodmeeter is a port of koodmeeter.js password strength score tool.}
  s.homepage    = "https://github.com/ain/koodmeeter"
  s.license     = "GPL-3.0"
  s.required_ruby_version = ">= 2.0.0"

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^spec/})
  s.require_paths = ["lib"]

  s.add_runtime_dependency "json", "~> 1.8"

  s.add_development_dependency "rake", "~> 10.4"
  s.add_development_dependency "rspec", "~> 3.2"
  s.add_development_dependency "rspec-nc", "~> 0.2"
  s.add_development_dependency "guard", "~> 2.12"
  s.add_development_dependency "guard-rspec", "~> 4.5"
  s.add_development_dependency "coveralls", "~> 0.8"
end