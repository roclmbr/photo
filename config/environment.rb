# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentification => :plain,
    :user_name => "app52259982@heroku.com",
    :password => "Sendgrid-1",
    :domain => 'mteverest.myip.org',
    :enable_starttls_auto => true
    }