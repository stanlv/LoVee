class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.challenge_validation.subject
  #
  def challenge_validation(user)
    @user = user
    @greeting = "Hi"

    mail to: @user.email, subject: "Challenge Offer"
  end
end
