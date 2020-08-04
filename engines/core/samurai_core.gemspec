$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_core"
  spec.version     =  Samurai::Core::VERSION
  spec.authors     = ["hoangtularva"]
  spec.email       = ["hoangtukg295@gmail.com"]
  spec.homepage    = "http://samurails.com"
  spec.summary     = "Core features of SamuraiCRM."
  spec.description = "Core features of SamuraiCRM."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.test_files = Dir[""]

  spec.add_dependency "rails", "~> 5.1.7"

  spec.add_dependency 'sass-rails'
  spec.add_dependency 'bootstrap-sass'
  spec.add_dependency 'autoprefixer-rails'
  # user
  spec.add_dependency 'devise'
  # role
  spec.add_dependency 'cancan'

  spec.add_development_dependency "postgresql"
end
