class ContactMailer < ActionMailer::Base
  default from: "info@fanmeile.de"
  default :to => "m.fahle@gmail.com"
  
  def new_message(message)
    @message = message
    mail(:subject => "[Fanmeile Berlin] Presse", :bcc => ["marcel.fahle@gedankenwerk.com", "sascha.panter@gedankenwerk.com", "michael.wirtz@me.com"])
  end
end
