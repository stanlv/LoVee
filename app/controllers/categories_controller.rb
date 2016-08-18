class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
  end

  def show
    @challenges = Challenge.where(category_id: @category.id)
    @sorted_challenges = @challenges.random
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
    params.require(:category).permit(:name, :picture, :coins)
  end

end
