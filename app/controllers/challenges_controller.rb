class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :destroy]

  def index
    @challenges = Challenge.all
  end

  def show
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.save
    redirect_to challenges_path
  end

  def destroy
    @challenge.destroy
    redirect_to challenge_path
  end



  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    #params.permit(:seats, :country, :category)
    params.require(:challenge).permit(:title, :description, :category_id, :deadline)
  end

end
