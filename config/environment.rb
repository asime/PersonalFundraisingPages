# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PersonalFundraisingPages::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "arin@agilityfeat.com",
  :password => "agiledevelopment",
  :domain => "arin@agilityfeat.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
