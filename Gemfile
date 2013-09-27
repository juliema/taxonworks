source 'https://rubygems.org'

mac_os = win_os = false


if File::SEPARATOR == '/'
  mac_os = true
  os = 'Mac'
else
  win_os = true
  os = 'Windows'
end

puts "\nBundling on #{os}(#{$LOAD_PATH[0]})."

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.0'

# Database
gem 'pg'
gem 'activerecord-postgis-adapter'
gem 'ffi-geos'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 1.3'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster.
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'rspec'
end

gem 'debugger', '~> 1.6', group: [:development, :test] if not win_os

group :development do 
  gem 'awesome_print'
end

gem 'rspec-rails', :group => [:development, :test]

gem 'awesome_nested_set', 
  :tag => '3.0.0.rc.2', 
  git: 'git://github.com/collectiveidea/awesome_nested_set.git'


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
