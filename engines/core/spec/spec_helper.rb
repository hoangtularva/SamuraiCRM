ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../../../config/environment", __FILE__)

# Require Factory Girl and DatabaseCleaner
require 'rspec/rails'
require 'factory_girl_rails'
require 'database_cleaner'

# Set the ENGINE_RAILS_ROOT variable
ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each {|f| require f }

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  # Define how we want DatabaseCleaner to work
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
  DatabaseCleaner.clean
  end
  # Load the Core path helpers
  config.include Samurai::Core::Engine.routes.url_helpers

end
