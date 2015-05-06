source 'https://rubygems.org'

ruby '2.2.1'
gem 'rails', '3.2.21'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'sass', '3.2.13'

# gems shash added

gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"
gem "execjs"

# gem 'twitter-bootstrap-rails'
gem 'coffee-script-source', '1.8.0'
gem 'yaml_db_with_schema_tables'
gem 'rockstar', '~> 0.8.1'

# gems urva added
gem 'mailgun-ruby', '~>1.0.2', require: 'mailgun'
gem 'figaro'

gem 'test-unit'
# gems for cucumber: sibi
group :test, :development do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'sqlite3'
end

#gems for heroku: urva
group :production do
  gem 'pg'
  gem 'rails_12factor'
end