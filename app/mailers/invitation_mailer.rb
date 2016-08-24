class InvitationMailer < ApplicationMailer

 def invitation(email, user)
    @greeting = "invitation"
    @user = user
    @from_mail = @user.email
    @email = email

     mail(
      to:       @email,
      subject:  "Join the LoVee Game"
    )
  end

end
