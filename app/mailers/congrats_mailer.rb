class CongratsMailer < ApplicationMailer

  def spend_challenge(user, booking, partner)
    @booking = booking
    @partner = partner
    @user = user
    @email = partner.email

     mail(
      to:       @email,
      subject:  "Hey! you have a new challenge "
    )
  end

end
