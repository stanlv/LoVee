class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.challenge_validation.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi welcome in LoVee World"

    mail(to: @user.email, subject: "welcome")
  end
end
