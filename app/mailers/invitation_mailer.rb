class InvitationMailer < ApplicationMailer

 def invitation(email)
    @greeting = "invitation"
    @email = email

     mail(
      to:       @user.partner.email,
      subject:  "join the LoVee Game"
    )
  end

end
