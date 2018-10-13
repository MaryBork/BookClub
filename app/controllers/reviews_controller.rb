class ReviewsController < ApplicationController

  def create
    review = Review.create(review_params)
    redirect_to(review_path(id: review.id)) if review.id
  end


end
