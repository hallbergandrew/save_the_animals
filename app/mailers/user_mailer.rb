class UserMailer < ActionMailer::Base
  default from: "andrew@gr8divide.com"

  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Sign Up Confirmation"
  end
end
