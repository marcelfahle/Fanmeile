ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'localhost',
  :domain => 'www.mywebsite.com',
  :port => 25
}
