class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id]) #on trouve le resto
    @review = Review.new(review_params) #on crée la review, on la récupère du formulaire
    @review.restaurant = @restaurant #on attache la review à un resto
    @review.save
    redirect_to restaurant_path(@restaurant)
  end
end
