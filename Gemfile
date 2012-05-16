source 'https://rubygems.org'

gem 'rails', '3.2.3'

group :macs_dev do
  gem 'growl', :require => false
  gem 'rb-fsevent', :require => false
end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mongoid'
gem "bson_ext", "~> 1.5"

gem 'sqlite3'
gem 'devise'

gem "hiredis", "~> 0.4.4"
gem "redis", "~> 2.2.0", :require => ["redis/connection/hiredis", "redis"]

gem 'resque'

gem 'unicorn', :require => false


gem 'newrelic-redis'
gem 'rpm_contrib', :git => 'git://github.com/newrelic/rpm_contrib.git'
gem 'newrelic_rpm',  "~> 3.3.3.beta2"

gem 'inherited_resources', "~> 1.3"
gem 'cancan'

group :production, :staging do
  gem 'airbrake', '~> 3.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "haml-rails"
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem 'debugger', :require => false
  gem 'pry'
  # gem 'pry-doc'
  # gem 'pry-nav'
  # gem "pry-rails"
  
  
  gem 'guard', :git => 'git://github.com/guard/guard.git', :require  => false
  gem 'spork', "~> 0.9.0.rc9", :require => false
  gem 'guard-spork', :require => false
  gem 'guard-rspec', :require => false
  gem 'rspec-instafail', :require => false
  gem "capybara", :require => false
  gem 'fuubar', :require => false
  gem 'timecop', :require => false
end


group :test do
  gem 'fabrication'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'resque_spec', '~> 0.10.0', :require => false
  gem 'simplecov', '~> 0.6.2', :require => false
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
