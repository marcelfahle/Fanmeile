class ContactMailer < ActionMailer::Base
  default from: "marcel.fahle@gedankenwerk.com"
  default :to => "m.fahle@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Fanmeile Berlin] #{message.subject}")
  end
end
