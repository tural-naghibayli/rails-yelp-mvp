class ReviewsController < ApplicationController

  def new
    # params[:restaurant_id] is specified in our nested routes; check rails routes
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new(review_params)
      @review.restaurant = @restaurant

        # if our review saves, redirect to restaurant_path
        # else, render our form again
      if @review.save
          redirect_to restaurant_path(@restaurant)
      else
            # display the views/reviews/new.html.erb
          render :new
      end
    end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
