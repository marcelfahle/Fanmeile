source 'https://rubygems.org'

gem 'rails', '3.2.3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem "friendly_id", "~> 4.0.1"

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'vcr'
  gem 'capybara'
  gem 'webmock'
  gem 'guard-spork'
  gem 'guard-cucumber'
end
group :test do
  gem 'cucumber-rails'
end


group :production do
  #gem 'pg'
  gem 'mysql2'
end

# Deploy with Capistrano
gem 'capistrano'
#gem 'unicorn'

