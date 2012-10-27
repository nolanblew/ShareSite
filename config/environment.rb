# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ShareSite::Application.initialize!

# Set up mailer - In production you should override this in config/local.rb
ActionMailer::Base.delivery_method = :file
ActionMailer::Base.file_settings = { location: "mail_test" }
ActionMailer::Base.raise_delivery_errors = true


# Require config/local.rb

if FileTest.exists? "#{::Rails.root.to_s}/config/local.rb"
  require "#{::Rails.root.to_s}/config/local.rb"
else
  RAILS_DEFAULT_LOGGER.warn 'Please set up config/local.rb'
end
