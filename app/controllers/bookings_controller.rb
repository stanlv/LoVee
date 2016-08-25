class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  skip_before_action :authenticate_user!, only: [:validate_challenge]

  def index
    @bookings = current_user.bookings
    @user = current_user
  end

  def show
  end

  def new
    set_challenges
    @booking = Booking.new
  end

  def create
    challenge = Challenge.find(params[:challenge_ids].split(/\s/).sample)
    @booking = current_user.bookings.build(
      challenge_id: challenge.id,
      status: "created", partner_id: current_user.partner_id, spend: false)
    @booking.kisses = challenge.category.kisses

    if @booking.save
      BookingMailer.challenge_notification(@booking.id).deliver_now if current_user.partner
      redirect_to @booking, notice: 'One challenge has been assigned! Go to your dashboard to view it.'
    else
      set_challenges
      render :new
    end
  end

  def confirm_challenge
    @booking = Booking.find(params[:booking_id])
    @booking.update(status: 'pending')
    BookingMailer.challenge_confirmation(@booking, current_user.partner, current_user).deliver_now if current_user.partner

    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.js
    end
  end

  def validate_challenge
    @booking = Booking.find(params[:booking_id])
    @booking.update(status: 'completed')
    redirect_to dashboard_path
  end

  private

  def set_challenges
    @category = Category.find(params[:category_id])
    gender = current_user.gender
    @old_challenges_ids = current_user.bookings.map(&:challenge_id)
    @sorted_challenges = Challenge.where(category_id: @category.id, gender: [gender, "both"]).where.not(id: @old_challenges_ids).random
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    #params.permit(:seats, :country, :category)
    params.require(:sorted_challenges).permit(:name, :picture, :kisses, :gender)
  end
end
