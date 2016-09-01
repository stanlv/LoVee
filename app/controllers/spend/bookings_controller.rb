class Spend::BookingsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new]

  def new
    @categories = Category.all
  end

  def create
    if current_user.partner.nil?
     redirect_to dashboard_path
     flash[:notice] = "To spend kisses add a partner && win 500 Kisses ;) "
    elsif
      current_user.total_kisses < 500
      redirect_to dashboard_path
      flash[:notice] = "you should have a minium of 500 kisses to Spend kisses"
    else
    category = Category.find(params[:category][:id])
    challenge = category.challenges.where(gender: [current_user.partner.gender, "both"]).sample
    partner_booking = current_user.partner.bookings.build(
    challenge_id: challenge.id,
    partner_id: current_user.id,
    kisses: category.kisses,
    spend: true,
    status: "created")
      if partner_booking.save
      CongratsMailer.spend_challenge(partner_booking.id).deliver_now
      redirect_to congrats_path(category: category.id)
      else
      flash[:error] = "Oops, something went wrong"
      redirect_to play_path
      end
    end
    end
  end

