ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'localhost',
  :domain => '176.58.106.139',
  :port => 25,
  :openssl_verify_mode  => 'none'
}
