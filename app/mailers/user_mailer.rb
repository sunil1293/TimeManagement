
class UserMailer < ActionMailer::Base
  default :from => "sunil.kumar@effonetech.com"
  
  def registration_confirmation(user)
    @user = user
    @url = "http://192.168.11.101:3000"
    mail(:to => "sunil.kumar@effonetech.com", :subject => "Registration Successful")
  end
end