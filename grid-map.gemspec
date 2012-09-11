$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "grid-map/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "grid-map"
  s.version     = GridMap::VERSION
  s.authors     = ["Miguel Adolfo Barroso"]
  s.email       = ["mabarroso"]
  s.homepage    = "https://github.com/mabarroso/grid-map"
  s.summary     = "Summary of GridMap."
  s.description = "Description of GridMap."

  s.files = Dir["{app,config,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]



  s.add_development_dependency "rspec", "~> 2.7.0"
end
