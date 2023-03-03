class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]
  before_action :set_movie


  def edit
  end

  def create
    @review = @movie.reviews.new(review_params)
    @review.user=current_user
    respond_to do |format|
      if @review.save
        format.html { redirect_to movie_path(@movie), notice: "Review was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to movie_path(@movie), notice: "Review was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @review.destroy

    respond_to do |format|
      format.html { redirect_to movie_path(@movie), notice: "Review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_movie
    @movie=Movie.find(params[:movie_id])
  end
    def set_review
      @review = Review.find(params[:id])
    end


    def review_params
      params.require(:review).permit(:comment, :movie_id)
    end
end
