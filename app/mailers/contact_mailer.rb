class ContactMailer < ActionMailer::Base
  default from: "info@fanmeile.de"
  default :to => "info@b2-berlin.de"
  default :bcc => "sascha.panter@gedankenwerk.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Fanmeile Berlin] Presse")
  end
end
