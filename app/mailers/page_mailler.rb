
class PageMailer < ApplicationMailer

  default from: 'stan@lovee.io'

 def challenge_completed(booking, email)
    @booking = booking
    @greeting = 'Done?'
    @email = email
    mail(to: booking.user.partner.email, subject: 'Challenge Completed?')
 end
end
