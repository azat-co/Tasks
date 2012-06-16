source 'http://rubygems.org'

ruby '1.9.3'
gem  'rails', '3.2.6'

# gem heroku

group :production do
  gem 'thin'
end

# gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# gem 'pg'
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails' ,   '~> 3.2'
  gem 'coffee-rails' , '~> 3.2'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem 'thin'
  gem 'ruby-debug19'
  gem 'rails3-generators'
end

group :test do
  gem 'database_cleaner'
  gem 'mocha'
  gem 'shoulda'
  gem 'factory_girl_rails', '~> 1.4.0'
  gem 'capybara'
  gem 'launchy'
  gem 'timecop'
end

group :test, :development do
  gem 'rspec-rails'
end

