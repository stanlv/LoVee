class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:request_challenge, :dashboard]

  def home
    @disable_nav = true
  end

  def play
  end

  def team
  end

  def request_challenge
  end

  def dashboard
    @bookings = current_user.bookings
    @user = current_user
  end

  def gender
  end




end
