class Spend::BookingsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new]

  def new
    @categories = Category.all
  end

  def create
    return nil unless current_user.partner
    category = Category.find(params[:category][:id])
    challenge = category.challenges.where(gender: current_user.partner.gender).sample
    partner_booking = current_user.partner.bookings.build(
      challenge_id: challenge.id,
      partner_id: current_user.id,
      kisses: category.kisses,
      spend: true,
      status: "created")
    if partner_booking.save
      CongratsMailer.spend_challenge(partner_booking, current_user.partner, current_user)
      redirect_to congrats_path(category: category.id)
    else
      flash[:error] = "Oops, something went wrong"
      redirect_to play_path
    end
  end
end
