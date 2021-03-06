source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0' # <-------------------------------------------------------------------------------- 重要(消すなよ)
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# ################################################################################

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-commands-rspec'

  gem 'capistrano'
  gem 'capistrano-rails'        # capistrano + capistrano-bundler
  gem 'capistrano-passenger'
  gem 'capistrano-rbenv'
  gem 'capistrano-yarn'
  gem "capistrano-rails-console"

  gem 'rspec-rails'
  gem 'test-unit'

  gem 'factory_bot_rails'
end

group :development do
  gem 'foreman', require: false
end

gem 'font-awesome-sass'

# gem 'activerecord-session_store'

# gem 'compass-rails'
gem 'slim-rails'
gem 'redcarpet'       # slim の markdown 表記用。pandoc-ruby が本体

gem 'rails_autolink'
gem 'kaminari'
gem 'simple_captcha2'
gem 'carrierwave'
gem 'rmagick'
gem 'geokit'

gem 'memory_record'
gem 'table_format'
gem 'html_format'
gem 'daiku',         github: 'akicho8/daiku'
gem 'aam'
gem 'uzoumuzou',     github: 'akicho8/uzoumuzou'
gem 'normalizer',    github: 'akicho8/normalizer'

gem 'coderay'

gem 'acts_as_list'
gem 'record_tag_helper'
