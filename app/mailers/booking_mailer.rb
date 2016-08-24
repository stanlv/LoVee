class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.challenge_validation.subject
  #
  def challenge_notification(booking, email)
    @booking = booking
    @greeting = "Hi"
    @email = email

     mail(
      to:       @booking.user.partner.email,
      subject:  "Booking offered!"
    )
  end


end
