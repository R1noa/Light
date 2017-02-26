source 'https://rubygems.org'

ruby '2.3.1'

gem 'devise'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'jquery-rails'
gem 'twitter-bootstrap-rails'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'json'
gem 'puma', '~> 3.0'
gem 'listen', '~> 3.1.5'

group :assets do
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.2'
  gem 'therubyracer', platforms: :ruby
end
	
group :development, :test do
	gem 'rspec-rails', '~> 3.5'
	gem 'factory_girl'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'database_cleaner'
end

group :development do
  gem 'web-console'
  gem 'pry'
end

group :production do
  gem 'pg'
  gem 'pgreset'
  gem 'rails_12factor'
end