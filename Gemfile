source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

ruby '1.9.3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# database gem for convertion sqlite3 to postgresql
gem 'yaml_db'
gem 'pg'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Include amazon file upload
gem 'paperclip'
gem 'aws-sdk'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

#fix issue Undefined variable: "$c_green"
gem 'compass'
gem 'compass-rails'

#necessary for spree_i18n (translation tool)
gem 'globalize3', github: 'svenfuchs/globalize3', branch: 'rails4'
gem 'paper_trail', github: 'airblade/paper_trail', branch: 'master'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'spree', '2.1.1'
gem "spree_social_products", :git => "git://github.com/spree/spree_social_products.git", :branch => '2-1-stable'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-1-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-1-stable'
gem 'spree_fancy', :github => 'spree/spree_fancy', :branch => '2-1-stable'
gem "spree_social", :git => "git://github.com/spree/spree_social.git", :branch => '2-1-stable'
gem 'spree_i18n', github: 'spree/spree_i18n', :branch => '2-1-stable'
gem 'spree_static_content', :github => 'spree/spree_static_content'
#gem 'spree_reviews', github: 'spree/spree_reviews', :branch => '2-1-stable'
#gem 'spree_editor', :github => 'spree/spree_editor'

#group :development, :test do
#  gem 'sqlite3'
#end

#fix heroku
gem 'rails_12factor'#, group: :production
#group :production do
#  gem 'pg'
#end