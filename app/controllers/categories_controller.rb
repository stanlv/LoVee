class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]
  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def show
    session[:show_category_counter] = session[:show_category_counter].nil? ? 1 : session[:show_category_counter] + 1
    @challenges = Challenge.where(category_id: @category.id)
    if user_signed_in?
      gender = user.gender
      @gender_challenges = Challenge.where(gender: gender)
      @sorted_challenges = @gender_challenges.random
    else
      @sorted_challenges = @challenges.random
    end
  end
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    #params.permit(:seats, :country, :category)
    params.require(:category).permit(:name, :picture, :kisses)
    @gender = challenge.gender
  end

end
