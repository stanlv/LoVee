class CongratsMailer < ApplicationMailer

  def spend_challenge(booking_id)
    @booking = Booking.find(booking_id)
    @partner = @booking.user.partner
    @user = @booking.user
    @email = @user.email

     mail(
      to:       @email,
      subject:  "Hey! you have a new challenge "
    )
  end

end
