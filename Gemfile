source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 3.0.2'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.2.1'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.2.1'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.6.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring', '~> 2.0.0', group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Add RSpec
group :development, :test do
  gem 'rspec-rails', '~> 3.5.2'
  gem 'mocha', require: false
end

group :test do
  gem 'minitest-rails-capybara', '~> 3.0.0'
end

# Add capybara
gem 'capybara', '~> 2.9.2', group: :test

# Add cucumber
group :development, :test do
  gem 'cucumber-rails', '~> 1.4.5', require: false
  gem 'database_cleaner', '~> 1.5.3'
end

# Add devise
gem 'devise', '~> 4.2.0'

# External service testing
#gem 'twitter', github: 'sferik/twitter'
gem 'twitter', :git => 'https://github.com/sferik/twitter.git'
gem 'vcr', '~> 3.0.3', group: :test
gem 'webmock', '~> 2.1.0', group: :test

# Add javascript testing
group :development, :test do
  gem 'jasmine-rails', '~> 0.14.1'
end

# Nokogiri security update
gem 'nokogiri', '~> 1.6.8.1'
