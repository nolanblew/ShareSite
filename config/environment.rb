# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ShareSite::Application.initialize!

# Set up mailer
ActionMailer::Base.delivery_method = :file
ActionMailer::Base.file_settings = { location: "mail_test" }
ActionMailer::Base.raise_delivery_errors = true
