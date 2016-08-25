class CongratsController < ApplicationController
  def show
    @category = Category.find(params[:category])
  end
end
