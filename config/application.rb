require File.expand_path('../boot', __FILE__)

require 'rails/all'
#require 'rails/observers/activerecord/observer' 

    

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)


module Farmfood
  class Application < Rails::Application
      #to solve uninitialzed constant error    
    config.autoload_paths << "#{Rails.root}/lib"

    config.to_prepare do



      

      # Load application's model / class decorators
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      # Load application's view overrides
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    #fix actioncontroller missing initialize sweeper
    #config.autoload_paths += %W( #{Rails.root}/app/models/spree/review_sweeper)
    #config.active_record.observers = [:order_sweeper]
    
    #changed to config/initializers/locale.rb
    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    #config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
   # config.i18n.default_locale = :en

    config.assets.initialize_on_precompile = false# in application.rb
  end
end
