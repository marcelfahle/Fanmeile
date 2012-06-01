class ContactMailer < ActionMailer::Base
  default from: "info@fanmeile.de"
  default :to => "m.fahle@gmail.com"
  default :bcc => "marcel.fahle@gedankenwerk.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Fanmeile Berlin] Presse")
  end
end
