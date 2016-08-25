class BookingsController < ApplicationController
  before_action :sorted_challenges, only: [:index]
  before_action :set_booking, only: [:show]

  def index

  end

  def show
  end

  def new
    set_challenges
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build(
      challenge_id: params[:challenge_ids].split(/\s/).sample,
      status: "created")
    if @booking.save
      BookingMailer.challenge_notification(@booking.id).deliver_now if !current_user.partner.nil?
      redirect_to @booking, notice: 'One challenge has been assigned! Go to your dashboard to view it.'
    else
      set_challenges
      render :new
    end
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
