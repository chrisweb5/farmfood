#require for spree_reviews
#require File.dirname(__FILE__) + '/review_sweeper.rb'
# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|

	#change logo
	config.site_name = "Cawebi"
	config.logo = 'store/logo_50.jpg'
	config.admin_interface_logo = 'store/logo_50.jpg'
	config.currency = "EUR"
	config.currency_decimal_mark = ","
	config.currency_thousands_separator = "."





  config.use_s3 = true
  config.s3_bucket = ENV['AWS_BUCKET']
  config.s3_access_key = ENV['AWS_ACCESS_KEY_ID']
  config.s3_secret = ENV['AWS_SECRET_ACCESS_KEY']
  config.attachment_url = ":s3_eu_url"
  config.s3_host_alias = "s3-eu-west-1.amazonaws.com"
end

Paperclip.interpolates(:s3_eu_url) do |attachment, style|
"#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end



Spree.user_class = "Spree::User"
