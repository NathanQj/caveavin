source 'https://rubygems.org'

# SERVER
ruby '2.2.2'
gem 'rails', '4.2.6'

# DATABASE
gem 'pg', '~> 0.15'

# ASSETS
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'bower-rails', '~> 0.10.0'
gem 'jquery-rails'
gem 'materialize-sass'


# AUTHENTIFICATION
gem 'devise'
gem 'omniauth', '>= 1.0.0'
gem 'devise_token_auth'

# DEBUG
group :development do
  gem 'pry-rails'
  gem 'better_errors'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
end

# TEST
group :development, :test do
  gem 'spring'
  gem 'rspec-rails'
end

# LIVERELOAD
group :development do
  gem 'guard', '>= 2.2.2', :require => false
  gem 'guard-livereload',  :require => false
  gem 'rack-livereload'
  gem 'rb-fsevent',        :require => false
end
