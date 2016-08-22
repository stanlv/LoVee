class InvitationsController < ApplicationController

  def invite
    # send the mail with invite link /users/signup?user_id=current_user.id

    notice = "We have invited your partner #{params[:email]}"
    # send mail with link to /users/signup?user_id=45
  end

end
