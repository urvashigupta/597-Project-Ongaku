require 'simplecov'
SimpleCov.start do
  add_group 'Controllers', 'app/controllers'
  add_group 'Models', 'app/models'
  add_group 'Helpers', 'app/helpers'
  add_group 'Mailers', 'app/mailers'
  add_filter 'features'
  add_group 'Libraries', ''
end
# This outputs the report to your public folder
SimpleCov.coverage_dir 'coverage'

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MusicApp::Application.initialize!
