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

  def challenge_confirmation(booking, partner, user)
    @booking = booking
    @partner = partner
    @user = user

     mail(
      to:       partner.email,
      subject:  "Challenge to confirms "
    )

  end


end
