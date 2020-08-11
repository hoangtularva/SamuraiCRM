$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/tasks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_tasks"
  s.version     = Samurai::Tasks::VERSION
  s.authors     = ["hoangtularva"]
  s.email       = ["hoangtukg295@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Samurai::Tasks."
  s.description = "TODO: Description of Samurai::Tasks."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.1.7"

  s.add_dependency "deface"
  s.add_development_dependency "postgresql"
end
