class UserMailer < ApplicationMailer

  default from: "welcometeam@photos.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Hello #{@user.username}")
  end

end
