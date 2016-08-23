class PageMailer < ApplicationMailer

 def challenge_completed(booking, email)
    @booking = booking
    @greeting = "Done ?"
    @email = email

     mail(
      to:       @booking.user.partner.email,
      subject:  "Challenge Completed ?"
    )
  end
