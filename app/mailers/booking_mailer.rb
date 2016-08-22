class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.challenge_validation.subject
  #
  def challenge_validation(booking)
    @booking = booking
    @greeting = "Hi"

     mail(
      to:       @booking.user.email,
      subject:  "Booking created!"
    )
  end


end
