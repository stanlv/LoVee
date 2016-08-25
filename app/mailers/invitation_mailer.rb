class InvitationMailer < ApplicationMailer

 def invitation(email, user_id)
    @greeting = "invitation"
    @user = User.find(user_id)
    @user.update(partner_email: email)
    @from_mail = @user.email
    @email = email

     mail(
      to:       @email,
      subject:  "Join the LoVee Game"
    )
  end

end
