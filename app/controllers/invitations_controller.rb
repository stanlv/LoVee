class InvitationsController < ApplicationController

  def invite
    # send mail with link to /users/signup?partner_id=45
    if current_user.partner
      flash[:notice] = "We have invited your partner #{params[:email]}"
      redirect_to dashboard_path
    end
  end

end
