class BookingsController < ApplicationController
  before_action :sorted_challenges, only: [:index]
  before_action :set_booking, only: [:show]
  after_action :sent_notification, only: [:create]

  def index

  end

  def show
  end

  def new
    @category = Category.find(params[:category_id])
    gender = current_user.gender
    @old_challenges_ids = current_user.bookings.map(&:challenge_id)
    @sorted_challenges = Challenge.where(category_id: @category.id, gender: gender).where.not(id: @old_challenges_ids).random
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build(
      challenge_id: params[:challenge_ids].split(/\s/).sample,
      status: "created")
    if @booking.save
      redirect_to @booking, notice: 'One challenge has been picked up !'
    else
      render :new
    end
  end


  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    #params.permit(:seats, :country, :category)
    params.require(:sorted_challenges).permit(:name, :picture, :kisses, :gender)
  end

  def sent_notification
    if current_user.partner
      @myemail = current_user.email
      BookingMailer.challenge_notification(@booking, @myemail).deliver_now
    end
  end

end
