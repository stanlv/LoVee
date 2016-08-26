class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.challenge_validation.subject
  #
  def challenge_notification(booking_id)
    @booking = Booking.find(booking_id)
    @greeting = "Hi"
    @user = @booking.user


     mail(
      to:       @booking.user.partner.email,
      subject:  "New LoVee challenge!"
    )
  end

  def challenge_confirmation(booking_id, user_id)
    @booking = Booking.find(booking_id)
    @user = User.find(user_id)
    @partner = @user.partner


     mail(
      to:       @partner.email,
      subject:  "Challenge to confirm "
    )

  end


end
