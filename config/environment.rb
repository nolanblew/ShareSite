# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ShareSite::Application.initialize!

			
ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true

ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:authentication => :plain,
	:user_name => "sharesite.do.not.reply@gmail.com",
	:password => "nukiwheels",
	:enable_starttls_auto => true,
	:openssl_verify_mode => "none"
}
