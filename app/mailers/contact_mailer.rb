class ContactMailer < ActionMailer::Base
  default from: "marcel.fahle@gedankenwerk.com"
  default :to => "m.fahle@gmail.com"
  default :bcc => "sascha.panter@gedankenwerk.com, marcel.fahle@gedankenwerk.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Fanmeile Berlin] ")
  end
end
