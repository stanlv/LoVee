class InvitationMailer < ApplicationMailer

 def invitation(email, user)
    @greeting = "invitation"
    @user = user
    @user.update(partner_email: email)
    @from_mail = @user.email
    @email = email

     mail(
      to:       @email,
      subject:  "Join the LoVee Game"
    )
  end

end
