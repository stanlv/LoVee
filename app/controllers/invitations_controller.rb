class InvitationsController < ApplicationController

  def invite
    # send mail with link to /users/signup?partner_id=45
    flash[:notice] = "We have invited your partner #{params[:email]}"
    InvitationMailer.invitation(@email, current_user).deliver_now

    redirect_to dashboard_path
  end

end
