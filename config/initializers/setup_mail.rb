ActionMailer::Base.smtp_settings = {
  :address              => "fanmeile-berlin.com",
  :port                 => 587,
  :domain               => "fanmeile-berlin.com",
  :user_name            => "info@fanmeile-berlin.com",
  :password             => "totalgeheim",
  :authentication       => :plain,
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options = {
  :host => "fanmeile-berlin.com"
}
