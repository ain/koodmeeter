$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "koodmeeter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "koodmeeter"
  s.version     = Koodmeeter::VERSION
  s.authors     = ["Ain Tohvri"]
  s.email       = ["ain@flashbit.net"]
  s.homepage    = "https://github.com/ain/koodmeeter"
  s.summary     = "koodmeeter (codemeter) is a password strength score tool."
  s.description = "koodmeeter is a port of koodmeeter.js password strength score tool."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.19"

  s.add_development_dependency "sqlite3"
end