class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:request_challenge]

  def home
    @disable_nav = true
    @disable_flashes = true
  end

  def play
  end

  def team
  end

  def request_challenge
  end

  def dashboard

  end

  def gender
  end




end
