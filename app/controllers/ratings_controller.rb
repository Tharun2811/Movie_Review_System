class RatingsController < ApplicationController
  before_action :set_movie

  def create
    @rating=@movie.ratings.new(rating_params)

    if @rating.save
      respond_to do |format|
        format.html{redirect_to movie_path(@movie),notice: @rating.save ? "rating saved successfully":"Error!while saving ratings"}
      end
    end
  end
end

private

def set_movie
  @movie=Movie.find(params[:movie_id])
end

def rating_params
  params.require(:rating).permit(:rate,:movie_id)
end
