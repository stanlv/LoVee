class BookingsController < ApplicationController
  before_action :sorted_challenges, only: [:index]

  def index

  end

  def show

  end

  def new
    @category = Category.find(params[:category_id])
    @old_challenges_ids = current_user.bookings.map(&:challenge_id)
    @sorted_challenges = Challenge.where(category_id: @category.id).where.not(id: @old_challenges_ids).random
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build(
      challenge_id: params[:challenge_ids].split(/\s/).sample,
      status: "created")
    if @booking.save
      BookingMailer.challenge_validation(@booking).deliver_now
      redirect_to @booking, notice: 'One challenge has been picked up !'
    else
      render :new
    end
  end


  private
    def set_booking
    end

    def booking_params
    #params.permit(:seats, :country, :category)
      params.require(:sorted_challenges).permit(:name, :picture, :coins)
    end

end
