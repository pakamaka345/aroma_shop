class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to product_path(@review.product_id)
    else
      render :show
    end
  end

  private

  def review_params
    params.require(:review).permit(:review_text, :rating_value, :product_id, :user_id)
  end
end
