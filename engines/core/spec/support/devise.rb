require 'devise'
RSpec.configure do |config|
    config.include Devise::TestHelpers, :type => :controller
    config.extend ControllerMacros, :type => :controller
    config.infer_spec_type_from_file_location!
end