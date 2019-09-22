# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 5.0' # Use CoffeeScript for .coffee assets and views
gem 'jbuilder', '~> 2.9' # https://github.com/rails/jbuilder
gem 'pg', '>= 0.18', '< 2.0' # Use postgresql as the database for Active Record
gem 'puma', '~> 4.0' # Use Puma as the app server
gem 'rails', '~> 5.2.3' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '~> 6.0' # Use SCSS for stylesheets
gem 'scss_lint', require: false
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'bcrypt', '~> 3.1.7'  # Use ActiveModel has_secure_password
gem 'rails_12factor', group: :production
gem 'shareable'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'awesome_print'
  gem 'better_errors' # creates console in browser for errors
  gem 'binding_of_caller' # goes with better_errors
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'guard-rspec', require: false # runs rspec automatically
  gem 'pry-awesome_print'
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :test do
end
