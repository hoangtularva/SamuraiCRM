$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_contacts"
  spec.version     = Contacts::VERSION
  spec.authors     = ["hoangtularva"]
  spec.email       = ["hoangtukg295@gmail.com"]
  spec.homepage    = "http://samurails.com"
  spec.summary     = "Contact feature for SamuraiCRM."
  spec.description = "Contact feature for SamuraiCRM."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "Contact feature for SamuraiCRM: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.2"
  spec.add_dependency "samurai_core"
  spec.add_development_dependency "postgresql"
end
